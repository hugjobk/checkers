///
//  Generated code. Do not modify.
//  source: checkers/tx.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class MsgCreateGame extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MsgCreateGame', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hugjobk.checkers.checkers'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'creator')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'black')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'red')
    ..a<$fixnum.Int64>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'wager', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'denom')
    ..hasRequiredFields = false
  ;

  MsgCreateGame._() : super();
  factory MsgCreateGame({
    $core.String? creator,
    $core.String? black,
    $core.String? red,
    $fixnum.Int64? wager,
    $core.String? denom,
  }) {
    final _result = create();
    if (creator != null) {
      _result.creator = creator;
    }
    if (black != null) {
      _result.black = black;
    }
    if (red != null) {
      _result.red = red;
    }
    if (wager != null) {
      _result.wager = wager;
    }
    if (denom != null) {
      _result.denom = denom;
    }
    return _result;
  }
  factory MsgCreateGame.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgCreateGame.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgCreateGame clone() => MsgCreateGame()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgCreateGame copyWith(void Function(MsgCreateGame) updates) => super.copyWith((message) => updates(message as MsgCreateGame)) as MsgCreateGame; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MsgCreateGame create() => MsgCreateGame._();
  MsgCreateGame createEmptyInstance() => create();
  static $pb.PbList<MsgCreateGame> createRepeated() => $pb.PbList<MsgCreateGame>();
  @$core.pragma('dart2js:noInline')
  static MsgCreateGame getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgCreateGame>(create);
  static MsgCreateGame? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get creator => $_getSZ(0);
  @$pb.TagNumber(1)
  set creator($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCreator() => $_has(0);
  @$pb.TagNumber(1)
  void clearCreator() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get black => $_getSZ(1);
  @$pb.TagNumber(2)
  set black($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBlack() => $_has(1);
  @$pb.TagNumber(2)
  void clearBlack() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get red => $_getSZ(2);
  @$pb.TagNumber(3)
  set red($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRed() => $_has(2);
  @$pb.TagNumber(3)
  void clearRed() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get wager => $_getI64(3);
  @$pb.TagNumber(4)
  set wager($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasWager() => $_has(3);
  @$pb.TagNumber(4)
  void clearWager() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get denom => $_getSZ(4);
  @$pb.TagNumber(5)
  set denom($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasDenom() => $_has(4);
  @$pb.TagNumber(5)
  void clearDenom() => clearField(5);
}

class MsgCreateGameResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MsgCreateGameResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hugjobk.checkers.checkers'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'gameIndex', protoName: 'gameIndex')
    ..hasRequiredFields = false
  ;

  MsgCreateGameResponse._() : super();
  factory MsgCreateGameResponse({
    $core.String? gameIndex,
  }) {
    final _result = create();
    if (gameIndex != null) {
      _result.gameIndex = gameIndex;
    }
    return _result;
  }
  factory MsgCreateGameResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgCreateGameResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgCreateGameResponse clone() => MsgCreateGameResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgCreateGameResponse copyWith(void Function(MsgCreateGameResponse) updates) => super.copyWith((message) => updates(message as MsgCreateGameResponse)) as MsgCreateGameResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MsgCreateGameResponse create() => MsgCreateGameResponse._();
  MsgCreateGameResponse createEmptyInstance() => create();
  static $pb.PbList<MsgCreateGameResponse> createRepeated() => $pb.PbList<MsgCreateGameResponse>();
  @$core.pragma('dart2js:noInline')
  static MsgCreateGameResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgCreateGameResponse>(create);
  static MsgCreateGameResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get gameIndex => $_getSZ(0);
  @$pb.TagNumber(1)
  set gameIndex($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGameIndex() => $_has(0);
  @$pb.TagNumber(1)
  void clearGameIndex() => clearField(1);
}

class MsgPlayMove extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MsgPlayMove', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hugjobk.checkers.checkers'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'creator')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'gameIndex', protoName: 'gameIndex')
    ..a<$fixnum.Int64>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fromX', $pb.PbFieldType.OU6, protoName: 'fromX', defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fromY', $pb.PbFieldType.OU6, protoName: 'fromY', defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'toX', $pb.PbFieldType.OU6, protoName: 'toX', defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'toY', $pb.PbFieldType.OU6, protoName: 'toY', defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  MsgPlayMove._() : super();
  factory MsgPlayMove({
    $core.String? creator,
    $core.String? gameIndex,
    $fixnum.Int64? fromX,
    $fixnum.Int64? fromY,
    $fixnum.Int64? toX,
    $fixnum.Int64? toY,
  }) {
    final _result = create();
    if (creator != null) {
      _result.creator = creator;
    }
    if (gameIndex != null) {
      _result.gameIndex = gameIndex;
    }
    if (fromX != null) {
      _result.fromX = fromX;
    }
    if (fromY != null) {
      _result.fromY = fromY;
    }
    if (toX != null) {
      _result.toX = toX;
    }
    if (toY != null) {
      _result.toY = toY;
    }
    return _result;
  }
  factory MsgPlayMove.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgPlayMove.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgPlayMove clone() => MsgPlayMove()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgPlayMove copyWith(void Function(MsgPlayMove) updates) => super.copyWith((message) => updates(message as MsgPlayMove)) as MsgPlayMove; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MsgPlayMove create() => MsgPlayMove._();
  MsgPlayMove createEmptyInstance() => create();
  static $pb.PbList<MsgPlayMove> createRepeated() => $pb.PbList<MsgPlayMove>();
  @$core.pragma('dart2js:noInline')
  static MsgPlayMove getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgPlayMove>(create);
  static MsgPlayMove? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get creator => $_getSZ(0);
  @$pb.TagNumber(1)
  set creator($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCreator() => $_has(0);
  @$pb.TagNumber(1)
  void clearCreator() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get gameIndex => $_getSZ(1);
  @$pb.TagNumber(2)
  set gameIndex($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasGameIndex() => $_has(1);
  @$pb.TagNumber(2)
  void clearGameIndex() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get fromX => $_getI64(2);
  @$pb.TagNumber(3)
  set fromX($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasFromX() => $_has(2);
  @$pb.TagNumber(3)
  void clearFromX() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get fromY => $_getI64(3);
  @$pb.TagNumber(4)
  set fromY($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasFromY() => $_has(3);
  @$pb.TagNumber(4)
  void clearFromY() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get toX => $_getI64(4);
  @$pb.TagNumber(5)
  set toX($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasToX() => $_has(4);
  @$pb.TagNumber(5)
  void clearToX() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get toY => $_getI64(5);
  @$pb.TagNumber(6)
  set toY($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasToY() => $_has(5);
  @$pb.TagNumber(6)
  void clearToY() => clearField(6);
}

class MsgPlayMoveResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MsgPlayMoveResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hugjobk.checkers.checkers'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'capturedX', $pb.PbFieldType.O3, protoName: 'capturedX')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'capturedY', $pb.PbFieldType.O3, protoName: 'capturedY')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'winner')
    ..hasRequiredFields = false
  ;

  MsgPlayMoveResponse._() : super();
  factory MsgPlayMoveResponse({
    $core.int? capturedX,
    $core.int? capturedY,
    $core.String? winner,
  }) {
    final _result = create();
    if (capturedX != null) {
      _result.capturedX = capturedX;
    }
    if (capturedY != null) {
      _result.capturedY = capturedY;
    }
    if (winner != null) {
      _result.winner = winner;
    }
    return _result;
  }
  factory MsgPlayMoveResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MsgPlayMoveResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MsgPlayMoveResponse clone() => MsgPlayMoveResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MsgPlayMoveResponse copyWith(void Function(MsgPlayMoveResponse) updates) => super.copyWith((message) => updates(message as MsgPlayMoveResponse)) as MsgPlayMoveResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MsgPlayMoveResponse create() => MsgPlayMoveResponse._();
  MsgPlayMoveResponse createEmptyInstance() => create();
  static $pb.PbList<MsgPlayMoveResponse> createRepeated() => $pb.PbList<MsgPlayMoveResponse>();
  @$core.pragma('dart2js:noInline')
  static MsgPlayMoveResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgPlayMoveResponse>(create);
  static MsgPlayMoveResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get capturedX => $_getIZ(0);
  @$pb.TagNumber(1)
  set capturedX($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCapturedX() => $_has(0);
  @$pb.TagNumber(1)
  void clearCapturedX() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get capturedY => $_getIZ(1);
  @$pb.TagNumber(2)
  set capturedY($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCapturedY() => $_has(1);
  @$pb.TagNumber(2)
  void clearCapturedY() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get winner => $_getSZ(2);
  @$pb.TagNumber(3)
  set winner($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasWinner() => $_has(2);
  @$pb.TagNumber(3)
  void clearWinner() => clearField(3);
}

