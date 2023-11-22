///
//  Generated code. Do not modify.
//  source: checkers/system_info.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class SystemInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SystemInfo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hugjobk.checkers.checkers'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nextId', $pb.PbFieldType.OU6, protoName: 'nextId', defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fifoHeadIndex', protoName: 'fifoHeadIndex')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fifoTailIndex', protoName: 'fifoTailIndex')
    ..hasRequiredFields = false
  ;

  SystemInfo._() : super();
  factory SystemInfo({
    $fixnum.Int64? nextId,
    $core.String? fifoHeadIndex,
    $core.String? fifoTailIndex,
  }) {
    final _result = create();
    if (nextId != null) {
      _result.nextId = nextId;
    }
    if (fifoHeadIndex != null) {
      _result.fifoHeadIndex = fifoHeadIndex;
    }
    if (fifoTailIndex != null) {
      _result.fifoTailIndex = fifoTailIndex;
    }
    return _result;
  }
  factory SystemInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SystemInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SystemInfo clone() => SystemInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SystemInfo copyWith(void Function(SystemInfo) updates) => super.copyWith((message) => updates(message as SystemInfo)) as SystemInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SystemInfo create() => SystemInfo._();
  SystemInfo createEmptyInstance() => create();
  static $pb.PbList<SystemInfo> createRepeated() => $pb.PbList<SystemInfo>();
  @$core.pragma('dart2js:noInline')
  static SystemInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SystemInfo>(create);
  static SystemInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get nextId => $_getI64(0);
  @$pb.TagNumber(1)
  set nextId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNextId() => $_has(0);
  @$pb.TagNumber(1)
  void clearNextId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get fifoHeadIndex => $_getSZ(1);
  @$pb.TagNumber(2)
  set fifoHeadIndex($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFifoHeadIndex() => $_has(1);
  @$pb.TagNumber(2)
  void clearFifoHeadIndex() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get fifoTailIndex => $_getSZ(2);
  @$pb.TagNumber(3)
  set fifoTailIndex($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasFifoTailIndex() => $_has(2);
  @$pb.TagNumber(3)
  void clearFifoTailIndex() => clearField(3);
}

