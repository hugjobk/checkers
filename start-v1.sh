
rm -rf $HOME/.checkers

git checkout v1
go build -o release/v1/checkersd cmd/checkersd/main.go

./release/v1/checkersd keys add alice --keyring-backend test
./release/v1/checkersd keys add bob --keyring-backend test
./release/v1/checkersd init checkers-1 --chain-id checkers-1
./release/v1/checkersd add-genesis-account \
    alice 200000000stake,20000token --keyring-backend test
./release/v1/checkersd add-genesis-account \
    bob 100000000stake,10000token --keyring-backend test
./release/v1/checkersd gentx alice 100000000stake \
    --keyring-backend test --chain-id checkers-1
./release/v1/checkersd collect-gentxs
cat <<< $(jq '.app_state.gov.voting_params.voting_period = "20s"' $HOME/.checkers/config/genesis.json) \
    > $HOME/.checkers/config/genesis.json

export DAEMON_NAME=checkersd
export DAEMON_HOME=$HOME/.checkers
export DAEMON_RESTART_AFTER_UPGRADE=true
export DAEMON_ALLOW_DOWNLOAD_BINARIES=true

cosmovisor init release/v1/checkersd
cosmovisor run start
