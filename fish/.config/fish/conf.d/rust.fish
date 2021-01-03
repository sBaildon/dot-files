if type -q rustc
        set -x RUST_SRC_PATH (rustc --print sysroot)/lib/rustlib/src/rust/src
end
