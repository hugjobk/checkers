package keeper_test

import (
	"testing"
	"time"

	sdk "github.com/cosmos/cosmos-sdk/types"
	keepertest "github.com/hugjobk/checkers/testutil/keeper"
	"github.com/hugjobk/checkers/x/leaderboard/types"
	"github.com/stretchr/testify/require"
)

func TestOnePlayerKicksPlayerOutOfLeaderboard(t *testing.T) {
	keeper, ctx := keepertest.LeaderboardKeeper(t)
	keeper.SetLeaderboard(ctx, types.Leaderboard{
		Winners: []types.Winner{
			{Address: alice, WonCount: 12, AddedAt: 999},
			{Address: bob, WonCount: 10, AddedAt: 999},
		},
	})
	params := keeper.GetParams(ctx)
	params.Length = 2
	keeper.SetParams(ctx, params)
	carolAddress, err := sdk.AccAddressFromBech32(carol)
	require.Nil(t, err)
	keeper.SetCandidate(ctx, types.Candidate{
		Address:  carolAddress,
		WonCount: 11,
	})
	carolTime := time.Unix(1000, 0)
	keeper.CollectSortAndClipLeaderboard(ctx.WithBlockTime(carolTime))

	leaderboard := keeper.GetLeaderboard(ctx)
	require.Len(t, leaderboard.Winners, 2)
	require.Equal(t,
		[]types.Winner{
			{Address: alice, WonCount: 12, AddedAt: 999},
			{Address: carol, WonCount: 11, AddedAt: 1000},
		},
		leaderboard.Winners,
	)
}
