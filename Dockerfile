from rustlang/rust:nightly

run apt update && apt upgrade -y && \
    apt install -y clang-19 llvm-19-tools && \
    ln -s /usr/bin/llvm-config-19 /usr/bin/llvm-config

run rustup component add rust-src
run cargo install -f cargo-fuzz
run cargo install -f cargo-afl
