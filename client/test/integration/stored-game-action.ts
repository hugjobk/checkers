import { toHex } from "@cosmjs/encoding";
import { EncodeObject, OfflineDirectSigner } from "@cosmjs/proto-signing";
import { expect } from "chai";
import { getSignerFromMnemonic } from "../../src/util/signer";
import { TxRaw } from "cosmjs-types/cosmos/tx/v1beta1/tx";
import { config } from "dotenv";
import { Account, DeliverTxResponse, GasPrice } from "@cosmjs/stargate";
import { CheckersSigningStargateClient } from "../../src/checkers_signingstargateclient";
import { CheckersExtension } from "../../src/modules/checkers/queries";
import { askFaucet } from "../../src/util/faucet";
import { Log } from "@cosmjs/stargate/build/logs";
import { BroadcastTxSyncResponse } from "@cosmjs/tendermint-rpc";
import Long from "long";
import {
  getCapturedPos,
  getCreatedGameId,
  getCreateGameEvent,
  getMovePlayedEvent,
  getWinner,
} from "../../src/types/checkers/events";
import { StoredGame } from "../../src/types/generated/checkers/stored_game";
import { GameMove, Player, completeGame } from "../../src/checkers/player";
import { CheckersStargateClient } from "../../src/checkers_stargateclient";
import { typeUrlMsgPlayMove } from "../../src/types/checkers/messages";
import { describe, it } from "mocha";

config();

describe("StoredGame Action", function () {
  const {
    RPC_URL,
    ADDRESS_TEST_ALICE: alice,
    ADDRESS_TEST_BOB: bob,
  } = process.env;
  let aliceSigner: OfflineDirectSigner, bobSigner: OfflineDirectSigner;

  before("create signers", async function () {
    aliceSigner = await getSignerFromMnemonic(process.env.MNEMONIC_TEST_ALICE);
    bobSigner = await getSignerFromMnemonic(process.env.MNEMONIC_TEST_BOB);
    expect((await aliceSigner.getAccounts())[0].address).to.equal(alice);
    expect((await bobSigner.getAccounts())[0].address).to.equal(bob);
  });

  let aliceClient: CheckersSigningStargateClient,
    bobClient: CheckersSigningStargateClient,
    checkers: CheckersExtension["checkers"];

  before("create signing clients", async function () {
    aliceClient = await CheckersSigningStargateClient.connectWithSigner(
      RPC_URL,
      aliceSigner,
      {
        gasPrice: GasPrice.fromString("0stake"),
      }
    );
    bobClient = await CheckersSigningStargateClient.connectWithSigner(
      RPC_URL,
      bobSigner,
      {
        gasPrice: GasPrice.fromString("0stake"),
      }
    );
    checkers = aliceClient.checkersQueryClient!.checkers;
  });

  const aliceCredit = {
      stake: 100,
      token: 1,
    },
    bobCredit = {
      stake: 100,
      token: 1,
    };

  before("credit test accounts", async function () {
    this.timeout(40_000);
    if (
      parseInt((await aliceClient.getBalance(alice, "stake")).amount, 10) <
        aliceCredit.stake ||
      parseInt((await aliceClient.getBalance(alice, "token")).amount, 10) <
        aliceCredit.token
    )
      await askFaucet(alice, aliceCredit);
    expect(
      parseInt((await aliceClient.getBalance(alice, "stake")).amount, 10)
    ).to.be.greaterThanOrEqual(aliceCredit.stake);
    expect(
      parseInt((await aliceClient.getBalance(alice, "token")).amount, 10)
    ).to.be.greaterThanOrEqual(aliceCredit.token);
    if (
      parseInt((await bobClient.getBalance(bob, "stake")).amount, 10) <
        bobCredit.stake ||
      parseInt((await bobClient.getBalance(bob, "token")).amount, 10) <
        bobCredit.token
    )
      await askFaucet(bob, bobCredit);
    expect(
      parseInt((await bobClient.getBalance(bob, "stake")).amount, 10)
    ).to.be.greaterThanOrEqual(bobCredit.stake);
    expect(
      parseInt((await bobClient.getBalance(bob, "token")).amount, 10)
    ).to.be.greaterThanOrEqual(bobCredit.token);
  });

  let gameIndex: string;

  it("can create game with wager", async function () {
    this.timeout(10_000);
    const response: DeliverTxResponse = await aliceClient.createGame(
      alice,
      alice,
      bob,
      "token",
      Long.fromNumber(1),
      "auto"
    );
    const logs: Log[] = JSON.parse(response.rawLog!);
    expect(logs).to.be.length(1);
    gameIndex = getCreatedGameId(getCreateGameEvent(logs[0])!);
    const game: StoredGame = (await checkers.getStoredGame(gameIndex))!;
    expect(game).to.include({
      index: gameIndex,
      black: alice,
      red: bob,
      denom: "token",
    });
    expect(game.wager.toNumber()).to.equal(1);
  });

  const whoseClient = (who: Player) => (who == "b" ? aliceClient : bobClient);
  const whoseAddress = (who: Player) => (who == "b" ? alice : bob);

  const aliceBalance = async () =>
    parseInt((await aliceClient.getBalance(alice, "token")).amount, 10);
  const bobBalance = async () =>
    parseInt((await bobClient.getBalance(bob, "token")).amount, 10);

  async function playMove(move: GameMove): Promise<DeliverTxResponse> {
    let client = whoseClient(move.player);
    let creator = whoseAddress(move.player);
    return await client.playMove(
      creator,
      gameIndex,
      move.from,
      move.to,
      "auto"
    );
  }

  function encodeMove(move: GameMove): EncodeObject {
    return {
      typeUrl: typeUrlMsgPlayMove,
      value: {
        creator: whoseAddress(move.player),
        gameIndex: gameIndex,
        fromX: move.from.x,
        fromY: move.from.y,
        toX: move.to.x,
        toY: move.to.y,
      },
    };
  }

  it("can play first moves and pay wager", async function () {
    this.timeout(20_000);
    const aliceBalBefore = await aliceBalance();
    await playMove(completeGame[0]);
    const aliceBalAfter = await aliceBalance();
    expect(aliceBalAfter).to.be.equal(aliceBalBefore - 1);
    const bobBalBefore = await bobBalance();
    await playMove(completeGame[1]);
    const bobBalAfter = await bobBalance();
    expect(bobBalAfter).to.be.equal(bobBalBefore - 1);
  });

  interface ShortAccountInfo {
    accountNumber: number;
    sequence: number;
  }
  const getShortAccountInfo = async (
    who: string
  ): Promise<ShortAccountInfo> => {
    const accountInfo: Account = (await aliceClient.getAccount(who))!;
    return {
      accountNumber: accountInfo.accountNumber,
      sequence: accountInfo.sequence,
    };
  };

  it("can continue the game up to before the double capture", async function () {
    this.timeout(20_000);
    const client: CheckersStargateClient = await CheckersStargateClient.connect(
      RPC_URL
    );
    const chainId: string = await client.getChainId();
    const accountInfo = {
      b: await getShortAccountInfo(alice),
      r: await getShortAccountInfo(bob),
    };

    const txList: TxRaw[] = [];
    let txIndex: number = 2;
    while (txIndex < 24) {
      const gameMove: GameMove = completeGame[txIndex];
      txList.push(
        await whoseClient(gameMove.player).sign(
          whoseAddress(gameMove.player),
          [encodeMove(gameMove)],
          {
            amount: [{ denom: "stake", amount: "0" }],
            gas: "500000",
          },
          `playing move ${txIndex}`,
          {
            accountNumber: accountInfo[gameMove.player].accountNumber,
            sequence: accountInfo[gameMove.player].sequence++,
            chainId: chainId,
          }
        )
      );
      txIndex++;
    }

    const hashes: BroadcastTxSyncResponse[] = [];
    txIndex = 0;
    while (txIndex < txList.length - 1) {
      const txRaw: TxRaw = txList[txIndex];
      hashes.push(await client.tmBroadcastTxSync(TxRaw.encode(txRaw).finish()));
      txIndex++;
    }

    const lastDelivery: DeliverTxResponse = await client.broadcastTx(
      TxRaw.encode(txList[txList.length - 1]).finish()
    );

    console.log(
      txList.length,
      "transactions included in blocks from",
      (await client.getTx(toHex(hashes[0].hash)))!.height,
      "to",
      lastDelivery.height
    );

    const game: StoredGame = (await checkers.getStoredGame(gameIndex))!;
    expect(game.board).to.equal(
      "*b*b***b|**b*b***|***b***r|********|***r****|********|***r****|r*B*r*r*"
    );
  });

  it("can send a double capture move", async function () {
    this.timeout(10_000);
    const firstCaptureMove: GameMove = completeGame[24];
    const secondCaptureMove: GameMove = completeGame[25];
    const response: DeliverTxResponse = await aliceClient.signAndBroadcast(
      alice,
      [encodeMove(firstCaptureMove), encodeMove(secondCaptureMove)],
      "auto"
    );
    const logs: Log[] = JSON.parse(response.rawLog!);
    expect(logs).to.be.length(2);
    expect(getCapturedPos(getMovePlayedEvent(logs[0])!)).to.deep.equal({
      x: 3,
      y: 6,
    });
    expect(getCapturedPos(getMovePlayedEvent(logs[1])!)).to.deep.equal({
      x: 3,
      y: 4,
    });
  });

  it("can continue the game until completion", async function () {
    this.timeout(20_000);
    const client: CheckersStargateClient = await CheckersStargateClient.connect(
      RPC_URL
    );
    const chainId: string = await client.getChainId();
    const accountInfo = {
      b: await getShortAccountInfo(alice),
      r: await getShortAccountInfo(bob),
    };

    const aliceBalBefore = await aliceBalance();
    const bobBalBefore = await bobBalance();

    const txList: TxRaw[] = [];
    let txIndex: number = 26;
    while (txIndex < completeGame.length) {
      const gameMove: GameMove = completeGame[txIndex];
      txList.push(
        await whoseClient(gameMove.player).sign(
          whoseAddress(gameMove.player),
          [encodeMove(gameMove)],
          {
            amount: [{ denom: "stake", amount: "0" }],
            gas: "500000",
          },
          `playing move ${txIndex}`,
          {
            accountNumber: accountInfo[gameMove.player].accountNumber,
            sequence: accountInfo[gameMove.player].sequence++,
            chainId: chainId,
          }
        )
      );
      txIndex++;
    }

    const hashes: BroadcastTxSyncResponse[] = [];
    txIndex = 0;
    while (txIndex < txList.length - 1) {
      const txRaw: TxRaw = txList[txIndex];
      hashes.push(await client.tmBroadcastTxSync(TxRaw.encode(txRaw).finish()));
      txIndex++;
    }

    const lastDelivery: DeliverTxResponse = await client.broadcastTx(
      TxRaw.encode(txList[txList.length - 1]).finish()
    );

    console.log(
      txList.length,
      "transactions included in blocks from",
      (await client.getTx(toHex(hashes[0].hash)))!.height,
      "to",
      lastDelivery.height
    );

    const logs: Log[] = JSON.parse(lastDelivery.rawLog!);
    expect(logs).to.be.length(1);
    expect(getWinner(getMovePlayedEvent(logs[0])!)).to.equal("b");

    const game = await checkers.getStoredGame(gameIndex);
    expect(game).is.not.undefined;
    expect(game!.moveCount.toNumber()).to.equal(40);
    expect(game!.winner).to.equal("b");

    const aliceBalAfter = await aliceBalance();
    const bobBalAfter = await bobBalance();
    expect(aliceBalAfter).to.equal(aliceBalBefore + 2);
    expect(bobBalAfter).to.equal(bobBalBefore);
  });
});
