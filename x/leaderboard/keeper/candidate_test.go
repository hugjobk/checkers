package keeper_test

import (
	"sort"
	"testing"

	sdk "github.com/cosmos/cosmos-sdk/types"
	keepertest "github.com/hugjobk/checkers/testutil/keeper"
	"github.com/hugjobk/checkers/x/leaderboard/testutil"
	"github.com/hugjobk/checkers/x/leaderboard/types"
	"github.com/stretchr/testify/require"
)

const (
	alice = testutil.Alice
	bob   = testutil.Bob
	carol = testutil.Carol
)

func TestSetAndGetThreeCandidates(t *testing.T) {
	keeper, ctx := keepertest.LeaderboardKeeper(t)
	aliceAddress, err := sdk.AccAddressFromBech32(alice)
	require.Nil(t, err)
	bobAddress, err := sdk.AccAddressFromBech32(bob)
	require.Nil(t, err)
	carolAddress, err := sdk.AccAddressFromBech32(carol)
	require.Nil(t, err)

	keeper.SetCandidate(ctx, types.Candidate{
		Address:  aliceAddress,
		WonCount: 12,
	})
	keeper.SetCandidate(ctx, types.Candidate{
		Address:  bobAddress,
		WonCount: 34,
	})
	keeper.SetCandidate(ctx, types.Candidate{
		Address:  carolAddress,
		WonCount: 56,
	})

	candidates := keeper.GetAllCandidates(ctx)
	require.Len(t, candidates, 3)
	sort.SliceStable(candidates[:], func(i, j int) bool {
		return candidates[i].WonCount < candidates[j].WonCount
	})
	require.Equal(t,
		[]types.Candidate{
			{Address: aliceAddress, WonCount: 12},
			{Address: bobAddress, WonCount: 34},
			{Address: carolAddress, WonCount: 56},
		},
		candidates,
	)
}
