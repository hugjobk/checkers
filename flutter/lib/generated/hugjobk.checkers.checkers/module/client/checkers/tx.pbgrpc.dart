///
//  Generated code. Do not modify.
//  source: checkers/tx.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'tx.pb.dart' as $1;
export 'tx.pb.dart';

class MsgClient extends $grpc.Client {
  static final _$createGame =
      $grpc.ClientMethod<$1.MsgCreateGame, $1.MsgCreateGameResponse>(
          '/hugjobk.checkers.checkers.Msg/CreateGame',
          ($1.MsgCreateGame value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.MsgCreateGameResponse.fromBuffer(value));
  static final _$playMove =
      $grpc.ClientMethod<$1.MsgPlayMove, $1.MsgPlayMoveResponse>(
          '/hugjobk.checkers.checkers.Msg/PlayMove',
          ($1.MsgPlayMove value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.MsgPlayMoveResponse.fromBuffer(value));

  MsgClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$1.MsgCreateGameResponse> createGame(
      $1.MsgCreateGame request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createGame, request, options: options);
  }

  $grpc.ResponseFuture<$1.MsgPlayMoveResponse> playMove($1.MsgPlayMove request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$playMove, request, options: options);
  }
}

abstract class MsgServiceBase extends $grpc.Service {
  $core.String get $name => 'hugjobk.checkers.checkers.Msg';

  MsgServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.MsgCreateGame, $1.MsgCreateGameResponse>(
        'CreateGame',
        createGame_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.MsgCreateGame.fromBuffer(value),
        ($1.MsgCreateGameResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.MsgPlayMove, $1.MsgPlayMoveResponse>(
        'PlayMove',
        playMove_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.MsgPlayMove.fromBuffer(value),
        ($1.MsgPlayMoveResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.MsgCreateGameResponse> createGame_Pre(
      $grpc.ServiceCall call, $async.Future<$1.MsgCreateGame> request) async {
    return createGame(call, await request);
  }

  $async.Future<$1.MsgPlayMoveResponse> playMove_Pre(
      $grpc.ServiceCall call, $async.Future<$1.MsgPlayMove> request) async {
    return playMove(call, await request);
  }

  $async.Future<$1.MsgCreateGameResponse> createGame(
      $grpc.ServiceCall call, $1.MsgCreateGame request);
  $async.Future<$1.MsgPlayMoveResponse> playMove(
      $grpc.ServiceCall call, $1.MsgPlayMove request);
}
