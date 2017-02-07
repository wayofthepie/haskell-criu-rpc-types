
# Haskell CRIU RPC Types and Lenses
[![Hackage](https://img.shields.io/badge/Hackage-0.0.0.2-orange.svg)](https://hackage.haskell.org/package/criu-rpc-types)
[![MIT license](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)

Types and lenses for the CRIU RPC API generated using [proto-lens](https://github.com/google/proto-lens).

# Building
The easiest way to build this project is to install [nix](https://nixos.org/nix/) and run
`nix-shell`. This will launch a shell with all the necessary dependencies installed allowing
you to run `cabal install`.

If you do not want to use nix, the only external dependency needed is the protobuf compiler,
`protoc`, this is in a package called `protobuf` on most systems (see
<https://github.com/google/protobuf>).
