package keeper_test

import (
	"context"
	"testing"

	sdk "github.com/cosmos/cosmos-sdk/types"
	"github.com/golang/mock/gomock"
	keepertest "github.com/hugjobk/checkers/testutil/keeper"
	"github.com/hugjobk/checkers/x/checkers"
	"github.com/hugjobk/checkers/x/checkers/keeper"
	"github.com/hugjobk/checkers/x/checkers/testutil"
	"github.com/hugjobk/checkers/x/checkers/types"
	"github.com/stretchr/testify/require"
)

func setupMsgServerWithOneGameForPlayMove(t testing.TB) (types.MsgServer, keeper.Keeper, context.Context, *gomock.Controller, *testutil.MockBankEscrowKeeper) {
	ctrl := gomock.NewController(t)
	bankMock := testutil.NewMockBankEscrowKeeper(ctrl)
	k, ctx := keepertest.CheckersKeeperWithMocks(t, bankMock)
	checkers.InitGenesis(ctx, *k, *types.DefaultGenesis())
	server := keeper.NewMsgServerImpl(*k)
	context := sdk.WrapSDKContext(ctx)
	server.CreateGame(context, &types.MsgCreateGame{
		Creator: alice,
		Black:   bob,
		Red:     carol,
		Wager:   45,
		Denom:   sdk.DefaultBondDenom,
	})
	return server, *k, context, ctrl, bankMock
}

func TestPlayMove(t *testing.T) {
	msgServer, _, context, ctrl, escrow := setupMsgServerWithOneGameForPlayMove(t)
	defer ctrl.Finish()
	escrow.ExpectAny(context)
	playMoveResponse, err := msgServer.PlayMove(context, &types.MsgPlayMove{
		Creator:   bob,
		GameIndex: "1",
		FromX:     1,
		FromY:     2,
		ToX:       2,
		ToY:       3,
	})
	require.Nil(t, err)
	require.EqualValues(t, types.MsgPlayMoveResponse{
		CapturedX: -1,
		CapturedY: -1,
		Winner:    "*",
	}, *playMoveResponse)
}

func TestPlayMoveCannotParseGame(t *testing.T) {
	msgServer, k, context, ctrl, escrow := setupMsgServerWithOneGameForPlayMove(t)
	defer ctrl.Finish()
	escrow.ExpectAny(context)
	ctx := sdk.UnwrapSDKContext(context)
	storedGame, _ := k.GetStoredGame(ctx, "1")
	storedGame.Board = "not a board"
	k.SetStoredGame(ctx, storedGame)
	defer func() {
		r := recover()
		require.NotNil(t, r, "The code did not panic")
		require.Equal(t, r, "game cannot be parsed: invalid board string: not a board")
	}()
	msgServer.PlayMove(context, &types.MsgPlayMove{
		Creator:   bob,
		GameIndex: "1",
		FromX:     1,
		FromY:     2,
		ToX:       2,
		ToY:       3,
	})
}

func TestPlayMoveEmitted(t *testing.T) {
	msgServer, _, context, ctrl, escrow := setupMsgServerWithOneGameForPlayMove(t)
	defer ctrl.Finish()
	escrow.ExpectAny(context)
	msgServer.PlayMove(context, &types.MsgPlayMove{
		Creator:   bob,
		GameIndex: "1",
		FromX:     1,
		FromY:     2,
		ToX:       2,
		ToY:       3,
	})
	ctx := sdk.UnwrapSDKContext(context)
	require.NotNil(t, ctx)
	events := sdk.StringifyEvents(ctx.EventManager().ABCIEvents())
	require.Len(t, events, 2)
	event := events[0]
	require.EqualValues(t, sdk.StringEvent{
		Type: "move-played",
		Attributes: []sdk.Attribute{
			{Key: "creator", Value: bob},
			{Key: "game-index", Value: "1"},
			{Key: "captured-x", Value: "-1"},
			{Key: "captured-y", Value: "-1"},
			{Key: "winner", Value: "*"},
			{Key: "board", Value: "*b*b*b*b|b*b*b*b*|***b*b*b|**b*****|********|r*r*r*r*|*r*r*r*r|r*r*r*r*"},
		},
	}, event)
}

func TestPlayMove2Emitted(t *testing.T) {
	msgServer, _, context, ctrl, escrow := setupMsgServerWithOneGameForPlayMove(t)
	defer ctrl.Finish()
	escrow.ExpectAny(context)
	msgServer.PlayMove(context, &types.MsgPlayMove{
		Creator:   bob,
		GameIndex: "1",
		FromX:     1,
		FromY:     2,
		ToX:       2,
		ToY:       3,
	})
	msgServer.PlayMove(context, &types.MsgPlayMove{
		Creator:   carol,
		GameIndex: "1",
		FromX:     0,
		FromY:     5,
		ToX:       1,
		ToY:       4,
	})
	ctx := sdk.UnwrapSDKContext(context)
	require.NotNil(t, ctx)
	events := sdk.StringifyEvents(ctx.EventManager().ABCIEvents())
	require.Len(t, events, 2)
	event := events[0]
	require.Equal(t, "move-played", event.Type)
	require.EqualValues(t, []sdk.Attribute{
		{Key: "creator", Value: carol},
		{Key: "game-index", Value: "1"},
		{Key: "captured-x", Value: "-1"},
		{Key: "captured-y", Value: "-1"},
		{Key: "winner", Value: "*"},
		{Key: "board", Value: "*b*b*b*b|b*b*b*b*|***b*b*b|**b*****|*r******|**r*r*r*|*r*r*r*r|r*r*r*r*"},
	}, event.Attributes[6:])
}

func TestPlayMoveConsumedGas(t *testing.T) {
	msgServer, _, context, ctrl, escrow := setupMsgServerWithOneGameForPlayMove(t)
	defer ctrl.Finish()
	escrow.ExpectAny(context)
	ctx := sdk.UnwrapSDKContext(context)
	before := ctx.GasMeter().GasConsumed()
	msgServer.PlayMove(context, &types.MsgPlayMove{
		Creator:   bob,
		GameIndex: "1",
		FromX:     1,
		FromY:     2,
		ToX:       2,
		ToY:       3,
	})
	after := ctx.GasMeter().GasConsumed()
	require.GreaterOrEqual(t, after, before+types.PlayMoveGas)
}

func setupMsgServerWithOneGameForPlayMoveAndHooks(t testing.TB) (types.MsgServer, keeper.Keeper, context.Context,
	*gomock.Controller, *testutil.MockCheckersHooks) {
	_, k, context, ctrl, escrow := setupMsgServerWithOneGameForPlayMove(t)
	escrow.ExpectAny(context)
	hookMock := testutil.NewMockCheckersHooks(ctrl)
	k.SetHooks(hookMock)
	msgServer := keeper.NewMsgServerImpl(k)
	return msgServer, k, context, ctrl, hookMock
}

func TestPlayerInfoNoHookOnNoWinner(t *testing.T) {
	msgServer, keeper, context, ctrl, _ := setupMsgServerWithOneGameForPlayMoveAndHooks(t)
	ctx := sdk.UnwrapSDKContext(context)
	defer ctrl.Finish()
	keeper.SetPlayerInfo(ctx, types.PlayerInfo{
		Index: bob,
	})
	keeper.SetPlayerInfo(ctx, types.PlayerInfo{
		Index: carol,
	})
	msgServer.PlayMove(context, &types.MsgPlayMove{
		Creator:   bob,
		GameIndex: "1",
		FromX:     1,
		FromY:     2,
		ToX:       2,
		ToY:       3,
	})
}

func TestCompleteGameCallsHook(t *testing.T) {
	msgServer, keeper, context, ctrl, hookMock := setupMsgServerWithOneGameForPlayMoveAndHooks(t)
	ctx := sdk.UnwrapSDKContext(context)
	defer ctrl.Finish()
	bobCall := hookMock.EXPECT().AfterPlayerInfoChanged(ctx, types.PlayerInfo{
		Index:          bob,
		WonCount:       2,
		LostCount:      2,
		ForfeitedCount: 3,
	}).Times(1)
	hookMock.EXPECT().AfterPlayerInfoChanged(ctx, types.PlayerInfo{
		Index:          carol,
		WonCount:       4,
		LostCount:      6,
		ForfeitedCount: 6,
	}).Times(1).After(bobCall)

	keeper.SetPlayerInfo(ctx, types.PlayerInfo{
		Index:          bob,
		WonCount:       1,
		LostCount:      2,
		ForfeitedCount: 3,
	})
	keeper.SetPlayerInfo(ctx, types.PlayerInfo{
		Index:          carol,
		WonCount:       4,
		LostCount:      5,
		ForfeitedCount: 6,
	})

	testutil.PlayAllMoves(t, msgServer, context, "1", bob, carol, testutil.Game1Moves)
}
