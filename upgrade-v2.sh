git checkout v2
go build -o release/v1_1/checkersd cmd/checkersd/main.go

export DAEMON_NAME=checkersd
export DAEMON_HOME=$HOME/.checkers
export DAEMON_RESTART_AFTER_UPGRADE=true
export DAEMON_ALLOW_DOWNLOAD_BINARIES=true

cosmovisor add-upgrade v1_1tov2 release/v2/checkersd

export alice=$(./release/v1/checkersd keys show alice -a --keyring-backend test)
export bob=$(./release/v1/checkersd keys show bob -a --keyring-backend test)
./release/v1/checkersd tx checkers create-game \
    $alice $bob 10 stake \
    --from $alice --keyring-backend test --yes \
    --chain-id checkers-1 \
    --broadcast-mode block
./release/v1/checkersd tx gov submit-proposal software-upgrade v1_1tov2 \
    --title "v1_1tov2" \
    --description "Increase engagement via the use of a leaderboard" \
    --from $alice --keyring-backend test --yes \
    --chain-id checkers-1 \
    --broadcast-mode block \
    --upgrade-height 40 \
    --deposit 10000000stake
./release/v1/checkersd tx gov vote 2 yes \
    --from $alice --keyring-backend test --yes \
    --chain-id checkers-1
./release/v1/checkersd tx gov vote 2 yes \
    --from $bob --keyring-backend test --yes \
    --chain-id checkers-1
./release/v1/checkersd query gov votes 2
./release/v1/checkersd query gov proposal 2
