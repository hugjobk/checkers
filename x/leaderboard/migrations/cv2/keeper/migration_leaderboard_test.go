package keeper_test

import (
	"context"
	"testing"
	"time"

	sdk "github.com/cosmos/cosmos-sdk/types"
	"github.com/cosmos/cosmos-sdk/types/query"
	"github.com/golang/mock/gomock"
	keepertest "github.com/hugjobk/checkers/testutil/keeper"
	checkerstypes "github.com/hugjobk/checkers/x/checkers/types"
	cv2keeper "github.com/hugjobk/checkers/x/leaderboard/migrations/cv2/keeper"
	"github.com/hugjobk/checkers/x/leaderboard/testutil"
	"github.com/hugjobk/checkers/x/leaderboard/types"
	"github.com/stretchr/testify/require"
)

const (
	alice = testutil.Alice
	bob   = testutil.Bob
	carol = testutil.Carol
)

func setupMockForLeaderboardMigration(t testing.TB) (context.Context, *gomock.Controller, *testutil.MockPlayerInfoKeeper) {
	ctrl := gomock.NewController(t)
	playerInfoMock := testutil.NewMockPlayerInfoKeeper(ctrl)
	_, ctx := keepertest.LeaderboardKeeper(t)
	return sdk.WrapSDKContext(ctx), ctrl, playerInfoMock
}

func TestComputeLeaderboard(t *testing.T) {
	context, ctrl, playerInfoMock := setupMockForLeaderboardMigration(t)
	defer ctrl.Finish()

	firstCall := playerInfoMock.EXPECT().
		PlayerInfoAll(context, &checkerstypes.QueryAllPlayerInfoRequest{
			Pagination: &query.PageRequest{Limit: 2},
		}).
		Return(&checkerstypes.QueryAllPlayerInfoResponse{
			PlayerInfo: []checkerstypes.PlayerInfo{
				{
					Index:    alice,
					WonCount: 1,
				},
				{
					Index:    bob,
					WonCount: 2,
				},
			},
			Pagination: &query.PageResponse{
				NextKey: []byte("more"),
			},
		}, nil)
	secondCall := playerInfoMock.EXPECT().
		PlayerInfoAll(context, &checkerstypes.QueryAllPlayerInfoRequest{
			Pagination: &query.PageRequest{
				Key:   []byte("more"),
				Limit: 2,
			},
		}).
		Return(&checkerstypes.QueryAllPlayerInfoResponse{
			PlayerInfo: []checkerstypes.PlayerInfo{
				{
					Index:    carol,
					WonCount: 3,
				},
			},
			Pagination: &query.PageResponse{
				NextKey: nil,
			},
		}, nil)
	gomock.InOrder(firstCall, secondCall)

	leaderboard, err := cv2keeper.MapPlayerInfosReduceToLeaderboard(
		context,
		playerInfoMock,
		2,
		time.Unix(int64(1001), 0),
		2)

	require.Nil(t, err)
	require.Equal(t, 2, len(leaderboard.Winners))
	require.EqualValues(t, types.Leaderboard{
		Winners: []types.Winner{
			{
				Address:  carol,
				WonCount: 3,
				AddedAt:  1001,
			},
			{
				Address:  bob,
				WonCount: 2,
				AddedAt:  1001,
			},
		},
	}, *leaderboard)
}
