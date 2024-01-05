package types

import (
	context "context"

	sdk "github.com/cosmos/cosmos-sdk/types"
	"github.com/cosmos/cosmos-sdk/x/auth/types"
	checkerstypes "github.com/hugjobk/checkers/x/checkers/types"
)

// AccountKeeper defines the expected account keeper used for simulations (noalias)
type AccountKeeper interface {
	GetAccount(ctx sdk.Context, addr sdk.AccAddress) types.AccountI
	// Methods imported from account should be defined here
}

// BankKeeper defines the expected interface needed to retrieve account balances.
type BankKeeper interface {
	SpendableCoins(ctx sdk.Context, addr sdk.AccAddress) sdk.Coins
	// Methods imported from bank should be defined here
}

type PlayerInfoKeeper interface {
	PlayerInfoAll(c context.Context, req *checkerstypes.QueryAllPlayerInfoRequest) (*checkerstypes.QueryAllPlayerInfoResponse, error)
}
