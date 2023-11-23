/* eslint-disable */
import Long from "long";
import _m0 from "protobufjs/minimal";

export const protobufPackage = "hugjobk.checkers.checkers";

export interface MsgCreateGame {
  creator: string;
  black: string;
  red: string;
  wager: Long;
  denom: string;
}

export interface MsgCreateGameResponse {
  gameIndex: string;
}

export interface MsgPlayMove {
  creator: string;
  gameIndex: string;
  fromX: Long;
  fromY: Long;
  toX: Long;
  toY: Long;
}

export interface MsgPlayMoveResponse {
  capturedX: number;
  capturedY: number;
  winner: string;
}

function createBaseMsgCreateGame(): MsgCreateGame {
  return { creator: "", black: "", red: "", wager: Long.UZERO, denom: "" };
}

export const MsgCreateGame = {
  encode(message: MsgCreateGame, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.creator !== "") {
      writer.uint32(10).string(message.creator);
    }
    if (message.black !== "") {
      writer.uint32(18).string(message.black);
    }
    if (message.red !== "") {
      writer.uint32(26).string(message.red);
    }
    if (!message.wager.isZero()) {
      writer.uint32(32).uint64(message.wager);
    }
    if (message.denom !== "") {
      writer.uint32(42).string(message.denom);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): MsgCreateGame {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseMsgCreateGame();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          if (tag !== 10) {
            break;
          }

          message.creator = reader.string();
          continue;
        case 2:
          if (tag !== 18) {
            break;
          }

          message.black = reader.string();
          continue;
        case 3:
          if (tag !== 26) {
            break;
          }

          message.red = reader.string();
          continue;
        case 4:
          if (tag !== 32) {
            break;
          }

          message.wager = reader.uint64() as Long;
          continue;
        case 5:
          if (tag !== 42) {
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

  fromJSON(object: any): MsgCreateGame {
    return {
      creator: isSet(object.creator) ? globalThis.String(object.creator) : "",
      black: isSet(object.black) ? globalThis.String(object.black) : "",
      red: isSet(object.red) ? globalThis.String(object.red) : "",
      wager: isSet(object.wager) ? Long.fromValue(object.wager) : Long.UZERO,
      denom: isSet(object.denom) ? globalThis.String(object.denom) : "",
    };
  },

  toJSON(message: MsgCreateGame): unknown {
    const obj: any = {};
    if (message.creator !== "") {
      obj.creator = message.creator;
    }
    if (message.black !== "") {
      obj.black = message.black;
    }
    if (message.red !== "") {
      obj.red = message.red;
    }
    if (!message.wager.isZero()) {
      obj.wager = (message.wager || Long.UZERO).toString();
    }
    if (message.denom !== "") {
      obj.denom = message.denom;
    }
    return obj;
  },

  create<I extends Exact<DeepPartial<MsgCreateGame>, I>>(base?: I): MsgCreateGame {
    return MsgCreateGame.fromPartial(base ?? ({} as any));
  },
  fromPartial<I extends Exact<DeepPartial<MsgCreateGame>, I>>(object: I): MsgCreateGame {
    const message = createBaseMsgCreateGame();
    message.creator = object.creator ?? "";
    message.black = object.black ?? "";
    message.red = object.red ?? "";
    message.wager = (object.wager !== undefined && object.wager !== null) ? Long.fromValue(object.wager) : Long.UZERO;
    message.denom = object.denom ?? "";
    return message;
  },
};

function createBaseMsgCreateGameResponse(): MsgCreateGameResponse {
  return { gameIndex: "" };
}

export const MsgCreateGameResponse = {
  encode(message: MsgCreateGameResponse, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.gameIndex !== "") {
      writer.uint32(10).string(message.gameIndex);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): MsgCreateGameResponse {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseMsgCreateGameResponse();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          if (tag !== 10) {
            break;
          }

          message.gameIndex = reader.string();
          continue;
      }
      if ((tag & 7) === 4 || tag === 0) {
        break;
      }
      reader.skipType(tag & 7);
    }
    return message;
  },

  fromJSON(object: any): MsgCreateGameResponse {
    return { gameIndex: isSet(object.gameIndex) ? globalThis.String(object.gameIndex) : "" };
  },

  toJSON(message: MsgCreateGameResponse): unknown {
    const obj: any = {};
    if (message.gameIndex !== "") {
      obj.gameIndex = message.gameIndex;
    }
    return obj;
  },

  create<I extends Exact<DeepPartial<MsgCreateGameResponse>, I>>(base?: I): MsgCreateGameResponse {
    return MsgCreateGameResponse.fromPartial(base ?? ({} as any));
  },
  fromPartial<I extends Exact<DeepPartial<MsgCreateGameResponse>, I>>(object: I): MsgCreateGameResponse {
    const message = createBaseMsgCreateGameResponse();
    message.gameIndex = object.gameIndex ?? "";
    return message;
  },
};

function createBaseMsgPlayMove(): MsgPlayMove {
  return { creator: "", gameIndex: "", fromX: Long.UZERO, fromY: Long.UZERO, toX: Long.UZERO, toY: Long.UZERO };
}

export const MsgPlayMove = {
  encode(message: MsgPlayMove, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.creator !== "") {
      writer.uint32(10).string(message.creator);
    }
    if (message.gameIndex !== "") {
      writer.uint32(18).string(message.gameIndex);
    }
    if (!message.fromX.isZero()) {
      writer.uint32(24).uint64(message.fromX);
    }
    if (!message.fromY.isZero()) {
      writer.uint32(32).uint64(message.fromY);
    }
    if (!message.toX.isZero()) {
      writer.uint32(40).uint64(message.toX);
    }
    if (!message.toY.isZero()) {
      writer.uint32(48).uint64(message.toY);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): MsgPlayMove {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseMsgPlayMove();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          if (tag !== 10) {
            break;
          }

          message.creator = reader.string();
          continue;
        case 2:
          if (tag !== 18) {
            break;
          }

          message.gameIndex = reader.string();
          continue;
        case 3:
          if (tag !== 24) {
            break;
          }

          message.fromX = reader.uint64() as Long;
          continue;
        case 4:
          if (tag !== 32) {
            break;
          }

          message.fromY = reader.uint64() as Long;
          continue;
        case 5:
          if (tag !== 40) {
            break;
          }

          message.toX = reader.uint64() as Long;
          continue;
        case 6:
          if (tag !== 48) {
            break;
          }

          message.toY = reader.uint64() as Long;
          continue;
      }
      if ((tag & 7) === 4 || tag === 0) {
        break;
      }
      reader.skipType(tag & 7);
    }
    return message;
  },

  fromJSON(object: any): MsgPlayMove {
    return {
      creator: isSet(object.creator) ? globalThis.String(object.creator) : "",
      gameIndex: isSet(object.gameIndex) ? globalThis.String(object.gameIndex) : "",
      fromX: isSet(object.fromX) ? Long.fromValue(object.fromX) : Long.UZERO,
      fromY: isSet(object.fromY) ? Long.fromValue(object.fromY) : Long.UZERO,
      toX: isSet(object.toX) ? Long.fromValue(object.toX) : Long.UZERO,
      toY: isSet(object.toY) ? Long.fromValue(object.toY) : Long.UZERO,
    };
  },

  toJSON(message: MsgPlayMove): unknown {
    const obj: any = {};
    if (message.creator !== "") {
      obj.creator = message.creator;
    }
    if (message.gameIndex !== "") {
      obj.gameIndex = message.gameIndex;
    }
    if (!message.fromX.isZero()) {
      obj.fromX = (message.fromX || Long.UZERO).toString();
    }
    if (!message.fromY.isZero()) {
      obj.fromY = (message.fromY || Long.UZERO).toString();
    }
    if (!message.toX.isZero()) {
      obj.toX = (message.toX || Long.UZERO).toString();
    }
    if (!message.toY.isZero()) {
      obj.toY = (message.toY || Long.UZERO).toString();
    }
    return obj;
  },

  create<I extends Exact<DeepPartial<MsgPlayMove>, I>>(base?: I): MsgPlayMove {
    return MsgPlayMove.fromPartial(base ?? ({} as any));
  },
  fromPartial<I extends Exact<DeepPartial<MsgPlayMove>, I>>(object: I): MsgPlayMove {
    const message = createBaseMsgPlayMove();
    message.creator = object.creator ?? "";
    message.gameIndex = object.gameIndex ?? "";
    message.fromX = (object.fromX !== undefined && object.fromX !== null) ? Long.fromValue(object.fromX) : Long.UZERO;
    message.fromY = (object.fromY !== undefined && object.fromY !== null) ? Long.fromValue(object.fromY) : Long.UZERO;
    message.toX = (object.toX !== undefined && object.toX !== null) ? Long.fromValue(object.toX) : Long.UZERO;
    message.toY = (object.toY !== undefined && object.toY !== null) ? Long.fromValue(object.toY) : Long.UZERO;
    return message;
  },
};

function createBaseMsgPlayMoveResponse(): MsgPlayMoveResponse {
  return { capturedX: 0, capturedY: 0, winner: "" };
}

export const MsgPlayMoveResponse = {
  encode(message: MsgPlayMoveResponse, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (message.capturedX !== 0) {
      writer.uint32(8).int32(message.capturedX);
    }
    if (message.capturedY !== 0) {
      writer.uint32(16).int32(message.capturedY);
    }
    if (message.winner !== "") {
      writer.uint32(26).string(message.winner);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): MsgPlayMoveResponse {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseMsgPlayMoveResponse();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          if (tag !== 8) {
            break;
          }

          message.capturedX = reader.int32();
          continue;
        case 2:
          if (tag !== 16) {
            break;
          }

          message.capturedY = reader.int32();
          continue;
        case 3:
          if (tag !== 26) {
            break;
          }

          message.winner = reader.string();
          continue;
      }
      if ((tag & 7) === 4 || tag === 0) {
        break;
      }
      reader.skipType(tag & 7);
    }
    return message;
  },

  fromJSON(object: any): MsgPlayMoveResponse {
    return {
      capturedX: isSet(object.capturedX) ? globalThis.Number(object.capturedX) : 0,
      capturedY: isSet(object.capturedY) ? globalThis.Number(object.capturedY) : 0,
      winner: isSet(object.winner) ? globalThis.String(object.winner) : "",
    };
  },

  toJSON(message: MsgPlayMoveResponse): unknown {
    const obj: any = {};
    if (message.capturedX !== 0) {
      obj.capturedX = Math.round(message.capturedX);
    }
    if (message.capturedY !== 0) {
      obj.capturedY = Math.round(message.capturedY);
    }
    if (message.winner !== "") {
      obj.winner = message.winner;
    }
    return obj;
  },

  create<I extends Exact<DeepPartial<MsgPlayMoveResponse>, I>>(base?: I): MsgPlayMoveResponse {
    return MsgPlayMoveResponse.fromPartial(base ?? ({} as any));
  },
  fromPartial<I extends Exact<DeepPartial<MsgPlayMoveResponse>, I>>(object: I): MsgPlayMoveResponse {
    const message = createBaseMsgPlayMoveResponse();
    message.capturedX = object.capturedX ?? 0;
    message.capturedY = object.capturedY ?? 0;
    message.winner = object.winner ?? "";
    return message;
  },
};

/** Msg defines the Msg service. */
export interface Msg {
  CreateGame(request: MsgCreateGame): Promise<MsgCreateGameResponse>;
  /** this line is used by starport scaffolding # proto/tx/rpc */
  PlayMove(request: MsgPlayMove): Promise<MsgPlayMoveResponse>;
}

export const MsgServiceName = "hugjobk.checkers.checkers.Msg";
export class MsgClientImpl implements Msg {
  private readonly rpc: Rpc;
  private readonly service: string;
  constructor(rpc: Rpc, opts?: { service?: string }) {
    this.service = opts?.service || MsgServiceName;
    this.rpc = rpc;
    this.CreateGame = this.CreateGame.bind(this);
    this.PlayMove = this.PlayMove.bind(this);
  }
  CreateGame(request: MsgCreateGame): Promise<MsgCreateGameResponse> {
    const data = MsgCreateGame.encode(request).finish();
    const promise = this.rpc.request(this.service, "CreateGame", data);
    return promise.then((data) => MsgCreateGameResponse.decode(_m0.Reader.create(data)));
  }

  PlayMove(request: MsgPlayMove): Promise<MsgPlayMoveResponse> {
    const data = MsgPlayMove.encode(request).finish();
    const promise = this.rpc.request(this.service, "PlayMove", data);
    return promise.then((data) => MsgPlayMoveResponse.decode(_m0.Reader.create(data)));
  }
}

interface Rpc {
  request(service: string, method: string, data: Uint8Array): Promise<Uint8Array>;
}

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
