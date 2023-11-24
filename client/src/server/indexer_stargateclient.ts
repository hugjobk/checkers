import { StargateClientOptions } from "@cosmjs/stargate";
import {
  BlockResultsResponse,
  Tendermint34Client,
} from "@cosmjs/tendermint-rpc";
import { StringEvent } from "cosmjs-types/cosmos/base/abci/v1beta1/abci";
import { convertTendermintEvents } from "./events";
import { CheckersStargateClient } from "../checkers_stargateclient";

export class IndexerStargateClient extends CheckersStargateClient {
  private readonly myTmClient: Tendermint34Client;

  public static async connect(
    endpoint: string,
    options: StargateClientOptions = {}
  ): Promise<IndexerStargateClient> {
    const tmClient = await Tendermint34Client.connect(endpoint);
    return new IndexerStargateClient(tmClient, options);
  }

  protected constructor(
    tmClient: Tendermint34Client,
    options: StargateClientOptions
  ) {
    super(tmClient, options);
    this.myTmClient = tmClient;
  }

  public async getEndBlockEvents(height: number): Promise<StringEvent[]> {
    while (true) {
      try {
        const results: BlockResultsResponse =
          await this.myTmClient.blockResults(height);
        return convertTendermintEvents(results.endBlockEvents);
      } catch (error: any) {
        const err = JSON.parse(error.message);
        if (err.code != -32603) throw error;
        console.log(`\n${err.data} => retry after 1s`);
        await new Promise((f) => setTimeout(f, 1000));
      }
    }
  }
}
