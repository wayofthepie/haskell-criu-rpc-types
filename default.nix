{ mkDerivation, base, proto-lens, proto-lens-protoc, protobuf
, stdenv
}:
mkDerivation {
  pname = "criu-rpc-types";
  version = "0.0.0.2";
  src = ./.;
  setupHaskellDepends = [ base proto-lens-protoc ];
  libraryHaskellDepends = [ base proto-lens proto-lens-protoc ];
  libraryPkgconfigDepends = [ protobuf ];
  homepage = "https://github.com/wayofthepie/haskell-criu-rpc-types";
  description = "Criu RPC protocol buffer types";
  license = stdenv.lib.licenses.mit;
}
