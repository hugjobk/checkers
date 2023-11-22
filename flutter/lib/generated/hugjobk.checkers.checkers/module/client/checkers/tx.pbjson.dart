///
//  Generated code. Do not modify.
//  source: checkers/tx.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use msgCreateGameDescriptor instead')
const MsgCreateGame$json = const {
  '1': 'MsgCreateGame',
  '2': const [
    const {'1': 'creator', '3': 1, '4': 1, '5': 9, '10': 'creator'},
    const {'1': 'black', '3': 2, '4': 1, '5': 9, '10': 'black'},
    const {'1': 'red', '3': 3, '4': 1, '5': 9, '10': 'red'},
    const {'1': 'wager', '3': 4, '4': 1, '5': 4, '10': 'wager'},
    const {'1': 'denom', '3': 5, '4': 1, '5': 9, '10': 'denom'},
  ],
};

/// Descriptor for `MsgCreateGame`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgCreateGameDescriptor = $convert.base64Decode('Cg1Nc2dDcmVhdGVHYW1lEhgKB2NyZWF0b3IYASABKAlSB2NyZWF0b3ISFAoFYmxhY2sYAiABKAlSBWJsYWNrEhAKA3JlZBgDIAEoCVIDcmVkEhQKBXdhZ2VyGAQgASgEUgV3YWdlchIUCgVkZW5vbRgFIAEoCVIFZGVub20=');
@$core.Deprecated('Use msgCreateGameResponseDescriptor instead')
const MsgCreateGameResponse$json = const {
  '1': 'MsgCreateGameResponse',
  '2': const [
    const {'1': 'gameIndex', '3': 1, '4': 1, '5': 9, '10': 'gameIndex'},
  ],
};

/// Descriptor for `MsgCreateGameResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgCreateGameResponseDescriptor = $convert.base64Decode('ChVNc2dDcmVhdGVHYW1lUmVzcG9uc2USHAoJZ2FtZUluZGV4GAEgASgJUglnYW1lSW5kZXg=');
@$core.Deprecated('Use msgPlayMoveDescriptor instead')
const MsgPlayMove$json = const {
  '1': 'MsgPlayMove',
  '2': const [
    const {'1': 'creator', '3': 1, '4': 1, '5': 9, '10': 'creator'},
    const {'1': 'gameIndex', '3': 2, '4': 1, '5': 9, '10': 'gameIndex'},
    const {'1': 'fromX', '3': 3, '4': 1, '5': 4, '10': 'fromX'},
    const {'1': 'fromY', '3': 4, '4': 1, '5': 4, '10': 'fromY'},
    const {'1': 'toX', '3': 5, '4': 1, '5': 4, '10': 'toX'},
    const {'1': 'toY', '3': 6, '4': 1, '5': 4, '10': 'toY'},
  ],
};

/// Descriptor for `MsgPlayMove`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgPlayMoveDescriptor = $convert.base64Decode('CgtNc2dQbGF5TW92ZRIYCgdjcmVhdG9yGAEgASgJUgdjcmVhdG9yEhwKCWdhbWVJbmRleBgCIAEoCVIJZ2FtZUluZGV4EhQKBWZyb21YGAMgASgEUgVmcm9tWBIUCgVmcm9tWRgEIAEoBFIFZnJvbVkSEAoDdG9YGAUgASgEUgN0b1gSEAoDdG9ZGAYgASgEUgN0b1k=');
@$core.Deprecated('Use msgPlayMoveResponseDescriptor instead')
const MsgPlayMoveResponse$json = const {
  '1': 'MsgPlayMoveResponse',
  '2': const [
    const {'1': 'capturedX', '3': 1, '4': 1, '5': 5, '10': 'capturedX'},
    const {'1': 'capturedY', '3': 2, '4': 1, '5': 5, '10': 'capturedY'},
    const {'1': 'winner', '3': 3, '4': 1, '5': 9, '10': 'winner'},
  ],
};

/// Descriptor for `MsgPlayMoveResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgPlayMoveResponseDescriptor = $convert.base64Decode('ChNNc2dQbGF5TW92ZVJlc3BvbnNlEhwKCWNhcHR1cmVkWBgBIAEoBVIJY2FwdHVyZWRYEhwKCWNhcHR1cmVkWRgCIAEoBVIJY2FwdHVyZWRZEhYKBndpbm5lchgDIAEoCVIGd2lubmVy');
