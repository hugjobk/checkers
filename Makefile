start:
	ignite chain serve

reset:
	ignite chain serve --reset-once

start-ui:
	cd vue && npm install && npm run dev

export-accounts:
	export alice=$(shell checkersd keys show alice -a)
	export bob=$(shell checkersd keys show bob -a)

mock-expected-keepers:
    mockgen -source=x/checkers/types/expected_keepers.go \
        -package testutil \
        -destination=x/checkers/testutil/expected_keepers_mocks.go
