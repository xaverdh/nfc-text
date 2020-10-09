{ mkDerivation, base, deepseq, hashable, stdenv, text
, unicode-transforms
}:
mkDerivation {
  pname = "nfc-text";
  version = "0.1.0.0";
  src = ./.;
  libraryHaskellDepends = [
    base deepseq hashable text unicode-transforms
  ];
  description = "NFC normalized text";
  license = stdenv.lib.licenses.mit;
}
