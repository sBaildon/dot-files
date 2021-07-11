if ! type --query rustc
	exit 0
end

set -x RUST_SRC_PATH (rustc --print sysroot)/lib/rustlib/src/rust/src
