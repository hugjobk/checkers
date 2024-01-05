package types

import "github.com/hugjobk/checkers/x/leaderboard/types"

const (
	ConsensusVersion    = uint64(2)
	PlayerInfoChunkSize = types.DefaultLength * uint64(2)
)
