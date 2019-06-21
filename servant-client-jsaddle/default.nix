{ mkDerivation, base, bytestring, case-insensitive, containers
, exceptions, http-media, http-types, jsaddle, jsaddle-dom
, monad-control, mtl, semigroupoids, servant, servant-client-core
, stdenv, string-conversions, text, transformers, transformers-base
}:
mkDerivation {
  pname = "servant-client-jsaddle";
  version = "0.16";
  src = ./.;
  libraryHaskellDepends = [
    base bytestring case-insensitive containers exceptions http-media
    http-types jsaddle jsaddle-dom monad-control mtl semigroupoids
    servant servant-client-core string-conversions text transformers
    transformers-base
  ];
  doHaddock = false;
  jailbreak = true;
  doCheck = false;
  homepage = "http://haskell-servant.readthedocs.org/";
  description = "automatic derivation of querying functions for servant webservices for jsaddle (GHCJS, GHC + WebKit, GHC + websockets, etc)";
  license = stdenv.lib.licenses.bsd3;
}
