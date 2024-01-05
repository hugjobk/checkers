package keeper

import (
	"github.com/hugjobk/checkers/x/leaderboard/types"
)

var _ types.QueryServer = Keeper{}
