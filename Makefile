.PHONY: clippy-fixes clippy-strict

all: lint

lint:
	cargo clippy -- -W clippy::pedantic -W clippy::nursery -W clippy::unwrap_used -W clippy::expect_used -A clippy::module_name_repetitions -A clippy::needless_pass_by_value

run:
	cargo run --features "bevy/dynamic_linking" 

test:
	cargo test 

debug-test:
	RUST_LOG=debug cargo test -- --nocapture

build:
	cargo build

clean:
	cargo clean
