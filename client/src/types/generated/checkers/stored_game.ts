/* eslint-disable */
import Long from "long";
import _m0 from "protobufjs/minimal";

export const protobufPackage = "hugjobk.checkers.checkers";

export interface StoredGame {
  index: string;
  board: string;
  turn: string;
  black: string;
  red: string;
  winner: string;
  deadline: string;
  moveCount: Long;
  beforeIndex: string;
  afterIndex: string;
  wager: Long;
  denom: string;
}

function createBaseStoredGame(): StoredGame {
  return {
    index: "",
    board: "",
    turn: "",
    black: "",
    red: "",
    winner: "",
    deadline: "",
    moveCount: Long.UZERO,
    beforeIndex: "",
    afterIndex: "",
    wager: Long.UZERO,
    denom: "",
  };
}

export const StoredGame = {
  encode(message: StoredGame, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.index !== "") {
      writer.uint32(10).string(message.index);
    }
    if (message.board !== "") {
      writer.uint32(18).string(message.board);
    }
    if (message.turn !== "") {
      writer.uint32(26).string(message.turn);
    }
    if (message.black !== "") {
      writer.uint32(34).string(message.black);
    }
    if (message.red !== "") {
      writer.uint32(42).string(message.red);
    }
    if (message.winner !== "") {
      writer.uint32(50).string(message.winner);
    }
    if (message.deadline !== "") {
      writer.uint32(58).string(message.deadline);
    }
    if (!message.moveCount.isZero()) {
      writer.uint32(64).uint64(message.moveCount);
    }
    if (message.beforeIndex !== "") {
      writer.uint32(74).string(message.beforeIndex);
    }
    if (message.afterIndex !== "") {
      writer.uint32(82).string(message.afterIndex);
    }
    if (!message.wager.isZero()) {
      writer.uint32(88).uint64(message.wager);
    }
    if (message.denom !== "") {
      writer.uint32(98).string(message.denom);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): StoredGame {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseStoredGame();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          if (tag !== 10) {
            break;
          }

          message.index = reader.string();
          continue;
        case 2:
          if (tag !== 18) {
            break;
          }

          message.board = reader.string();
          continue;
        case 3:
          if (tag !== 26) {
            break;
          }

          message.turn = reader.string();
          continue;
        case 4:
          if (tag !== 34) {
            break;
          }

          message.black = reader.string();
          continue;
        case 5:
          if (tag !== 42) {
            break;
          }

          message.red = reader.string();
          continue;
        case 6:
          if (tag !== 50) {
            break;
          }

          message.winner = reader.string();
          continue;
        case 7:
          if (tag !== 58) {
            break;
          }

          message.deadline = reader.string();
          continue;
        case 8:
          if (tag !== 64) {
            break;
          }

          message.moveCount = reader.uint64() as Long;
          continue;
        case 9:
          if (tag !== 74) {
            break;
          }

          message.beforeIndex = reader.string();
          continue;
        case 10:
          if (tag !== 82) {
            break;
          }

          message.afterIndex = reader.string();
          continue;
        case 11:
          if (tag !== 88) {
            break;
          }

          message.wager = reader.uint64() as Long;
          continue;
        case 12:
          if (tag !== 98) {
            break;
          }

          message.denom = reader.string();
          continue;
      }
      if ((tag & 7) === 4 || tag === 0) {
        break;
      }
      reader.skipType(tag & 7);
    }
    return message;
  },

  fromJSON(object: any): StoredGame {
    return {
      index: isSet(object.index) ? globalThis.String(object.index) : "",
      board: isSet(object.board) ? globalThis.String(object.board) : "",
      turn: isSet(object.turn) ? globalThis.String(object.turn) : "",
      black: isSet(object.black) ? globalThis.String(object.black) : "",
      red: isSet(object.red) ? globalThis.String(object.red) : "",
      winner: isSet(object.winner) ? globalThis.String(object.winner) : "",
      deadline: isSet(object.deadline) ? globalThis.String(object.deadline) : "",
      moveCount: isSet(object.moveCount) ? Long.fromValue(object.moveCount) : Long.UZERO,
      beforeIndex: isSet(object.beforeIndex) ? globalThis.String(object.beforeIndex) : "",
      afterIndex: isSet(object.afterIndex) ? globalThis.String(object.afterIndex) : "",
      wager: isSet(object.wager) ? Long.fromValue(object.wager) : Long.UZERO,
      denom: isSet(object.denom) ? globalThis.String(object.denom) : "",
    };
  },

  toJSON(message: StoredGame): unknown {
    const obj: any = {};
    if (message.index !== "") {
      obj.index = message.index;
    }
    if (message.board !== "") {
      obj.board = message.board;
    }
    if (message.turn !== "") {
      obj.turn = message.turn;
    }
    if (message.black !== "") {
      obj.black = message.black;
    }
    if (message.red !== "") {
      obj.red = message.red;
    }
    if (message.winner !== "") {
      obj.winner = message.winner;
    }
    if (message.deadline !== "") {
      obj.deadline = message.deadline;
    }
    if (!message.moveCount.isZero()) {
      obj.moveCount = (message.moveCount || Long.UZERO).toString();
    }
    if (message.beforeIndex !== "") {
      obj.beforeIndex = message.beforeIndex;
    }
    if (message.afterIndex !== "") {
      obj.afterIndex = message.afterIndex;
    }
    if (!message.wager.isZero()) {
      obj.wager = (message.wager || Long.UZERO).toString();
    }
    if (message.denom !== "") {
      obj.denom = message.denom;
    }
    return obj;
  },

  create<I extends Exact<DeepPartial<StoredGame>, I>>(base?: I): StoredGame {
    return StoredGame.fromPartial(base ?? ({} as any));
  },
  fromPartial<I extends Exact<DeepPartial<StoredGame>, I>>(object: I): StoredGame {
    const message = createBaseStoredGame();
    message.index = object.index ?? "";
    message.board = object.board ?? "";
    message.turn = object.turn ?? "";
    message.black = object.black ?? "";
    message.red = object.red ?? "";
    message.winner = object.winner ?? "";
    message.deadline = object.deadline ?? "";
    message.moveCount = (object.moveCount !== undefined && object.moveCount !== null)
      ? Long.fromValue(object.moveCount)
      : Long.UZERO;
    message.beforeIndex = object.beforeIndex ?? "";
    message.afterIndex = object.afterIndex ?? "";
    message.wager = (object.wager !== undefined && object.wager !== null) ? Long.fromValue(object.wager) : Long.UZERO;
    message.denom = object.denom ?? "";
    return message;
  },
};

type Builtin = Date | Function | Uint8Array | string | number | boolean | undefined;

export type DeepPartial<T> = T extends Builtin ? T
  : T extends Long ? string | number | Long : T extends globalThis.Array<infer U> ? globalThis.Array<DeepPartial<U>>
  : T extends ReadonlyArray<infer U> ? ReadonlyArray<DeepPartial<U>>
  : T extends {} ? { [K in keyof T]?: DeepPartial<T[K]> }
  : Partial<T>;

type KeysOfUnion<T> = T extends T ? keyof T : never;
export type Exact<P, I extends P> = P extends Builtin ? P
  : P & { [K in keyof P]: Exact<P[K], I[K]> } & { [K in Exclude<keyof I, KeysOfUnion<P>>]: never };

if (_m0.util.Long !== Long) {
  _m0.util.Long = Long as any;
  _m0.configure();
}

function isSet(value: any): boolean {
  return value !== null && value !== undefined;
}
