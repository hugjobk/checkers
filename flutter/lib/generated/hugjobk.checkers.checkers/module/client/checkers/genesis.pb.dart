///
//  Generated code. Do not modify.
//  source: checkers/genesis.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'params.pb.dart' as $2;
import 'system_info.pb.dart' as $3;
import 'stored_game.pb.dart' as $4;

class GenesisState extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GenesisState', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hugjobk.checkers.checkers'), createEmptyInstance: create)
    ..aOM<$2.Params>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'params', subBuilder: $2.Params.create)
    ..aOM<$3.SystemInfo>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'systemInfo', protoName: 'systemInfo', subBuilder: $3.SystemInfo.create)
    ..pc<$4.StoredGame>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'storedGameList', $pb.PbFieldType.PM, protoName: 'storedGameList', subBuilder: $4.StoredGame.create)
    ..hasRequiredFields = false
  ;

  GenesisState._() : super();
  factory GenesisState({
    $2.Params? params,
    $3.SystemInfo? systemInfo,
    $core.Iterable<$4.StoredGame>? storedGameList,
  }) {
    final _result = create();
    if (params != null) {
      _result.params = params;
    }
    if (systemInfo != null) {
      _result.systemInfo = systemInfo;
    }
    if (storedGameList != null) {
      _result.storedGameList.addAll(storedGameList);
    }
    return _result;
  }
  factory GenesisState.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GenesisState.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GenesisState clone() => GenesisState()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GenesisState copyWith(void Function(GenesisState) updates) => super.copyWith((message) => updates(message as GenesisState)) as GenesisState; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GenesisState create() => GenesisState._();
  GenesisState createEmptyInstance() => create();
  static $pb.PbList<GenesisState> createRepeated() => $pb.PbList<GenesisState>();
  @$core.pragma('dart2js:noInline')
  static GenesisState getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GenesisState>(create);
  static GenesisState? _defaultInstance;

  @$pb.TagNumber(1)
  $2.Params get params => $_getN(0);
  @$pb.TagNumber(1)
  set params($2.Params v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasParams() => $_has(0);
  @$pb.TagNumber(1)
  void clearParams() => clearField(1);
  @$pb.TagNumber(1)
  $2.Params ensureParams() => $_ensure(0);

  @$pb.TagNumber(2)
  $3.SystemInfo get systemInfo => $_getN(1);
  @$pb.TagNumber(2)
  set systemInfo($3.SystemInfo v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSystemInfo() => $_has(1);
  @$pb.TagNumber(2)
  void clearSystemInfo() => clearField(2);
  @$pb.TagNumber(2)
  $3.SystemInfo ensureSystemInfo() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.List<$4.StoredGame> get storedGameList => $_getList(2);
}

