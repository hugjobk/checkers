/* eslint-disable */
import Long from "long";
import _m0 from "protobufjs/minimal";

export const protobufPackage = "hugjobk.checkers.checkers";

export interface SystemInfo {
  nextId: Long;
  fifoHeadIndex: string;
  fifoTailIndex: string;
}

function createBaseSystemInfo(): SystemInfo {
  return { nextId: Long.UZERO, fifoHeadIndex: "", fifoTailIndex: "" };
}

export const SystemInfo = {
  encode(message: SystemInfo, writer: _m0.Writer = _m0.Writer.create()): _m0.Writer {
    if (!message.nextId.isZero()) {
      writer.uint32(8).uint64(message.nextId);
    }
    if (message.fifoHeadIndex !== "") {
      writer.uint32(18).string(message.fifoHeadIndex);
    }
    if (message.fifoTailIndex !== "") {
      writer.uint32(26).string(message.fifoTailIndex);
    }
    return writer;
  },

  decode(input: _m0.Reader | Uint8Array, length?: number): SystemInfo {
    const reader = input instanceof _m0.Reader ? input : _m0.Reader.create(input);
    let end = length === undefined ? reader.len : reader.pos + length;
    const message = createBaseSystemInfo();
    while (reader.pos < end) {
      const tag = reader.uint32();
      switch (tag >>> 3) {
        case 1:
          if (tag !== 8) {
            break;
          }

          message.nextId = reader.uint64() as Long;
          continue;
        case 2:
          if (tag !== 18) {
            break;
          }

          message.fifoHeadIndex = reader.string();
          continue;
        case 3:
          if (tag !== 26) {
            break;
          }

          message.fifoTailIndex = reader.string();
          continue;
      }
      if ((tag & 7) === 4 || tag === 0) {
        break;
      }
      reader.skipType(tag & 7);
    }
    return message;
  },

  fromJSON(object: any): SystemInfo {
    return {
      nextId: isSet(object.nextId) ? Long.fromValue(object.nextId) : Long.UZERO,
      fifoHeadIndex: isSet(object.fifoHeadIndex) ? globalThis.String(object.fifoHeadIndex) : "",
      fifoTailIndex: isSet(object.fifoTailIndex) ? globalThis.String(object.fifoTailIndex) : "",
    };
  },

  toJSON(message: SystemInfo): unknown {
    const obj: any = {};
    if (!message.nextId.isZero()) {
      obj.nextId = (message.nextId || Long.UZERO).toString();
    }
    if (message.fifoHeadIndex !== "") {
      obj.fifoHeadIndex = message.fifoHeadIndex;
    }
    if (message.fifoTailIndex !== "") {
      obj.fifoTailIndex = message.fifoTailIndex;
    }
    return obj;
  },

  create<I extends Exact<DeepPartial<SystemInfo>, I>>(base?: I): SystemInfo {
    return SystemInfo.fromPartial(base ?? ({} as any));
  },
  fromPartial<I extends Exact<DeepPartial<SystemInfo>, I>>(object: I): SystemInfo {
    const message = createBaseSystemInfo();
    message.nextId = (object.nextId !== undefined && object.nextId !== null)
      ? Long.fromValue(object.nextId)
      : Long.UZERO;
    message.fifoHeadIndex = object.fifoHeadIndex ?? "";
    message.fifoTailIndex = object.fifoTailIndex ?? "";
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
