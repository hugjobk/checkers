///
//  Generated code. Do not modify.
//  source: checkers/stored_game.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class StoredGame extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'StoredGame', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hugjobk.checkers.checkers'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'index')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'board')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'turn')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'black')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'red')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'winner')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deadline')
    ..a<$fixnum.Int64>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'moveCount', $pb.PbFieldType.OU6, protoName: 'moveCount', defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'beforeIndex', protoName: 'beforeIndex')
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'afterIndex', protoName: 'afterIndex')
    ..a<$fixnum.Int64>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'wager', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'denom')
    ..hasRequiredFields = false
  ;

  StoredGame._() : super();
  factory StoredGame({
    $core.String? index,
    $core.String? board,
    $core.String? turn,
    $core.String? black,
    $core.String? red,
    $core.String? winner,
    $core.String? deadline,
    $fixnum.Int64? moveCount,
    $core.String? beforeIndex,
    $core.String? afterIndex,
    $fixnum.Int64? wager,
    $core.String? denom,
  }) {
    final _result = create();
    if (index != null) {
      _result.index = index;
    }
    if (board != null) {
      _result.board = board;
    }
    if (turn != null) {
      _result.turn = turn;
    }
    if (black != null) {
      _result.black = black;
    }
    if (red != null) {
      _result.red = red;
    }
    if (winner != null) {
      _result.winner = winner;
    }
    if (deadline != null) {
      _result.deadline = deadline;
    }
    if (moveCount != null) {
      _result.moveCount = moveCount;
    }
    if (beforeIndex != null) {
      _result.beforeIndex = beforeIndex;
    }
    if (afterIndex != null) {
      _result.afterIndex = afterIndex;
    }
    if (wager != null) {
      _result.wager = wager;
    }
    if (denom != null) {
      _result.denom = denom;
    }
    return _result;
  }
  factory StoredGame.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StoredGame.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StoredGame clone() => StoredGame()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StoredGame copyWith(void Function(StoredGame) updates) => super.copyWith((message) => updates(message as StoredGame)) as StoredGame; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StoredGame create() => StoredGame._();
  StoredGame createEmptyInstance() => create();
  static $pb.PbList<StoredGame> createRepeated() => $pb.PbList<StoredGame>();
  @$core.pragma('dart2js:noInline')
  static StoredGame getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StoredGame>(create);
  static StoredGame? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get index => $_getSZ(0);
  @$pb.TagNumber(1)
  set index($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIndex() => $_has(0);
  @$pb.TagNumber(1)
  void clearIndex() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get board => $_getSZ(1);
  @$pb.TagNumber(2)
  set board($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBoard() => $_has(1);
  @$pb.TagNumber(2)
  void clearBoard() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get turn => $_getSZ(2);
  @$pb.TagNumber(3)
  set turn($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTurn() => $_has(2);
  @$pb.TagNumber(3)
  void clearTurn() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get black => $_getSZ(3);
  @$pb.TagNumber(4)
  set black($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasBlack() => $_has(3);
  @$pb.TagNumber(4)
  void clearBlack() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get red => $_getSZ(4);
  @$pb.TagNumber(5)
  set red($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasRed() => $_has(4);
  @$pb.TagNumber(5)
  void clearRed() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get winner => $_getSZ(5);
  @$pb.TagNumber(6)
  set winner($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasWinner() => $_has(5);
  @$pb.TagNumber(6)
  void clearWinner() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get deadline => $_getSZ(6);
  @$pb.TagNumber(7)
  set deadline($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasDeadline() => $_has(6);
  @$pb.TagNumber(7)
  void clearDeadline() => clearField(7);

  @$pb.TagNumber(8)
  $fixnum.Int64 get moveCount => $_getI64(7);
  @$pb.TagNumber(8)
  set moveCount($fixnum.Int64 v) { $_setInt64(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasMoveCount() => $_has(7);
  @$pb.TagNumber(8)
  void clearMoveCount() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get beforeIndex => $_getSZ(8);
  @$pb.TagNumber(9)
  set beforeIndex($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasBeforeIndex() => $_has(8);
  @$pb.TagNumber(9)
  void clearBeforeIndex() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get afterIndex => $_getSZ(9);
  @$pb.TagNumber(10)
  set afterIndex($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasAfterIndex() => $_has(9);
  @$pb.TagNumber(10)
  void clearAfterIndex() => clearField(10);

  @$pb.TagNumber(11)
  $fixnum.Int64 get wager => $_getI64(10);
  @$pb.TagNumber(11)
  set wager($fixnum.Int64 v) { $_setInt64(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasWager() => $_has(10);
  @$pb.TagNumber(11)
  void clearWager() => clearField(11);

  @$pb.TagNumber(12)
  $core.String get denom => $_getSZ(11);
  @$pb.TagNumber(12)
  set denom($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasDenom() => $_has(11);
  @$pb.TagNumber(12)
  void clearDenom() => clearField(12);
}

