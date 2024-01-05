package keeper_test

import (
	"testing"

	sdk "github.com/cosmos/cosmos-sdk/types"
	keepertest "github.com/hugjobk/checkers/testutil/keeper"
	checkerstypes "github.com/hugjobk/checkers/x/checkers/types"
	"github.com/hugjobk/checkers/x/leaderboard/types"
	"github.com/stretchr/testify/require"
)

func TestOneCandidateAdded(t *testing.T) {
	keeper, ctx := keepertest.LeaderboardKeeper(t)
	keeper.Hooks().AfterPlayerInfoChanged(ctx, checkerstypes.PlayerInfo{
		Index:          alice,
		WonCount:       12,
		LostCount:      13,
		ForfeitedCount: 14,
	})

	aliceAddress, err := sdk.AccAddressFromBech32(alice)
	require.Nil(t, err)
	candidates := keeper.GetAllCandidates(ctx)
	require.Len(t, candidates, 1)
	require.Equal(t,
		types.Candidate{Address: aliceAddress, WonCount: 12},
		candidates[0],
	)
}
