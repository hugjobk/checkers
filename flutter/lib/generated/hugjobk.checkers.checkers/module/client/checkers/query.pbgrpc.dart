///
//  Generated code. Do not modify.
//  source: checkers/query.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'query.pb.dart' as $0;
export 'query.pb.dart';

class QueryClient extends $grpc.Client {
  static final _$params =
      $grpc.ClientMethod<$0.QueryParamsRequest, $0.QueryParamsResponse>(
          '/hugjobk.checkers.checkers.Query/Params',
          ($0.QueryParamsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.QueryParamsResponse.fromBuffer(value));
  static final _$systemInfo = $grpc.ClientMethod<$0.QueryGetSystemInfoRequest,
          $0.QueryGetSystemInfoResponse>(
      '/hugjobk.checkers.checkers.Query/SystemInfo',
      ($0.QueryGetSystemInfoRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.QueryGetSystemInfoResponse.fromBuffer(value));
  static final _$storedGame = $grpc.ClientMethod<$0.QueryGetStoredGameRequest,
          $0.QueryGetStoredGameResponse>(
      '/hugjobk.checkers.checkers.Query/StoredGame',
      ($0.QueryGetStoredGameRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.QueryGetStoredGameResponse.fromBuffer(value));
  static final _$storedGameAll = $grpc.ClientMethod<
          $0.QueryAllStoredGameRequest, $0.QueryAllStoredGameResponse>(
      '/hugjobk.checkers.checkers.Query/StoredGameAll',
      ($0.QueryAllStoredGameRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.QueryAllStoredGameResponse.fromBuffer(value));
  static final _$canPlayMove = $grpc.ClientMethod<$0.QueryCanPlayMoveRequest,
          $0.QueryCanPlayMoveResponse>(
      '/hugjobk.checkers.checkers.Query/CanPlayMove',
      ($0.QueryCanPlayMoveRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.QueryCanPlayMoveResponse.fromBuffer(value));

  QueryClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.QueryParamsResponse> params(
      $0.QueryParamsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$params, request, options: options);
  }

  $grpc.ResponseFuture<$0.QueryGetSystemInfoResponse> systemInfo(
      $0.QueryGetSystemInfoRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$systemInfo, request, options: options);
  }

  $grpc.ResponseFuture<$0.QueryGetStoredGameResponse> storedGame(
      $0.QueryGetStoredGameRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$storedGame, request, options: options);
  }

  $grpc.ResponseFuture<$0.QueryAllStoredGameResponse> storedGameAll(
      $0.QueryAllStoredGameRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$storedGameAll, request, options: options);
  }

  $grpc.ResponseFuture<$0.QueryCanPlayMoveResponse> canPlayMove(
      $0.QueryCanPlayMoveRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$canPlayMove, request, options: options);
  }
}

abstract class QueryServiceBase extends $grpc.Service {
  $core.String get $name => 'hugjobk.checkers.checkers.Query';

  QueryServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$0.QueryParamsRequest, $0.QueryParamsResponse>(
            'Params',
            params_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.QueryParamsRequest.fromBuffer(value),
            ($0.QueryParamsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.QueryGetSystemInfoRequest,
            $0.QueryGetSystemInfoResponse>(
        'SystemInfo',
        systemInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.QueryGetSystemInfoRequest.fromBuffer(value),
        ($0.QueryGetSystemInfoResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.QueryGetStoredGameRequest,
            $0.QueryGetStoredGameResponse>(
        'StoredGame',
        storedGame_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.QueryGetStoredGameRequest.fromBuffer(value),
        ($0.QueryGetStoredGameResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.QueryAllStoredGameRequest,
            $0.QueryAllStoredGameResponse>(
        'StoredGameAll',
        storedGameAll_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.QueryAllStoredGameRequest.fromBuffer(value),
        ($0.QueryAllStoredGameResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.QueryCanPlayMoveRequest,
            $0.QueryCanPlayMoveResponse>(
        'CanPlayMove',
        canPlayMove_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.QueryCanPlayMoveRequest.fromBuffer(value),
        ($0.QueryCanPlayMoveResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.QueryParamsResponse> params_Pre($grpc.ServiceCall call,
      $async.Future<$0.QueryParamsRequest> request) async {
    return params(call, await request);
  }

  $async.Future<$0.QueryGetSystemInfoResponse> systemInfo_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.QueryGetSystemInfoRequest> request) async {
    return systemInfo(call, await request);
  }

  $async.Future<$0.QueryGetStoredGameResponse> storedGame_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.QueryGetStoredGameRequest> request) async {
    return storedGame(call, await request);
  }

  $async.Future<$0.QueryAllStoredGameResponse> storedGameAll_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.QueryAllStoredGameRequest> request) async {
    return storedGameAll(call, await request);
  }

  $async.Future<$0.QueryCanPlayMoveResponse> canPlayMove_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.QueryCanPlayMoveRequest> request) async {
    return canPlayMove(call, await request);
  }

  $async.Future<$0.QueryParamsResponse> params(
      $grpc.ServiceCall call, $0.QueryParamsRequest request);
  $async.Future<$0.QueryGetSystemInfoResponse> systemInfo(
      $grpc.ServiceCall call, $0.QueryGetSystemInfoRequest request);
  $async.Future<$0.QueryGetStoredGameResponse> storedGame(
      $grpc.ServiceCall call, $0.QueryGetStoredGameRequest request);
  $async.Future<$0.QueryAllStoredGameResponse> storedGameAll(
      $grpc.ServiceCall call, $0.QueryAllStoredGameRequest request);
  $async.Future<$0.QueryCanPlayMoveResponse> canPlayMove(
      $grpc.ServiceCall call, $0.QueryCanPlayMoveRequest request);
}
