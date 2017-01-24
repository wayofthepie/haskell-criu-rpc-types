{ nixpkgs ? import <nixpkgs> {}, compiler ? "default" }:

let

  inherit (nixpkgs) pkgs;

  f = { mkDerivation, base, proto-lens, proto-lens-protoc, protobuf
      , stdenv
      }:
      mkDerivation {
        pname = "criu-rpc-types";
        version = "0.0.0.1";
        src = ./.;
        setupHaskellDepends = [ base proto-lens-protoc ];
        libraryHaskellDepends = [ base proto-lens proto-lens-protoc ];
        libraryPkgconfigDepends = [ pkgs.protobuf ];
        homepage = "https://github.com/wayofthepie/haskell-criu-rpc-types";
        description = "Criu RPC protocol buffer types";
        license = stdenv.lib.licenses.mit;
      };

  haskellPackages = if compiler == "default"
                       then pkgs.haskellPackages
                       else pkgs.haskell.packages.${compiler};

  drv = haskellPackages.callPackage f {};

in

  if pkgs.lib.inNixShell then drv.env else drv
