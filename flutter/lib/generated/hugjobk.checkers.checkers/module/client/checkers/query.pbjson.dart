///
//  Generated code. Do not modify.
//  source: checkers/query.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use queryParamsRequestDescriptor instead')
const QueryParamsRequest$json = const {
  '1': 'QueryParamsRequest',
};

/// Descriptor for `QueryParamsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryParamsRequestDescriptor = $convert.base64Decode('ChJRdWVyeVBhcmFtc1JlcXVlc3Q=');
@$core.Deprecated('Use queryParamsResponseDescriptor instead')
const QueryParamsResponse$json = const {
  '1': 'QueryParamsResponse',
  '2': const [
    const {'1': 'params', '3': 1, '4': 1, '5': 11, '6': '.hugjobk.checkers.checkers.Params', '8': const {}, '10': 'params'},
  ],
};

/// Descriptor for `QueryParamsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryParamsResponseDescriptor = $convert.base64Decode('ChNRdWVyeVBhcmFtc1Jlc3BvbnNlEj8KBnBhcmFtcxgBIAEoCzIhLmh1Z2pvYmsuY2hlY2tlcnMuY2hlY2tlcnMuUGFyYW1zQgTI3h8AUgZwYXJhbXM=');
@$core.Deprecated('Use queryGetSystemInfoRequestDescriptor instead')
const QueryGetSystemInfoRequest$json = const {
  '1': 'QueryGetSystemInfoRequest',
};

/// Descriptor for `QueryGetSystemInfoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryGetSystemInfoRequestDescriptor = $convert.base64Decode('ChlRdWVyeUdldFN5c3RlbUluZm9SZXF1ZXN0');
@$core.Deprecated('Use queryGetSystemInfoResponseDescriptor instead')
const QueryGetSystemInfoResponse$json = const {
  '1': 'QueryGetSystemInfoResponse',
  '2': const [
    const {'1': 'SystemInfo', '3': 1, '4': 1, '5': 11, '6': '.hugjobk.checkers.checkers.SystemInfo', '8': const {}, '10': 'SystemInfo'},
  ],
};

/// Descriptor for `QueryGetSystemInfoResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryGetSystemInfoResponseDescriptor = $convert.base64Decode('ChpRdWVyeUdldFN5c3RlbUluZm9SZXNwb25zZRJLCgpTeXN0ZW1JbmZvGAEgASgLMiUuaHVnam9iay5jaGVja2Vycy5jaGVja2Vycy5TeXN0ZW1JbmZvQgTI3h8AUgpTeXN0ZW1JbmZv');
@$core.Deprecated('Use queryGetStoredGameRequestDescriptor instead')
const QueryGetStoredGameRequest$json = const {
  '1': 'QueryGetStoredGameRequest',
  '2': const [
    const {'1': 'index', '3': 1, '4': 1, '5': 9, '10': 'index'},
  ],
};

/// Descriptor for `QueryGetStoredGameRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryGetStoredGameRequestDescriptor = $convert.base64Decode('ChlRdWVyeUdldFN0b3JlZEdhbWVSZXF1ZXN0EhQKBWluZGV4GAEgASgJUgVpbmRleA==');
@$core.Deprecated('Use queryGetStoredGameResponseDescriptor instead')
const QueryGetStoredGameResponse$json = const {
  '1': 'QueryGetStoredGameResponse',
  '2': const [
    const {'1': 'storedGame', '3': 1, '4': 1, '5': 11, '6': '.hugjobk.checkers.checkers.StoredGame', '8': const {}, '10': 'storedGame'},
  ],
};

/// Descriptor for `QueryGetStoredGameResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryGetStoredGameResponseDescriptor = $convert.base64Decode('ChpRdWVyeUdldFN0b3JlZEdhbWVSZXNwb25zZRJLCgpzdG9yZWRHYW1lGAEgASgLMiUuaHVnam9iay5jaGVja2Vycy5jaGVja2Vycy5TdG9yZWRHYW1lQgTI3h8AUgpzdG9yZWRHYW1l');
@$core.Deprecated('Use queryAllStoredGameRequestDescriptor instead')
const QueryAllStoredGameRequest$json = const {
  '1': 'QueryAllStoredGameRequest',
  '2': const [
    const {'1': 'pagination', '3': 1, '4': 1, '5': 11, '6': '.cosmos.base.query.v1beta1.PageRequest', '10': 'pagination'},
  ],
};

/// Descriptor for `QueryAllStoredGameRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryAllStoredGameRequestDescriptor = $convert.base64Decode('ChlRdWVyeUFsbFN0b3JlZEdhbWVSZXF1ZXN0EkYKCnBhZ2luYXRpb24YASABKAsyJi5jb3Ntb3MuYmFzZS5xdWVyeS52MWJldGExLlBhZ2VSZXF1ZXN0UgpwYWdpbmF0aW9u');
@$core.Deprecated('Use queryAllStoredGameResponseDescriptor instead')
const QueryAllStoredGameResponse$json = const {
  '1': 'QueryAllStoredGameResponse',
  '2': const [
    const {'1': 'storedGame', '3': 1, '4': 3, '5': 11, '6': '.hugjobk.checkers.checkers.StoredGame', '8': const {}, '10': 'storedGame'},
    const {'1': 'pagination', '3': 2, '4': 1, '5': 11, '6': '.cosmos.base.query.v1beta1.PageResponse', '10': 'pagination'},
  ],
};

/// Descriptor for `QueryAllStoredGameResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryAllStoredGameResponseDescriptor = $convert.base64Decode('ChpRdWVyeUFsbFN0b3JlZEdhbWVSZXNwb25zZRJLCgpzdG9yZWRHYW1lGAEgAygLMiUuaHVnam9iay5jaGVja2Vycy5jaGVja2Vycy5TdG9yZWRHYW1lQgTI3h8AUgpzdG9yZWRHYW1lEkcKCnBhZ2luYXRpb24YAiABKAsyJy5jb3Ntb3MuYmFzZS5xdWVyeS52MWJldGExLlBhZ2VSZXNwb25zZVIKcGFnaW5hdGlvbg==');
@$core.Deprecated('Use queryCanPlayMoveRequestDescriptor instead')
const QueryCanPlayMoveRequest$json = const {
  '1': 'QueryCanPlayMoveRequest',
  '2': const [
    const {'1': 'gameIndex', '3': 1, '4': 1, '5': 9, '10': 'gameIndex'},
    const {'1': 'player', '3': 2, '4': 1, '5': 9, '10': 'player'},
    const {'1': 'fromX', '3': 3, '4': 1, '5': 4, '10': 'fromX'},
    const {'1': 'fromY', '3': 4, '4': 1, '5': 4, '10': 'fromY'},
    const {'1': 'toX', '3': 5, '4': 1, '5': 4, '10': 'toX'},
    const {'1': 'toY', '3': 6, '4': 1, '5': 4, '10': 'toY'},
  ],
};

/// Descriptor for `QueryCanPlayMoveRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryCanPlayMoveRequestDescriptor = $convert.base64Decode('ChdRdWVyeUNhblBsYXlNb3ZlUmVxdWVzdBIcCglnYW1lSW5kZXgYASABKAlSCWdhbWVJbmRleBIWCgZwbGF5ZXIYAiABKAlSBnBsYXllchIUCgVmcm9tWBgDIAEoBFIFZnJvbVgSFAoFZnJvbVkYBCABKARSBWZyb21ZEhAKA3RvWBgFIAEoBFIDdG9YEhAKA3RvWRgGIAEoBFIDdG9Z');
@$core.Deprecated('Use queryCanPlayMoveResponseDescriptor instead')
const QueryCanPlayMoveResponse$json = const {
  '1': 'QueryCanPlayMoveResponse',
  '2': const [
    const {'1': 'possible', '3': 1, '4': 1, '5': 8, '10': 'possible'},
    const {'1': 'reason', '3': 2, '4': 1, '5': 9, '10': 'reason'},
  ],
};

/// Descriptor for `QueryCanPlayMoveResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryCanPlayMoveResponseDescriptor = $convert.base64Decode('ChhRdWVyeUNhblBsYXlNb3ZlUmVzcG9uc2USGgoIcG9zc2libGUYASABKAhSCHBvc3NpYmxlEhYKBnJlYXNvbhgCIAEoCVIGcmVhc29u');
