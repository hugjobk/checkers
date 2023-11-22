///
//  Generated code. Do not modify.
//  source: checkers/query.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'params.pb.dart' as $2;
import 'system_info.pb.dart' as $3;
import 'stored_game.pb.dart' as $4;
import '../cosmos/base/query/v1beta1/pagination.pb.dart' as $6;

class QueryParamsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QueryParamsRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hugjobk.checkers.checkers'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  QueryParamsRequest._() : super();
  factory QueryParamsRequest() => create();
  factory QueryParamsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryParamsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryParamsRequest clone() => QueryParamsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryParamsRequest copyWith(void Function(QueryParamsRequest) updates) => super.copyWith((message) => updates(message as QueryParamsRequest)) as QueryParamsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryParamsRequest create() => QueryParamsRequest._();
  QueryParamsRequest createEmptyInstance() => create();
  static $pb.PbList<QueryParamsRequest> createRepeated() => $pb.PbList<QueryParamsRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryParamsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryParamsRequest>(create);
  static QueryParamsRequest? _defaultInstance;
}

class QueryParamsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QueryParamsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hugjobk.checkers.checkers'), createEmptyInstance: create)
    ..aOM<$2.Params>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'params', subBuilder: $2.Params.create)
    ..hasRequiredFields = false
  ;

  QueryParamsResponse._() : super();
  factory QueryParamsResponse({
    $2.Params? params,
  }) {
    final _result = create();
    if (params != null) {
      _result.params = params;
    }
    return _result;
  }
  factory QueryParamsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryParamsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryParamsResponse clone() => QueryParamsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryParamsResponse copyWith(void Function(QueryParamsResponse) updates) => super.copyWith((message) => updates(message as QueryParamsResponse)) as QueryParamsResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryParamsResponse create() => QueryParamsResponse._();
  QueryParamsResponse createEmptyInstance() => create();
  static $pb.PbList<QueryParamsResponse> createRepeated() => $pb.PbList<QueryParamsResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryParamsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryParamsResponse>(create);
  static QueryParamsResponse? _defaultInstance;

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
}

class QueryGetSystemInfoRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QueryGetSystemInfoRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hugjobk.checkers.checkers'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  QueryGetSystemInfoRequest._() : super();
  factory QueryGetSystemInfoRequest() => create();
  factory QueryGetSystemInfoRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryGetSystemInfoRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryGetSystemInfoRequest clone() => QueryGetSystemInfoRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryGetSystemInfoRequest copyWith(void Function(QueryGetSystemInfoRequest) updates) => super.copyWith((message) => updates(message as QueryGetSystemInfoRequest)) as QueryGetSystemInfoRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryGetSystemInfoRequest create() => QueryGetSystemInfoRequest._();
  QueryGetSystemInfoRequest createEmptyInstance() => create();
  static $pb.PbList<QueryGetSystemInfoRequest> createRepeated() => $pb.PbList<QueryGetSystemInfoRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryGetSystemInfoRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryGetSystemInfoRequest>(create);
  static QueryGetSystemInfoRequest? _defaultInstance;
}

class QueryGetSystemInfoResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QueryGetSystemInfoResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hugjobk.checkers.checkers'), createEmptyInstance: create)
    ..aOM<$3.SystemInfo>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'SystemInfo', protoName: 'SystemInfo', subBuilder: $3.SystemInfo.create)
    ..hasRequiredFields = false
  ;

  QueryGetSystemInfoResponse._() : super();
  factory QueryGetSystemInfoResponse({
    $3.SystemInfo? systemInfo,
  }) {
    final _result = create();
    if (systemInfo != null) {
      _result.systemInfo = systemInfo;
    }
    return _result;
  }
  factory QueryGetSystemInfoResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryGetSystemInfoResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryGetSystemInfoResponse clone() => QueryGetSystemInfoResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryGetSystemInfoResponse copyWith(void Function(QueryGetSystemInfoResponse) updates) => super.copyWith((message) => updates(message as QueryGetSystemInfoResponse)) as QueryGetSystemInfoResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryGetSystemInfoResponse create() => QueryGetSystemInfoResponse._();
  QueryGetSystemInfoResponse createEmptyInstance() => create();
  static $pb.PbList<QueryGetSystemInfoResponse> createRepeated() => $pb.PbList<QueryGetSystemInfoResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryGetSystemInfoResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryGetSystemInfoResponse>(create);
  static QueryGetSystemInfoResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $3.SystemInfo get systemInfo => $_getN(0);
  @$pb.TagNumber(1)
  set systemInfo($3.SystemInfo v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSystemInfo() => $_has(0);
  @$pb.TagNumber(1)
  void clearSystemInfo() => clearField(1);
  @$pb.TagNumber(1)
  $3.SystemInfo ensureSystemInfo() => $_ensure(0);
}

class QueryGetStoredGameRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QueryGetStoredGameRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hugjobk.checkers.checkers'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'index')
    ..hasRequiredFields = false
  ;

  QueryGetStoredGameRequest._() : super();
  factory QueryGetStoredGameRequest({
    $core.String? index,
  }) {
    final _result = create();
    if (index != null) {
      _result.index = index;
    }
    return _result;
  }
  factory QueryGetStoredGameRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryGetStoredGameRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryGetStoredGameRequest clone() => QueryGetStoredGameRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryGetStoredGameRequest copyWith(void Function(QueryGetStoredGameRequest) updates) => super.copyWith((message) => updates(message as QueryGetStoredGameRequest)) as QueryGetStoredGameRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryGetStoredGameRequest create() => QueryGetStoredGameRequest._();
  QueryGetStoredGameRequest createEmptyInstance() => create();
  static $pb.PbList<QueryGetStoredGameRequest> createRepeated() => $pb.PbList<QueryGetStoredGameRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryGetStoredGameRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryGetStoredGameRequest>(create);
  static QueryGetStoredGameRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get index => $_getSZ(0);
  @$pb.TagNumber(1)
  set index($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIndex() => $_has(0);
  @$pb.TagNumber(1)
  void clearIndex() => clearField(1);
}

class QueryGetStoredGameResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QueryGetStoredGameResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hugjobk.checkers.checkers'), createEmptyInstance: create)
    ..aOM<$4.StoredGame>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'storedGame', protoName: 'storedGame', subBuilder: $4.StoredGame.create)
    ..hasRequiredFields = false
  ;

  QueryGetStoredGameResponse._() : super();
  factory QueryGetStoredGameResponse({
    $4.StoredGame? storedGame,
  }) {
    final _result = create();
    if (storedGame != null) {
      _result.storedGame = storedGame;
    }
    return _result;
  }
  factory QueryGetStoredGameResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryGetStoredGameResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryGetStoredGameResponse clone() => QueryGetStoredGameResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryGetStoredGameResponse copyWith(void Function(QueryGetStoredGameResponse) updates) => super.copyWith((message) => updates(message as QueryGetStoredGameResponse)) as QueryGetStoredGameResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryGetStoredGameResponse create() => QueryGetStoredGameResponse._();
  QueryGetStoredGameResponse createEmptyInstance() => create();
  static $pb.PbList<QueryGetStoredGameResponse> createRepeated() => $pb.PbList<QueryGetStoredGameResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryGetStoredGameResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryGetStoredGameResponse>(create);
  static QueryGetStoredGameResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $4.StoredGame get storedGame => $_getN(0);
  @$pb.TagNumber(1)
  set storedGame($4.StoredGame v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStoredGame() => $_has(0);
  @$pb.TagNumber(1)
  void clearStoredGame() => clearField(1);
  @$pb.TagNumber(1)
  $4.StoredGame ensureStoredGame() => $_ensure(0);
}

class QueryAllStoredGameRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QueryAllStoredGameRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hugjobk.checkers.checkers'), createEmptyInstance: create)
    ..aOM<$6.PageRequest>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pagination', subBuilder: $6.PageRequest.create)
    ..hasRequiredFields = false
  ;

  QueryAllStoredGameRequest._() : super();
  factory QueryAllStoredGameRequest({
    $6.PageRequest? pagination,
  }) {
    final _result = create();
    if (pagination != null) {
      _result.pagination = pagination;
    }
    return _result;
  }
  factory QueryAllStoredGameRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryAllStoredGameRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryAllStoredGameRequest clone() => QueryAllStoredGameRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryAllStoredGameRequest copyWith(void Function(QueryAllStoredGameRequest) updates) => super.copyWith((message) => updates(message as QueryAllStoredGameRequest)) as QueryAllStoredGameRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryAllStoredGameRequest create() => QueryAllStoredGameRequest._();
  QueryAllStoredGameRequest createEmptyInstance() => create();
  static $pb.PbList<QueryAllStoredGameRequest> createRepeated() => $pb.PbList<QueryAllStoredGameRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryAllStoredGameRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryAllStoredGameRequest>(create);
  static QueryAllStoredGameRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $6.PageRequest get pagination => $_getN(0);
  @$pb.TagNumber(1)
  set pagination($6.PageRequest v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPagination() => $_has(0);
  @$pb.TagNumber(1)
  void clearPagination() => clearField(1);
  @$pb.TagNumber(1)
  $6.PageRequest ensurePagination() => $_ensure(0);
}

class QueryAllStoredGameResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QueryAllStoredGameResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hugjobk.checkers.checkers'), createEmptyInstance: create)
    ..pc<$4.StoredGame>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'storedGame', $pb.PbFieldType.PM, protoName: 'storedGame', subBuilder: $4.StoredGame.create)
    ..aOM<$6.PageResponse>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pagination', subBuilder: $6.PageResponse.create)
    ..hasRequiredFields = false
  ;

  QueryAllStoredGameResponse._() : super();
  factory QueryAllStoredGameResponse({
    $core.Iterable<$4.StoredGame>? storedGame,
    $6.PageResponse? pagination,
  }) {
    final _result = create();
    if (storedGame != null) {
      _result.storedGame.addAll(storedGame);
    }
    if (pagination != null) {
      _result.pagination = pagination;
    }
    return _result;
  }
  factory QueryAllStoredGameResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryAllStoredGameResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryAllStoredGameResponse clone() => QueryAllStoredGameResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryAllStoredGameResponse copyWith(void Function(QueryAllStoredGameResponse) updates) => super.copyWith((message) => updates(message as QueryAllStoredGameResponse)) as QueryAllStoredGameResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryAllStoredGameResponse create() => QueryAllStoredGameResponse._();
  QueryAllStoredGameResponse createEmptyInstance() => create();
  static $pb.PbList<QueryAllStoredGameResponse> createRepeated() => $pb.PbList<QueryAllStoredGameResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryAllStoredGameResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryAllStoredGameResponse>(create);
  static QueryAllStoredGameResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$4.StoredGame> get storedGame => $_getList(0);

  @$pb.TagNumber(2)
  $6.PageResponse get pagination => $_getN(1);
  @$pb.TagNumber(2)
  set pagination($6.PageResponse v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPagination() => $_has(1);
  @$pb.TagNumber(2)
  void clearPagination() => clearField(2);
  @$pb.TagNumber(2)
  $6.PageResponse ensurePagination() => $_ensure(1);
}

class QueryCanPlayMoveRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QueryCanPlayMoveRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hugjobk.checkers.checkers'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'gameIndex', protoName: 'gameIndex')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'player')
    ..a<$fixnum.Int64>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fromX', $pb.PbFieldType.OU6, protoName: 'fromX', defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fromY', $pb.PbFieldType.OU6, protoName: 'fromY', defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'toX', $pb.PbFieldType.OU6, protoName: 'toX', defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'toY', $pb.PbFieldType.OU6, protoName: 'toY', defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  QueryCanPlayMoveRequest._() : super();
  factory QueryCanPlayMoveRequest({
    $core.String? gameIndex,
    $core.String? player,
    $fixnum.Int64? fromX,
    $fixnum.Int64? fromY,
    $fixnum.Int64? toX,
    $fixnum.Int64? toY,
  }) {
    final _result = create();
    if (gameIndex != null) {
      _result.gameIndex = gameIndex;
    }
    if (player != null) {
      _result.player = player;
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
  factory QueryCanPlayMoveRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryCanPlayMoveRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryCanPlayMoveRequest clone() => QueryCanPlayMoveRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryCanPlayMoveRequest copyWith(void Function(QueryCanPlayMoveRequest) updates) => super.copyWith((message) => updates(message as QueryCanPlayMoveRequest)) as QueryCanPlayMoveRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryCanPlayMoveRequest create() => QueryCanPlayMoveRequest._();
  QueryCanPlayMoveRequest createEmptyInstance() => create();
  static $pb.PbList<QueryCanPlayMoveRequest> createRepeated() => $pb.PbList<QueryCanPlayMoveRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryCanPlayMoveRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryCanPlayMoveRequest>(create);
  static QueryCanPlayMoveRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get gameIndex => $_getSZ(0);
  @$pb.TagNumber(1)
  set gameIndex($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGameIndex() => $_has(0);
  @$pb.TagNumber(1)
  void clearGameIndex() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get player => $_getSZ(1);
  @$pb.TagNumber(2)
  set player($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPlayer() => $_has(1);
  @$pb.TagNumber(2)
  void clearPlayer() => clearField(2);

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

class QueryCanPlayMoveResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QueryCanPlayMoveResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'hugjobk.checkers.checkers'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'possible')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'reason')
    ..hasRequiredFields = false
  ;

  QueryCanPlayMoveResponse._() : super();
  factory QueryCanPlayMoveResponse({
    $core.bool? possible,
    $core.String? reason,
  }) {
    final _result = create();
    if (possible != null) {
      _result.possible = possible;
    }
    if (reason != null) {
      _result.reason = reason;
    }
    return _result;
  }
  factory QueryCanPlayMoveResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryCanPlayMoveResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryCanPlayMoveResponse clone() => QueryCanPlayMoveResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryCanPlayMoveResponse copyWith(void Function(QueryCanPlayMoveResponse) updates) => super.copyWith((message) => updates(message as QueryCanPlayMoveResponse)) as QueryCanPlayMoveResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryCanPlayMoveResponse create() => QueryCanPlayMoveResponse._();
  QueryCanPlayMoveResponse createEmptyInstance() => create();
  static $pb.PbList<QueryCanPlayMoveResponse> createRepeated() => $pb.PbList<QueryCanPlayMoveResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryCanPlayMoveResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryCanPlayMoveResponse>(create);
  static QueryCanPlayMoveResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get possible => $_getBF(0);
  @$pb.TagNumber(1)
  set possible($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPossible() => $_has(0);
  @$pb.TagNumber(1)
  void clearPossible() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get reason => $_getSZ(1);
  @$pb.TagNumber(2)
  set reason($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasReason() => $_has(1);
  @$pb.TagNumber(2)
  void clearReason() => clearField(2);
}

