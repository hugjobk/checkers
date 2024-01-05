package cv3

import (
	sdk "github.com/cosmos/cosmos-sdk/types"
	"github.com/hugjobk/checkers/x/checkers/keeper"
	cv3Keeper "github.com/hugjobk/checkers/x/checkers/migrations/cv3/keeper"
)

func PerformMigration(ctx sdk.Context, k keeper.Keeper, storedGameChunk uint64) error {
	ctx.Logger().Info("Start to compute checkers games to player info calculation...")
	err := cv3Keeper.MapStoredGamesReduceToPlayerInfo(ctx, k, storedGameChunk)
	if err != nil {
		ctx.Logger().Error("Checkers games to player info computation ended with error")
	} else {
		ctx.Logger().Info("Checkers games to player info computation done")
	}
	return err
}
