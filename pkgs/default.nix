# Generated using stack2nix 0.1.3.1.
#
# Only works with sufficiently recent nixpkgs, e.g. "NIX_PATH=nixpkgs=https://github.com/NixOS/nixpkgs/archive/21a8239452adae3a4717772f4e490575586b2755.tar.gz".

{ pkgs ? (import <nixpkgs> {})
, compiler ? pkgs.haskell.packages.ghc822
}:

with pkgs.haskell.lib;

let
  stackPackages = { pkgs, stdenv, callPackage }:
    self: {
array = null;
base = null;
bytestring = null;
deepseq = null;
directory = null;
filepath = null;
ghc-boot-th = null;
ghc-prim = null;
integer-gmp = null;
pretty = null;
process = null;
rts = null;
template-haskell = null;
terminfo = null;
time = null;
transformers = null;
unix = null;
"ALUT" = callPackage
({
  mkDerivation
, base
, freealut
, OpenAL
, StateVar
, stdenv
, transformers
}:
mkDerivation {

pname = "ALUT";
version = "2.4.0.2";
sha256 = "b8364da380f5f1d85d13e427851a153be2809e1838d16393e37566f34b384b87";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
base
OpenAL
StateVar
transformers
];
librarySystemDepends = [
freealut
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/haskell-openal/ALUT";
description = "A binding for the OpenAL Utility Toolkit";
license = stdenv.lib.licenses.bsd3;

}) {inherit (pkgs) freealut;};
"ANum" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "ANum";
version = "0.2.0.2";
sha256 = "f6ae0d1b663100a2aa3dfdab12f4af0851408659eb5c2f78b8b443b0d29dbb1a";
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/DanBurton/ANum#readme";
description = "Num instance for Applicatives provided via the ANum newtype";
license = stdenv.lib.licenses.bsd3;

}) {};
"Agda" = callPackage
({
  mkDerivation
, alex
, array
, async
, base
, binary
, blaze-html
, boxes
, bytestring
, containers
, cpphs
, data-hash
, deepseq
, directory
, EdisonCore
, edit-distance
, emacs
, equivalence
, filepath
, geniplate-mirror
, gitrev
, happy
, hashable
, hashtables
, haskeline
, ieee754
, monadplus
, mtl
, murmur-hash
, parallel
, pretty
, process
, regex-tdfa
, stdenv
, stm
, strict
, template-haskell
, text
, time
, transformers
, unordered-containers
, uri-encode
, zlib
}:
mkDerivation {

pname = "Agda";
version = "2.5.3";
sha256 = "aa14d4a3582013100f71e64d71c5deff6caa2a286083e20fc16f6dbb0fdf0065";
revision = "5";
editedCabalFile = "0cly9p549phqv86dlqacxrs2w50y5jmsw21657gpn84ryz3cmjbs";
isLibrary = true;
isExecutable = true;
enableSeparateDataOutput = true;
libraryHaskellDepends = [
array
async
base
binary
blaze-html
boxes
bytestring
containers
data-hash
deepseq
directory
EdisonCore
edit-distance
equivalence
filepath
geniplate-mirror
gitrev
hashable
hashtables
haskeline
ieee754
monadplus
mtl
murmur-hash
parallel
pretty
process
regex-tdfa
stm
strict
template-haskell
text
time
transformers
unordered-containers
uri-encode
zlib
];
libraryToolDepends = [
alex
cpphs
happy
];
executableHaskellDepends = [
base
directory
filepath
process
];
executableToolDepends = [
emacs
];
doHaddock = false;
doCheck = false;
postInstall = ''
  files=("$data/share/ghc-"*"/"*"-ghc-"*"/Agda-"*"/lib/prim/Agda/"{Primitive.agda,Builtin"/"*.agda})
  for f in "''${files[@]}" ; do
    $out/bin/agda $f
  done
  for f in "''${files[@]}" ; do
    $out/bin/agda -c --no-main $f
  done
  $out/bin/agda-mode compile
'';
homepage = "http://wiki.portal.chalmers.se/agda/";
description = "A dependently typed functional programming language and proof assistant";
license = "unknown";

}) {};
"BiobaseNewick" = callPackage
({
  mkDerivation
, aeson
, attoparsec
, base
, binary
, cereal
, cereal-text
, cmdargs
, containers
, fgl
, ForestStructures
, QuickCheck
, stdenv
, text
, text-binary
, vector
}:
mkDerivation {

pname = "BiobaseNewick";
version = "0.0.0.2";
sha256 = "6432f684a75fd8a2cea59a5359a59f48020ead19119efaed7018ecae726d13bd";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
aeson
attoparsec
base
binary
cereal
cereal-text
containers
fgl
ForestStructures
QuickCheck
text
text-binary
vector
];
executableHaskellDepends = [
base
cmdargs
ForestStructures
text
vector
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/choener/BiobaseNewick";
description = "Newick file format parser";
license = stdenv.lib.licenses.bsd3;

}) {};
"Boolean" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "Boolean";
version = "0.2.4";
sha256 = "67216013b02b8ac5b534a1ef25f409f930eea1a85eae801933a01ad43145eef8";
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
description = "Generalized booleans and numbers";
license = stdenv.lib.licenses.bsd3;

}) {};
"BoundedChan" = callPackage
({
  mkDerivation
, array
, base
, stdenv
}:
mkDerivation {

pname = "BoundedChan";
version = "1.0.3.0";
sha256 = "531ceaed7f62844c2a63a7cbfdcab332ea5eaa218e9922ca3305580438adc46d";
libraryHaskellDepends = [
array
base
];
doHaddock = false;
doCheck = false;
description = "Implementation of bounded channels";
license = stdenv.lib.licenses.bsd3;

}) {};
"Cabal" = callPackage
({
  mkDerivation
, array
, base
, binary
, bytestring
, containers
, deepseq
, directory
, filepath
, pretty
, process
, stdenv
, time
, unix
}:
mkDerivation {

pname = "Cabal";
version = "2.0.1.1";
sha256 = "802bc6d0113fdb734ea938ad2aadc14f590e372b55d56be6712de319bb343d1b";
revision = "1";
editedCabalFile = "17ydppw8x5cx5whrs44yxirh7xgcaa6gzvxmlgqnbalcf8wkj23l";
libraryHaskellDepends = [
array
base
binary
bytestring
containers
deepseq
directory
filepath
pretty
process
time
unix
];
doHaddock = false;
doCheck = false;
homepage = "http://www.haskell.org/cabal/";
description = "A framework for packaging Haskell software";
license = stdenv.lib.licenses.bsd3;

}) {};
"ChannelT" = callPackage
({
  mkDerivation
, base
, free
, mmorph
, mtl
, stdenv
, transformers-base
}:
mkDerivation {

pname = "ChannelT";
version = "0.0.0.7";
sha256 = "3e215d425e3cfccf2e4d84b1402fb39a2081cb33b6556059db616e722a7c77a0";
libraryHaskellDepends = [
base
free
mmorph
mtl
transformers-base
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/pthariensflame/ChannelT";
description = "Generalized stream processors";
license = stdenv.lib.licenses.bsd3;

}) {};
"Chart" = callPackage
({
  mkDerivation
, array
, base
, colour
, data-default-class
, lens
, mtl
, old-locale
, operational
, stdenv
, time
, vector
}:
mkDerivation {

pname = "Chart";
version = "1.8.3";
sha256 = "c1c749007245f016d421793b62868651e2222c7bebcd557a6db35eb1a023468f";
revision = "1";
editedCabalFile = "1z4vpzdhphd6qdab73ar7a7yn3x6z4602ffgai2mccc02w5412fl";
libraryHaskellDepends = [
array
base
colour
data-default-class
lens
mtl
old-locale
operational
time
vector
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/timbod7/haskell-chart/wiki";
description = "A library for generating 2D Charts and Plots";
license = stdenv.lib.licenses.bsd3;

}) {};
"Chart-cairo" = callPackage
({
  mkDerivation
, array
, base
, cairo
, Chart
, colour
, data-default-class
, lens
, mtl
, old-locale
, operational
, stdenv
, time
}:
mkDerivation {

pname = "Chart-cairo";
version = "1.8.3";
sha256 = "2455baf9bdfae5955d9844906135eeaaa1043b7762b08a0e5048ec3d6d980195";
libraryHaskellDepends = [
array
base
cairo
Chart
colour
data-default-class
lens
mtl
old-locale
operational
time
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/timbod7/haskell-chart/wiki";
description = "Cairo backend for Charts";
license = stdenv.lib.licenses.bsd3;

}) {};
"ChasingBottoms" = callPackage
({
  mkDerivation
, base
, containers
, mtl
, QuickCheck
, random
, stdenv
, syb
}:
mkDerivation {

pname = "ChasingBottoms";
version = "1.3.1.4";
sha256 = "639867018f33a645305ff60f1bf9ecca2efea4ac630d8c8f9fd72d064db79e19";
libraryHaskellDepends = [
base
containers
mtl
QuickCheck
random
syb
];
doHaddock = false;
doCheck = false;
description = "For testing partial and infinite values";
license = stdenv.lib.licenses.mit;

}) {};
"Clipboard" = callPackage
({
  mkDerivation
, base
, directory
, stdenv
, unix
, utf8-string
, X11
}:
mkDerivation {

pname = "Clipboard";
version = "2.3.2.0";
sha256 = "3f82c8183a599025c5199ba50d0661512683e9cf29e6054858f1abe2ab8b25b7";
libraryHaskellDepends = [
base
directory
unix
utf8-string
X11
];
doHaddock = false;
doCheck = false;
homepage = "http://haskell.org/haskellwiki/Clipboard";
description = "System clipboard interface";
license = stdenv.lib.licenses.bsd3;

}) {};
"ClustalParser" = callPackage
({
  mkDerivation
, base
, cmdargs
, either-unwrap
, parsec
, stdenv
, text
, vector
}:
mkDerivation {

pname = "ClustalParser";
version = "1.2.3";
sha256 = "fed67bdcb9d89d871b02f556e5a294d0ea6fd05576f92621a8797abff4325a72";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
base
parsec
text
vector
];
executableHaskellDepends = [
base
cmdargs
either-unwrap
];
doHaddock = false;
doCheck = false;
description = "Libary for parsing Clustal tools output";
license = stdenv.lib.licenses.gpl3;

}) {};
"ConfigFile" = callPackage
({
  mkDerivation
, base
, containers
, MissingH
, mtl
, parsec
, stdenv
}:
mkDerivation {

pname = "ConfigFile";
version = "1.1.4";
sha256 = "ae087b359ff2945a62b671449227e0a811d143ee651179f4e7e9c66548e0f514";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
base
containers
MissingH
mtl
parsec
];
doHaddock = false;
doCheck = false;
homepage = "http://software.complete.org/configfile";
description = "Configuration file reading & writing";
license = stdenv.lib.licenses.bsd3;

}) {};
"DAV" = callPackage
({
  mkDerivation
, base
, bytestring
, case-insensitive
, containers
, data-default
, exceptions
, haskeline
, http-client
, http-client-tls
, http-types
, lens
, mtl
, network
, network-uri
, optparse-applicative
, stdenv
, transformers
, transformers-base
, transformers-compat
, utf8-string
, xml-conduit
, xml-hamlet
}:
mkDerivation {

pname = "DAV";
version = "1.3.2";
sha256 = "613314357579b29e1d3fa8451b51e8b9a1307a2b33b65a3f2b2ef2bece025169";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
base
bytestring
case-insensitive
containers
data-default
exceptions
http-client
http-client-tls
http-types
lens
mtl
transformers
transformers-base
transformers-compat
utf8-string
xml-conduit
xml-hamlet
];
executableHaskellDepends = [
base
bytestring
case-insensitive
containers
data-default
exceptions
haskeline
http-client
http-client-tls
http-types
lens
mtl
network
network-uri
optparse-applicative
transformers
transformers-base
transformers-compat
utf8-string
xml-conduit
xml-hamlet
];
doHaddock = false;
doCheck = false;
homepage = "http://floss.scru.org/hDAV";
description = "RFC 4918 WebDAV support";
license = stdenv.lib.licenses.gpl3;

}) {};
"DRBG" = callPackage
({
  mkDerivation
, base
, bytestring
, cereal
, cipher-aes128
, crypto-api
, cryptohash-cryptoapi
, entropy
, mtl
, parallel
, prettyclass
, stdenv
, tagged
}:
mkDerivation {

pname = "DRBG";
version = "0.5.5";
sha256 = "21df3202486cc83c7cc3f867cb139eac9a3f69bd91b5f6b016ae026e03c33bfd";
enableSeparateDataOutput = true;
libraryHaskellDepends = [
base
bytestring
cereal
cipher-aes128
crypto-api
cryptohash-cryptoapi
entropy
mtl
parallel
prettyclass
tagged
];
doHaddock = false;
doCheck = false;
description = "Deterministic random bit generator (aka RNG, PRNG) based HMACs, Hashes, and Ciphers";
license = stdenv.lib.licenses.bsd3;

}) {};
"Decimal" = callPackage
({
  mkDerivation
, base
, deepseq
, stdenv
}:
mkDerivation {

pname = "Decimal";
version = "0.5.1";
sha256 = "575ca5c65a8ea5a5bf2cd7b794a0d16622082cb501bf4b0327c5895c0b80f34c";
libraryHaskellDepends = [
base
deepseq
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/PaulJohnson/Haskell-Decimal";
description = "Decimal numbers with variable precision";
license = stdenv.lib.licenses.bsd3;

}) {};
"Diff" = callPackage
({
  mkDerivation
, array
, base
, pretty
, stdenv
}:
mkDerivation {

pname = "Diff";
version = "0.3.4";
sha256 = "77b7daec5a79ade779706748f11b4d9b8f805e57a68e7406c3b5a1dee16e0c2f";
libraryHaskellDepends = [
array
base
pretty
];
doHaddock = false;
doCheck = false;
description = "O(ND) diff algorithm in haskell";
license = stdenv.lib.licenses.bsd3;

}) {};
"Earley" = callPackage
({
  mkDerivation
, base
, ListLike
, stdenv
}:
mkDerivation {

pname = "Earley";
version = "0.12.1.0";
sha256 = "731493be9cb960c3159458dc24b1a217d6f26e1f46a840bef880accd04d5bd1d";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
base
ListLike
];
doHaddock = false;
doCheck = false;
description = "Parsing all context-free grammars using Earley's algorithm";
license = stdenv.lib.licenses.bsd3;

}) {};
"Ebnf2ps" = callPackage
({
  mkDerivation
, array
, base
, containers
, directory
, happy
, old-time
, stdenv
, unix
}:
mkDerivation {

pname = "Ebnf2ps";
version = "1.0.15";
sha256 = "0ecce7d721d6c8993fa6ba6cfb16f1101d85e00bbaf0b6941d36a00badea2b4b";
isLibrary = false;
isExecutable = true;
executableHaskellDepends = [
array
base
containers
directory
old-time
unix
];
executableToolDepends = [
happy
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/FranklinChen/Ebnf2ps";
description = "Peter's Syntax Diagram Drawing Tool";
license = stdenv.lib.licenses.bsd3;

}) {};
"EdisonAPI" = callPackage
({
  mkDerivation
, base
, mtl
, stdenv
}:
mkDerivation {

pname = "EdisonAPI";
version = "1.3.1";
sha256 = "95a3b8d01599520a50456219b5a2e9f7832bcddaaeb8e94ce777bd87a4a6b56e";
libraryHaskellDepends = [
base
mtl
];
doHaddock = false;
doCheck = false;
homepage = "http://rwd.rdockins.name/edison/home/";
description = "A library of efficient, purely-functional data structures (API)";
license = stdenv.lib.licenses.mit;

}) {};
"EdisonCore" = callPackage
({
  mkDerivation
, array
, base
, containers
, EdisonAPI
, mtl
, QuickCheck
, stdenv
}:
mkDerivation {

pname = "EdisonCore";
version = "1.3.2.1";
sha256 = "73c6014d07107a9ed21df76a59f70c9d68d64ac84cced35f7b628f1d792cf239";
libraryHaskellDepends = [
array
base
containers
EdisonAPI
mtl
QuickCheck
];
doHaddock = false;
doCheck = false;
homepage = "http://rwd.rdockins.name/edison/home/";
description = "A library of efficient, purely-functional data structures (Core Implementations)";
license = stdenv.lib.licenses.mit;

}) {};
"FPretty" = callPackage
({
  mkDerivation
, base
, containers
, stdenv
}:
mkDerivation {

pname = "FPretty";
version = "1.1";
sha256 = "b8ac0122e923b0e20cee6ba77ffb07dfeaa96a194cdc1622808e97f443a8eb42";
revision = "1";
editedCabalFile = "0d6mjr7b37f5bgjijjgx4x4fgfmkbhksphzkaf0p5jyzxp45fasc";
libraryHaskellDepends = [
base
containers
];
doHaddock = false;
doCheck = false;
homepage = "http://www.cs.kent.ac.uk/~oc/pretty.html";
description = "Efficient simple pretty printing combinators";
license = stdenv.lib.licenses.bsd3;

}) {};
"FenwickTree" = callPackage
({
  mkDerivation
, base
, QuickCheck
, stdenv
, template-haskell
}:
mkDerivation {

pname = "FenwickTree";
version = "0.1.2.1";
sha256 = "9c172d62b24365e663a0355e8eaa34362a1a769c18a64391939a9b50e384f03c";
enableSeparateDataOutput = true;
libraryHaskellDepends = [
base
QuickCheck
template-haskell
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/mgajda/FenwickTree";
description = "Data structure for fast query and update of cumulative sums";
license = stdenv.lib.licenses.bsd3;

}) {};
"FindBin" = callPackage
({
  mkDerivation
, base
, directory
, filepath
, stdenv
}:
mkDerivation {

pname = "FindBin";
version = "0.0.5";
sha256 = "279c7967e0803ca3b9a0a1956ce7ba9b9a2294eb9f971bea8a557b5f80ddfda4";
libraryHaskellDepends = [
base
directory
filepath
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/audreyt/findbin";
description = "Locate directory of original program";
license = stdenv.lib.licenses.bsd3;

}) {};
"FloatingHex" = callPackage
({
  mkDerivation
, base
, stdenv
, template-haskell
}:
mkDerivation {

pname = "FloatingHex";
version = "0.4";
sha256 = "b277054db48d2dec62e3831586f218cbe0a056dec44dbc032e9a73087425a24c";
libraryHaskellDepends = [
base
template-haskell
];
doHaddock = false;
doCheck = false;
description = "Read and write hexadecimal floating point numbers";
license = stdenv.lib.licenses.bsd3;

}) {};
"FontyFruity" = callPackage
({
  mkDerivation
, base
, binary
, bytestring
, containers
, deepseq
, directory
, filepath
, stdenv
, text
, vector
, xml
}:
mkDerivation {

pname = "FontyFruity";
version = "0.5.3.3";
sha256 = "b0d06e7c5eb1aa7ffd11a85598df05d034bab3a83130fdf37121f89136e0025c";
libraryHaskellDepends = [
base
binary
bytestring
containers
deepseq
directory
filepath
text
vector
xml
];
doHaddock = false;
doCheck = false;
description = "A true type file format loader";
license = stdenv.lib.licenses.bsd3;

}) {};
"ForestStructures" = callPackage
({
  mkDerivation
, base
, containers
, fgl
, QuickCheck
, stdenv
, unordered-containers
, vector
, vector-th-unbox
}:
mkDerivation {

pname = "ForestStructures";
version = "0.0.0.2";
sha256 = "fe74067fee601844de5c839a115f2bd75d4a1be9f0ee8ec42c0150bcf886693f";
libraryHaskellDepends = [
base
containers
fgl
QuickCheck
unordered-containers
vector
vector-th-unbox
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/choener/ForestStructures";
description = "Tree- and forest structures";
license = stdenv.lib.licenses.bsd3;

}) {};
"Frames" = callPackage
({
  mkDerivation
, base
, ghc-prim
, pipes
, pipes-bytestring
, pipes-group
, pipes-parse
, pipes-safe
, pipes-text
, primitive
, readable
, stdenv
, template-haskell
, text
, transformers
, vector
, vinyl
}:
mkDerivation {

pname = "Frames";
version = "0.3.0.2";
sha256 = "26a1b821f1dca29ac25c6c964984cba1cca3db0176c73271b545e2e8dac00da8";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
base
ghc-prim
pipes
pipes-bytestring
pipes-group
pipes-parse
pipes-safe
pipes-text
primitive
readable
template-haskell
text
transformers
vector
vinyl
];
doHaddock = false;
doCheck = false;
description = "Data frames For working with tabular data files";
license = stdenv.lib.licenses.bsd3;

}) {};
"GLFW-b" = callPackage
({
  mkDerivation
, base
, bindings-GLFW
, deepseq
, stdenv
}:
mkDerivation {

pname = "GLFW-b";
version = "1.4.8.3";
sha256 = "3fa532d7ce744ee2d304c3b15633ae3da99d2b43aeac880b4b9883b3a732b705";
libraryHaskellDepends = [
base
bindings-GLFW
deepseq
];
doHaddock = false;
doCheck = false;
description = "Bindings to GLFW OpenGL library";
license = stdenv.lib.licenses.bsd3;

}) {};
"GLURaw" = callPackage
({
  mkDerivation
, base
, libGL
, libGLU
, OpenGLRaw
, stdenv
, transformers
}:
mkDerivation {

pname = "GLURaw";
version = "2.0.0.4";
sha256 = "b863fd5cb26b1a37afb66ef8a81c0335bc073d33b0a67ec5190dfc62cb885dc4";
libraryHaskellDepends = [
base
OpenGLRaw
transformers
];
librarySystemDepends = [
libGL
libGLU
];
doHaddock = false;
doCheck = false;
homepage = "http://www.haskell.org/haskellwiki/Opengl";
description = "A raw binding for the OpenGL graphics system";
license = stdenv.lib.licenses.bsd3;

}) {inherit (pkgs) libGL; inherit (pkgs) libGLU;};
"GLUT" = callPackage
({
  mkDerivation
, array
, base
, containers
, OpenGL
, StateVar
, stdenv
, transformers
}:
mkDerivation {

pname = "GLUT";
version = "2.7.0.13";
sha256 = "3d217c0ee5e040992ebc278f5e20911460202a6e13767c8a0ddb01ef4adabac8";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
array
base
containers
OpenGL
StateVar
transformers
];
doHaddock = false;
doCheck = false;
homepage = "http://www.haskell.org/haskellwiki/Opengl";
description = "A binding for the OpenGL Utility Toolkit";
license = stdenv.lib.licenses.bsd3;

}) {};
"GPipe" = callPackage
({
  mkDerivation
, base
, Boolean
, containers
, exception-transformers
, gl
, hashtables
, linear
, stdenv
, transformers
}:
mkDerivation {

pname = "GPipe";
version = "2.2.3";
sha256 = "77baca8d7a7933d069a3b20d6a16270e8560f1f6aff941c950e71a180e1976a5";
enableSeparateDataOutput = true;
libraryHaskellDepends = [
base
Boolean
containers
exception-transformers
gl
hashtables
linear
transformers
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/tobbebex/GPipe-Core#readme";
description = "Typesafe functional GPU graphics programming";
license = stdenv.lib.licenses.mit;

}) {};
"Genbank" = callPackage
({
  mkDerivation
, base
, biocore
, biofasta
, bytestring
, cmdargs
, parsec
, split
, stdenv
}:
mkDerivation {

pname = "Genbank";
version = "1.0.3";
sha256 = "2baf631ac851b1c29ba531ae1c16b8ba3c4b672bac9d4840a3b9afc0a89d2b93";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
base
biocore
biofasta
bytestring
parsec
split
];
executableHaskellDepends = [
base
cmdargs
];
doHaddock = false;
doCheck = false;
description = "Libary for processing the NCBI genbank format";
license = "GPL";

}) {};
"GenericPretty" = callPackage
({
  mkDerivation
, base
, ghc-prim
, pretty
, stdenv
}:
mkDerivation {

pname = "GenericPretty";
version = "1.2.2";
sha256 = "eeea7ae7081f866de6a83ab8c4c335806b8cbb679d85e416e6224384ffcdae3c";
libraryHaskellDepends = [
base
ghc-prim
pretty
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/RazvanRanca/GenericPretty";
description = "A generic, derivable, haskell pretty printer";
license = stdenv.lib.licenses.bsd3;

}) {};
"Glob" = callPackage
({
  mkDerivation
, base
, containers
, directory
, dlist
, filepath
, stdenv
, transformers
, transformers-compat
}:
mkDerivation {

pname = "Glob";
version = "0.9.2";
sha256 = "8fc7134e9a930dd53fd168f200bde8ca07905365788f70adc6a1a4c413667ce5";
libraryHaskellDepends = [
base
containers
directory
dlist
filepath
transformers
transformers-compat
];
doHaddock = false;
doCheck = false;
homepage = "http://iki.fi/matti.niemenmaa/glob/";
description = "Globbing library";
license = stdenv.lib.licenses.bsd3;

}) {};
"H" = callPackage
({
  mkDerivation
, base
, bytestring
, cmdargs
, file-embed
, inline-r
, pretty
, process
, stdenv
, temporary
, vector
}:
mkDerivation {

pname = "H";
version = "0.9.0.1";
sha256 = "5fc04dfefcac9f6882cea9e65755479f7b1d853618c89258a005df63c8d57134";
isLibrary = false;
isExecutable = true;
executableHaskellDepends = [
base
bytestring
cmdargs
file-embed
inline-r
pretty
process
temporary
vector
];
doHaddock = false;
doCheck = false;
homepage = "https://tweag.github.io/HaskellR";
description = "The Haskell/R mixed programming environment";
license = stdenv.lib.licenses.bsd3;

}) {};
"HCodecs" = callPackage
({
  mkDerivation
, array
, base
, bytestring
, QuickCheck
, random
, semigroups
, stdenv
}:
mkDerivation {

pname = "HCodecs";
version = "0.5.1";
sha256 = "a724616b79ac12c2d661dc3f54cfa0e7d530d1ba3eafa1e6c3e7116e035a3143";
libraryHaskellDepends = [
array
base
bytestring
QuickCheck
random
semigroups
];
doHaddock = false;
doCheck = false;
homepage = "http://www-db.informatik.uni-tuebingen.de/team/giorgidze";
description = "A library to read, write and manipulate MIDI, WAVE, and SoundFont2 files";
license = stdenv.lib.licenses.bsd3;

}) {};
"HDBC" = callPackage
({
  mkDerivation
, base
, bytestring
, containers
, convertible
, mtl
, old-time
, stdenv
, text
, time
, utf8-string
}:
mkDerivation {

pname = "HDBC";
version = "2.4.0.2";
sha256 = "670757fd674b6caf2f456034bdcb54812af2cdf2a32465d7f4b7f0baa377db5a";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
base
bytestring
containers
convertible
mtl
old-time
text
time
utf8-string
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/hdbc/hdbc";
description = "Haskell Database Connectivity";
license = stdenv.lib.licenses.bsd3;

}) {};
"HDBC-mysql" = callPackage
({
  mkDerivation
, base
, bytestring
, Cabal
, HDBC
, mysqlclient
, openssl
, stdenv
, time
, utf8-string
, zlib
}:
mkDerivation {

pname = "HDBC-mysql";
version = "0.7.1.0";
sha256 = "81c985d4a243c965930fb412b3175ca799ba66985f8b6844014fd600df1da7cf";
setupHaskellDepends = [
base
Cabal
];
libraryHaskellDepends = [
base
bytestring
HDBC
time
utf8-string
];
librarySystemDepends = [
mysqlclient
openssl
zlib
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/ryantm/hdbc-mysql";
description = "MySQL driver for HDBC";
license = "LGPL";

}) {inherit (pkgs) mysqlclient; inherit (pkgs) openssl;
inherit (pkgs) zlib;};
"HDBC-session" = callPackage
({
  mkDerivation
, base
, HDBC
, stdenv
}:
mkDerivation {

pname = "HDBC-session";
version = "0.1.1.1";
sha256 = "255c4e55f888c873bfa6f9af25ccb7fb0eb004f398b86b74ed7878d39c59ce99";
libraryHaskellDepends = [
base
HDBC
];
doHaddock = false;
doCheck = false;
homepage = "http://khibino.github.io/haskell-relational-record/";
description = "Bracketed connection for HDBC";
license = stdenv.lib.licenses.bsd3;

}) {};
"HPDF" = callPackage
({
  mkDerivation
, array
, base
, base64-bytestring
, binary
, bytestring
, containers
, errors
, mtl
, random
, stdenv
, vector
, zlib
}:
mkDerivation {

pname = "HPDF";
version = "1.4.10";
sha256 = "de2bfddd93eeef2129a2378e8dce486d086bec3c48ee2a1bf1a5fb01581607d4";
libraryHaskellDepends = [
array
base
base64-bytestring
binary
bytestring
containers
errors
mtl
random
vector
zlib
];
doHaddock = false;
doCheck = false;
homepage = "http://www.alpheccar.org";
description = "Generation of PDF documents";
license = stdenv.lib.licenses.bsd3;

}) {};
"HSet" = callPackage
({
  mkDerivation
, base
, containers
, hashable
, hashtables
, stdenv
}:
mkDerivation {

pname = "HSet";
version = "0.0.1";
sha256 = "eba93be5a76581585ae33af6babe9c2718fae307d41989cd36a605d9b0e8d16a";
libraryHaskellDepends = [
base
containers
hashable
hashtables
];
doHaddock = false;
doCheck = false;
description = "Faux heterogeneous sets";
license = stdenv.lib.licenses.bsd3;

}) {};
"HSlippyMap" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "HSlippyMap";
version = "3.0.1";
sha256 = "27eb37f3b1e70780173e732a949776fc0b0ecc5b1ba515c2e239d6545a2beb0d";
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/apeyroux/HSlippyMap";
description = "OpenStreetMap Slippy Map";
license = stdenv.lib.licenses.bsd3;

}) {};
"HStringTemplate" = callPackage
({
  mkDerivation
, array
, base
, blaze-builder
, bytestring
, containers
, deepseq
, directory
, filepath
, mtl
, old-locale
, parsec
, pretty
, semigroups
, stdenv
, syb
, template-haskell
, text
, time
, void
}:
mkDerivation {

pname = "HStringTemplate";
version = "0.8.7";
sha256 = "4f4ea4aa2e45e7c45821b87b0105c201fbadebc2f2d00c211e728403a0af6b0e";
libraryHaskellDepends = [
array
base
blaze-builder
bytestring
containers
deepseq
directory
filepath
mtl
old-locale
parsec
pretty
semigroups
syb
template-haskell
text
time
void
];
doHaddock = false;
doCheck = false;
description = "StringTemplate implementation in Haskell";
license = stdenv.lib.licenses.bsd3;

}) {};
"HSvm" = callPackage
({
  mkDerivation
, base
, containers
, stdenv
}:
mkDerivation {

pname = "HSvm";
version = "0.1.0.3.22";
sha256 = "8dac8a583c762675f2d64138303618f017d6be95d59e60774ea7cbfc040dab04";
libraryHaskellDepends = [
base
containers
];
doHaddock = false;
doCheck = false;
description = "Haskell Bindings for libsvm";
license = stdenv.lib.licenses.bsd3;

}) {};
"HTF" = callPackage
({
  mkDerivation
, aeson
, array
, base
, base64-bytestring
, bytestring
, containers
, cpphs
, Diff
, directory
, haskell-src
, HUnit
, lifted-base
, monad-control
, mtl
, old-time
, pretty
, process
, QuickCheck
, random
, regex-compat
, stdenv
, text
, time
, unix
, vector
, xmlgen
}:
mkDerivation {

pname = "HTF";
version = "0.13.2.4";
sha256 = "36c5cafd35683c37379a93098dea61e6194aa1b9cfd0cdad4e0f1643f4cf2bf6";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
aeson
array
base
base64-bytestring
bytestring
containers
cpphs
Diff
directory
haskell-src
HUnit
lifted-base
monad-control
mtl
old-time
pretty
process
QuickCheck
random
regex-compat
text
time
unix
vector
xmlgen
];
executableHaskellDepends = [
array
base
cpphs
directory
HUnit
mtl
old-time
random
text
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/skogsbaer/HTF/";
description = "The Haskell Test Framework";
license = stdenv.lib.licenses.lgpl21;

}) {};
"HTTP" = callPackage
({
  mkDerivation
, array
, base
, bytestring
, mtl
, network
, network-uri
, parsec
, stdenv
, time
}:
mkDerivation {

pname = "HTTP";
version = "4000.3.11";
sha256 = "fad22b39d8027107158407a3af73907dbb66e403d9aa7b9fd778db171c65b645";
libraryHaskellDepends = [
array
base
bytestring
mtl
network
network-uri
parsec
time
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/haskell/HTTP";
description = "A library for client-side HTTP";
license = stdenv.lib.licenses.bsd3;

}) {};
"HUnit" = callPackage
({
  mkDerivation
, base
, call-stack
, deepseq
, stdenv
}:
mkDerivation {

pname = "HUnit";
version = "1.6.0.0";
sha256 = "7448e6b966e98e84b7627deba23f71b508e9a61e7bc571d74304a25d30e6d0de";
libraryHaskellDepends = [
base
call-stack
deepseq
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/hspec/HUnit#readme";
description = "A unit testing framework for Haskell";
license = stdenv.lib.licenses.bsd3;

}) {};
"HUnit-approx" = callPackage
({
  mkDerivation
, base
, call-stack
, HUnit
, stdenv
}:
mkDerivation {

pname = "HUnit-approx";
version = "1.1.1.1";
sha256 = "4a4327d328bb8b944c73ec211dd29e953e477f99fd3f9e28fe5200f02fa62baf";
libraryHaskellDepends = [
base
call-stack
HUnit
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/goldfirere/HUnit-approx";
description = "Approximate equality for floating point numbers with HUnit";
license = stdenv.lib.licenses.bsd3;

}) {};
"HaTeX" = callPackage
({
  mkDerivation
, base
, bytestring
, containers
, hashable
, matrix
, parsec
, QuickCheck
, stdenv
, text
, transformers
, wl-pprint-extras
}:
mkDerivation {

pname = "HaTeX";
version = "3.18.0.0";
sha256 = "5fa2313670a30afdc4d0c9334ffe996535936d493b835a26ac103d5f909d818f";
libraryHaskellDepends = [
base
bytestring
containers
hashable
matrix
parsec
QuickCheck
text
transformers
wl-pprint-extras
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/Daniel-Diaz/HaTeX/blob/master/README.md";
description = "The Haskell LaTeX library";
license = stdenv.lib.licenses.bsd3;

}) {};
"HaXml" = callPackage
({
  mkDerivation
, base
, bytestring
, containers
, directory
, filepath
, polyparse
, pretty
, random
, stdenv
}:
mkDerivation {

pname = "HaXml";
version = "1.25.4";
sha256 = "d77467b8c855ba85d900b5d1a9b771aa498c80d570f9ac60a9f10803cfc01db5";
revision = "1";
editedCabalFile = "1vnil3xdyhr48f0nxcaljbl1k5ibg5g5gghvrhykg447b0jvp922";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
base
bytestring
containers
filepath
polyparse
pretty
random
];
executableHaskellDepends = [
base
directory
polyparse
pretty
];
doHaddock = false;
doCheck = false;
homepage = "http://projects.haskell.org/HaXml/";
description = "Utilities for manipulating XML documents";
license = "LGPL";

}) {};
"HandsomeSoup" = callPackage
({
  mkDerivation
, base
, containers
, HTTP
, hxt
, hxt-http
, mtl
, network
, network-uri
, parsec
, stdenv
, transformers
}:
mkDerivation {

pname = "HandsomeSoup";
version = "0.4.2";
sha256 = "0ae2dad3fbde1efee9e45b84b2aeb5b526cc7b3ea2cbc5715494f7bde3ceeefb";
isLibrary = true;
isExecutable = true;
enableSeparateDataOutput = true;
libraryHaskellDepends = [
base
containers
HTTP
hxt
hxt-http
mtl
network
network-uri
parsec
transformers
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/egonSchiele/HandsomeSoup";
description = "Work with HTML more easily in HXT";
license = stdenv.lib.licenses.bsd3;

}) {};
"HaskellNet" = callPackage
({
  mkDerivation
, array
, base
, base64-string
, bytestring
, cryptohash
, mime-mail
, mtl
, network
, old-time
, pretty
, stdenv
, text
}:
mkDerivation {

pname = "HaskellNet";
version = "0.5.1";
sha256 = "3245d31ad76f9f9013a2f6e2285d73ed37376eeb073c100b9a6d19e87f0ca838";
libraryHaskellDepends = [
array
base
base64-string
bytestring
cryptohash
mime-mail
mtl
network
old-time
pretty
text
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/jtdaugherty/HaskellNet";
description = "Client support for POP3, SMTP, and IMAP";
license = stdenv.lib.licenses.bsd3;

}) {};
"HaskellNet-SSL" = callPackage
({
  mkDerivation
, base
, bytestring
, connection
, data-default
, HaskellNet
, network
, stdenv
, tls
}:
mkDerivation {

pname = "HaskellNet-SSL";
version = "0.3.4.0";
sha256 = "83ae92547fd5d52b5b74402101ec254423abeac0c0725e14a112d6ffc843040f";
enableSeparateDataOutput = true;
libraryHaskellDepends = [
base
bytestring
connection
data-default
HaskellNet
network
tls
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/dpwright/HaskellNet-SSL";
description = "Helpers to connect to SSL/TLS mail servers with HaskellNet";
license = stdenv.lib.licenses.bsd3;

}) {};
"Hclip" = callPackage
({
  mkDerivation
, base
, mtl
, process
, stdenv
, strict
}:
mkDerivation {

pname = "Hclip";
version = "3.0.0.4";
sha256 = "d8c80bd2d035571cd76ce4f69453e9fcef4096dbc8868eb4cfcd7eb74fe5f712";
libraryHaskellDepends = [
base
mtl
process
strict
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/jetho/Hclip";
description = "A small cross-platform library for reading and modifying the system clipboard";
license = stdenv.lib.licenses.bsd3;

}) {};
"Hoed" = callPackage
({
  mkDerivation
, array
, base
, bytestring
, cereal
, cereal-text
, cereal-vector
, clock
, containers
, deepseq
, directory
, hashable
, libgraph
, open-browser
, primitive
, process
, QuickCheck
, regex-tdfa
, regex-tdfa-text
, semigroups
, stdenv
, strict
, template-haskell
, terminal-size
, text
, transformers
, uniplate
, unordered-containers
, vector
, vector-th-unbox
}:
mkDerivation {

pname = "Hoed";
version = "0.5.1";
sha256 = "a8f6dc9717e15642f00cd84a8d1030ac6a7c7870f7015e380bd728a843c3f4e7";
libraryHaskellDepends = [
array
base
bytestring
cereal
cereal-text
cereal-vector
clock
containers
deepseq
directory
hashable
libgraph
open-browser
primitive
process
QuickCheck
regex-tdfa
regex-tdfa-text
semigroups
strict
template-haskell
terminal-size
text
transformers
uniplate
unordered-containers
vector
vector-th-unbox
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/MaartenFaddegon/Hoed";
description = "Lightweight algorithmic debugging";
license = stdenv.lib.licenses.bsd3;

}) {};
"HsOpenSSL" = callPackage
({
  mkDerivation
, base
, bytestring
, Cabal
, integer-gmp
, network
, openssl
, stdenv
, time
}:
mkDerivation {

pname = "HsOpenSSL";
version = "0.11.4.13";
sha256 = "125cd16f3db36ed102fe8748e474eaca69dbc57ee8794e29863c69d0a47fff47";
setupHaskellDepends = [
base
Cabal
];
libraryHaskellDepends = [
base
bytestring
integer-gmp
network
time
];
librarySystemDepends = [
openssl
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/vshabanov/HsOpenSSL";
description = "Partial OpenSSL binding for Haskell";
license = stdenv.lib.licenses.publicDomain;

}) {inherit (pkgs) openssl;};
"HsOpenSSL-x509-system" = callPackage
({
  mkDerivation
, base
, bytestring
, HsOpenSSL
, stdenv
, unix
}:
mkDerivation {

pname = "HsOpenSSL-x509-system";
version = "0.1.0.3";
sha256 = "5bdcb7ae2faba07a374109fea0a1431ae09d080f8574e60ab7a351b46f931f92";
libraryHaskellDepends = [
base
bytestring
HsOpenSSL
unix
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/redneb/HsOpenSSL-x509-system";
description = "Use the system's native CA certificate store with HsOpenSSL";
license = stdenv.lib.licenses.bsd3;

}) {};
"IPv6Addr" = callPackage
({
  mkDerivation
, aeson
, attoparsec
, base
, iproute
, network
, network-info
, random
, stdenv
, text
}:
mkDerivation {

pname = "IPv6Addr";
version = "1.0.3";
sha256 = "4904b71a74b825324e7510147a6fe393940dc32693d54c2f7c2ecf14f130739d";
libraryHaskellDepends = [
aeson
attoparsec
base
iproute
network
network-info
random
text
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/MichelBoucey/IPv6Addr";
description = "Library to deal with IPv6 address text representations";
license = stdenv.lib.licenses.bsd3;

}) {};
"IPv6DB" = callPackage
({
  mkDerivation
, aeson
, attoparsec
, base
, bytestring
, fast-logger
, hedis
, http-types
, IPv6Addr
, mtl
, optparse-applicative
, stdenv
, text
, unordered-containers
, vector
, wai
, wai-logger
, warp
}:
mkDerivation {

pname = "IPv6DB";
version = "0.2.6";
sha256 = "a409d591750d7cf9a983d2ea116198fa80c1f248fa91078adb8edbaa06de50b7";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
aeson
attoparsec
base
bytestring
hedis
http-types
IPv6Addr
mtl
text
unordered-containers
vector
];
executableHaskellDepends = [
aeson
base
bytestring
fast-logger
hedis
http-types
IPv6Addr
mtl
optparse-applicative
text
unordered-containers
vector
wai
wai-logger
warp
];
doHaddock = false;
doCheck = false;
homepage = "http://ipv6db.cybervisible.com";
description = "A RESTful Web Service for IPv6-related data";
license = stdenv.lib.licenses.bsd3;

}) {};
"Imlib" = callPackage
({
  mkDerivation
, array
, base
, imlib2
, stdenv
, X11
}:
mkDerivation {

pname = "Imlib";
version = "0.1.2";
sha256 = "3ed318a7777a3b0752327b7b128edb3a1d562202b480a6d6b793b79ed90ebd1c";
libraryHaskellDepends = [
array
base
X11
];
librarySystemDepends = [
imlib2
];
doHaddock = false;
doCheck = false;
license = stdenv.lib.licenses.bsd3;

}) {inherit (pkgs) imlib2;};
"IntervalMap" = callPackage
({
  mkDerivation
, base
, containers
, deepseq
, stdenv
}:
mkDerivation {

pname = "IntervalMap";
version = "0.5.3.1";
sha256 = "9a575459f66ad48b734ca79885b599ab5a5eed800bb409b11f08c8a7d53f8c21";
libraryHaskellDepends = [
base
containers
deepseq
];
doHaddock = false;
doCheck = false;
homepage = "http://www.chr-breitkopf.de/comp/IntervalMap";
description = "Containers for intervals, with efficient search";
license = stdenv.lib.licenses.bsd3;

}) {};
"JuicyPixels" = callPackage
({
  mkDerivation
, base
, binary
, bytestring
, containers
, deepseq
, mtl
, primitive
, stdenv
, transformers
, vector
, zlib
}:
mkDerivation {

pname = "JuicyPixels";
version = "3.2.9.5";
sha256 = "849c6cf4a613f906f7e553a1baefe9c0dc61c13b41a5f5b9605cf80e328cc355";
libraryHaskellDepends = [
base
binary
bytestring
containers
deepseq
mtl
primitive
transformers
vector
zlib
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/Twinside/Juicy.Pixels";
description = "Picture loading/serialization (in png, jpeg, bitmap, gif, tga, tiff and radiance)";
license = stdenv.lib.licenses.bsd3;

}) {};
"JuicyPixels-extra" = callPackage
({
  mkDerivation
, base
, JuicyPixels
, stdenv
}:
mkDerivation {

pname = "JuicyPixels-extra";
version = "0.3.0";
sha256 = "c5a03a9747bcd984924d6f7c9b4771188e297df82160e7d667ea8f4f671b0e22";
revision = "1";
editedCabalFile = "17y0d11hgdnzcgv7q7zl3wic2w2xhqn123vzfsdivncgdgqlvy0c";
enableSeparateDataOutput = true;
libraryHaskellDepends = [
base
JuicyPixels
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/mrkkrp/JuicyPixels-extra";
description = "Efficiently scale, crop, flip images with JuicyPixels";
license = stdenv.lib.licenses.bsd3;

}) {};
"JuicyPixels-scale-dct" = callPackage
({
  mkDerivation
, base
, base-compat
, carray
, fft
, JuicyPixels
, stdenv
}:
mkDerivation {

pname = "JuicyPixels-scale-dct";
version = "0.1.2";
sha256 = "f7381b88446224897e6677692bbdc39cb5b755216212f0ad8050046865cd3013";
libraryHaskellDepends = [
base
base-compat
carray
fft
JuicyPixels
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/phadej/JuicyPixels-scale-dct#readme";
description = "Scale JuicyPixels images with DCT";
license = stdenv.lib.licenses.bsd3;

}) {};
"LibZip" = callPackage
({
  mkDerivation
, base
, bindings-libzip
, bytestring
, filepath
, mtl
, stdenv
, time
, utf8-string
}:
mkDerivation {

pname = "LibZip";
version = "1.0.1";
sha256 = "a636e0202d2a3f60d894a814bd9834cf8c62313b67ccc48c295f02a4bebe425f";
libraryHaskellDepends = [
base
bindings-libzip
bytestring
filepath
mtl
time
utf8-string
];
doHaddock = false;
doCheck = false;
homepage = "http://bitbucket.org/astanin/hs-libzip/";
description = "Bindings to libzip, a library for manipulating zip archives";
license = stdenv.lib.licenses.bsd3;

}) {};
"List" = callPackage
({
  mkDerivation
, base
, stdenv
, transformers
}:
mkDerivation {

pname = "List";
version = "0.6.2";
sha256 = "c4b92be1202fc59112018f76d5b17cd3a659ebc36384a46e000ab2fbaf99b878";
revision = "1";
editedCabalFile = "11ws93cdzz7k4nvcld2d74155mdgcvyi6f6an7gpf9z4k523c11n";
libraryHaskellDepends = [
base
transformers
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/yairchu/generator";
description = "List monad transformer and class";
license = stdenv.lib.licenses.bsd3;

}) {};
"ListLike" = callPackage
({
  mkDerivation
, array
, base
, bytestring
, containers
, deepseq
, dlist
, fmlist
, semigroups
, stdenv
, text
, utf8-string
, vector
}:
mkDerivation {

pname = "ListLike";
version = "4.6";
sha256 = "c1cdec79a5f585a5839eea26a2afe6a37aab5ed2f402a16e7d59fe9a4e925a9a";
libraryHaskellDepends = [
array
base
bytestring
containers
deepseq
dlist
fmlist
semigroups
text
utf8-string
vector
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/JohnLato/listlike";
description = "Generic support for list-like structures";
license = stdenv.lib.licenses.bsd3;

}) {};
"MFlow" = callPackage
({
  mkDerivation
, base
, blaze-html
, blaze-markup
, bytestring
, case-insensitive
, clientsession
, conduit
, conduit-extra
, containers
, cpphs
, directory
, extensible-exceptions
, http-types
, monadloc
, mtl
, old-time
, parsec
, pwstore-fast
, random
, RefSerialize
, resourcet
, stdenv
, stm
, TCache
, text
, time
, transformers
, utf8-string
, vector
, wai
, wai-extra
, warp
, warp-tls
, Workflow
}:
mkDerivation {

pname = "MFlow";
version = "0.4.6.0";
sha256 = "4e93f7488152d88359fd100a742c2ea96788284d262f3cd1b50d936f80f1a342";
libraryHaskellDepends = [
base
blaze-html
blaze-markup
bytestring
case-insensitive
clientsession
conduit
conduit-extra
containers
directory
extensible-exceptions
http-types
monadloc
mtl
old-time
parsec
pwstore-fast
random
RefSerialize
resourcet
stm
TCache
text
time
transformers
utf8-string
vector
wai
wai-extra
warp
warp-tls
Workflow
];
libraryToolDepends = [
cpphs
];
doHaddock = false;
doCheck = false;
description = "stateful, RESTful web framework";
license = stdenv.lib.licenses.bsd3;

}) {};
"MemoTrie" = callPackage
({
  mkDerivation
, base
, newtype-generics
, stdenv
}:
mkDerivation {

pname = "MemoTrie";
version = "0.6.9";
sha256 = "1d6045b8fdf7b89ed6b495e535613f5091cdfc9cdfe05a862207e76ce205f794";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
base
newtype-generics
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/conal/MemoTrie";
description = "Trie-based memo functions";
license = stdenv.lib.licenses.bsd3;

}) {};
"MissingH" = callPackage
({
  mkDerivation
, array
, base
, containers
, directory
, filepath
, hslogger
, HUnit
, mtl
, network
, old-locale
, old-time
, parsec
, process
, random
, regex-compat
, stdenv
, time
, unix
}:
mkDerivation {

pname = "MissingH";
version = "1.4.0.1";
sha256 = "283f2afd46625d98b4e29f77edadfa5e6009a227812ee2ece10091ad6a7e9b71";
libraryHaskellDepends = [
array
base
containers
directory
filepath
hslogger
HUnit
mtl
network
old-locale
old-time
parsec
process
random
regex-compat
time
unix
];
doHaddock = false;
doCheck = false;
homepage = "http://software.complete.org/missingh";
description = "Large utility library";
license = stdenv.lib.licenses.bsd3;

}) {};
"MonadPrompt" = callPackage
({
  mkDerivation
, base
, mtl
, stdenv
}:
mkDerivation {

pname = "MonadPrompt";
version = "1.0.0.5";
sha256 = "b012cbbe83650f741c7b7f6eafcc89dec299b0ac74a758b6f3a8cdfc5d3bbeda";
libraryHaskellDepends = [
base
mtl
];
doHaddock = false;
doCheck = false;
description = "MonadPrompt, implementation & examples";
license = stdenv.lib.licenses.bsd3;

}) {};
"MonadRandom" = callPackage
({
  mkDerivation
, base
, fail
, mtl
, primitive
, random
, stdenv
, transformers
, transformers-compat
}:
mkDerivation {

pname = "MonadRandom";
version = "0.5.1";
sha256 = "9e3f0f92807285302036dc504066ae6d968c8b0b4c25d9360888f31fe1730d87";
revision = "1";
editedCabalFile = "19242r11a7iqr8dnbxsac04c3ylh7xkan70pdv5k3jzcmfwn4shd";
libraryHaskellDepends = [
base
fail
mtl
primitive
random
transformers
transformers-compat
];
doHaddock = false;
doCheck = false;
description = "Random-number generation monad";
license = stdenv.lib.licenses.bsd3;

}) {};
"Network-NineP" = callPackage
({
  mkDerivation
, base
, binary
, bytestring
, containers
, convertible
, exceptions
, hslogger
, monad-loops
, monad-peel
, mstate
, mtl
, network
, NineP
, regex-posix
, stateref
, stdenv
, transformers
}:
mkDerivation {

pname = "Network-NineP";
version = "0.4.3";
sha256 = "8169e46ddfd690b96f25bc9a577568a363a270c2bddbb9fb3e1e7f1959644ec3";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
base
binary
bytestring
containers
convertible
exceptions
hslogger
monad-loops
monad-peel
mstate
mtl
network
NineP
regex-posix
stateref
transformers
];
doHaddock = false;
doCheck = false;
description = "High-level abstraction over 9P protocol";
license = "unknown";

}) {};
"NineP" = callPackage
({
  mkDerivation
, base
, binary
, stdenv
}:
mkDerivation {

pname = "NineP";
version = "0.0.2.1";
sha256 = "4bb1516b9fb340118960043e0c72aa62316be8ff3f78cc8c1354e2fac96dd8cc";
libraryHaskellDepends = [
base
binary
];
doHaddock = false;
doCheck = false;
homepage = "http://9ph.googlecode.com";
description = "9P2000 in pure Haskell";
license = stdenv.lib.licenses.bsd3;

}) {};
"NoHoed" = callPackage
({
  mkDerivation
, base
, stdenv
, template-haskell
}:
mkDerivation {

pname = "NoHoed";
version = "0.1.1";
sha256 = "9b663a234c034e0049126ae7f06d1756dc496012177bf18548c6d8caeec43b3d";
libraryHaskellDepends = [
base
template-haskell
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/pepeiborra/NoHoed";
description = "Placeholder package to preserve debug ability via conditional builds";
license = stdenv.lib.licenses.bsd3;

}) {};
"NoTrace" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "NoTrace";
version = "0.3.0.2";
sha256 = "39ea78488aa2a172691b2d97b3bc6673a423f1eb0c184381da546de61d94125b";
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/CindyLinz/Haskell-NoTrace";
description = "Remove all the functions come from Debug.Trace after debugging";
license = stdenv.lib.licenses.mit;

}) {};
"NumInstances" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "NumInstances";
version = "1.4";
sha256 = "cbdb2a49346f59ceb5ab38592d7bc52e5205580d431d0ac6d852fd9880e59679";
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/conal/NumInstances";
description = "Instances of numeric classes for functions and tuples";
license = stdenv.lib.licenses.bsd3;

}) {};
"ObjectName" = callPackage
({
  mkDerivation
, base
, stdenv
, transformers
}:
mkDerivation {

pname = "ObjectName";
version = "1.1.0.1";
sha256 = "72dbef237580fd4e8567de2de752835bbadd3629f486d1586486d49a49aad210";
libraryHaskellDepends = [
base
transformers
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/svenpanne/ObjectName";
description = "Explicitly handled object names";
license = stdenv.lib.licenses.bsd3;

}) {};
"OneTuple" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "OneTuple";
version = "0.2.2";
sha256 = "d82e702485bcbdefbda0d12b6a250d318a269572ee58d63b60eee531e56624dc";
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
description = "Singleton Tuple";
license = stdenv.lib.licenses.bsd3;

}) {};
"Only" = callPackage
({
  mkDerivation
, base
, deepseq
, stdenv
}:
mkDerivation {

pname = "Only";
version = "0.1";
sha256 = "ab7aa193e8c257d3bda6b0b3c1cbcf74cdaa85ab08cb20c2dd62ba248c1ab265";
revision = "1";
editedCabalFile = "1ahk7p34kmh041mz7lyc10nhcxgv2i4z8nvzxvqm2x34gslmsbzr";
libraryHaskellDepends = [
base
deepseq
];
doHaddock = false;
doCheck = false;
description = "The 1-tuple type or single-value \"collection\"";
license = stdenv.lib.licenses.bsd3;

}) {};
"OpenAL" = callPackage
({
  mkDerivation
, base
, ObjectName
, openal
, OpenGL
, StateVar
, stdenv
, transformers
}:
mkDerivation {

pname = "OpenAL";
version = "1.7.0.4";
sha256 = "3989f6c4fe437843551004dd011c4308bf63d787ae4fbb8ce71d44b1b0b1f118";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
base
ObjectName
OpenGL
StateVar
transformers
];
librarySystemDepends = [
openal
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/haskell-openal/ALUT";
description = "A binding to the OpenAL cross-platform 3D audio API";
license = stdenv.lib.licenses.bsd3;

}) {inherit (pkgs) openal;};
"OpenGL" = callPackage
({
  mkDerivation
, base
, bytestring
, containers
, GLURaw
, ObjectName
, OpenGLRaw
, StateVar
, stdenv
, text
, transformers
}:
mkDerivation {

pname = "OpenGL";
version = "3.0.2.1";
sha256 = "7acb891b911de8bb6933afeaa7f8c5291cc986da5557c922c0fc1717c5a559bf";
libraryHaskellDepends = [
base
bytestring
containers
GLURaw
ObjectName
OpenGLRaw
StateVar
text
transformers
];
doHaddock = false;
doCheck = false;
homepage = "http://www.haskell.org/haskellwiki/Opengl";
description = "A binding for the OpenGL graphics system";
license = stdenv.lib.licenses.bsd3;

}) {};
"OpenGLRaw" = callPackage
({
  mkDerivation
, base
, bytestring
, containers
, fixed
, half
, libGL
, stdenv
, text
, transformers
}:
mkDerivation {

pname = "OpenGLRaw";
version = "3.2.7.0";
sha256 = "62723d0fc287e5e5e93853b1fed0ca76495e6b693261aa9aae35340182a58a08";
libraryHaskellDepends = [
base
bytestring
containers
fixed
half
text
transformers
];
librarySystemDepends = [
libGL
];
doHaddock = false;
doCheck = false;
homepage = "http://www.haskell.org/haskellwiki/Opengl";
description = "A raw binding for the OpenGL graphics system";
license = stdenv.lib.licenses.bsd3;

}) {inherit (pkgs) libGL;};
"PSQueue" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "PSQueue";
version = "1.1";
sha256 = "a8e0871ad10f916f55c3b9baec53eff23c4e97e09cf96d6c66771789e00a49cc";
revision = "1";
editedCabalFile = "0gpx33bkhpwya7prnqzwpbnylm4v4nm4x8m02ggmj7d6rkklb2qq";
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
description = "Priority Search Queue";
license = stdenv.lib.licenses.bsd3;

}) {};
"ParsecTools" = callPackage
({
  mkDerivation
, base
, parsec
, stdenv
}:
mkDerivation {

pname = "ParsecTools";
version = "0.0.2.0";
sha256 = "ef4843353127aa3e6f6ab0aece9f4245225d375802921e151a1751d797857a87";
libraryHaskellDepends = [
base
parsec
];
doHaddock = false;
doCheck = false;
description = "Parsec combinators for more complex objects";
license = stdenv.lib.licenses.gpl3;

}) {};
"PortMidi" = callPackage
({
  mkDerivation
, alsaLib
, base
, stdenv
}:
mkDerivation {

pname = "PortMidi";
version = "0.1.6.1";
sha256 = "b89e9293d5b80d23b197dbb9bf196737765c66ffe96eaabdb9517fe20b516690";
libraryHaskellDepends = [
base
];
librarySystemDepends = [
alsaLib
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/ninegua/PortMidi";
description = "A binding for PortMedia/PortMidi";
license = stdenv.lib.licenses.bsd3;

}) {inherit (pkgs) alsaLib;};
"QuasiText" = callPackage
({
  mkDerivation
, attoparsec
, base
, haskell-src-meta
, stdenv
, template-haskell
, text
, th-lift-instances
}:
mkDerivation {

pname = "QuasiText";
version = "0.1.2.6";
sha256 = "e801d269e25263645ee66fc090040fe9b9c8a8e5bf10485801dd7a5a30e0f119";
libraryHaskellDepends = [
attoparsec
base
haskell-src-meta
template-haskell
text
th-lift-instances
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/mikeplus64/QuasiText";
description = "A QuasiQuoter for Text";
license = stdenv.lib.licenses.bsd3;

}) {};
"QuickCheck" = callPackage
({
  mkDerivation
, base
, containers
, deepseq
, random
, stdenv
, template-haskell
, tf-random
, transformers
}:
mkDerivation {

pname = "QuickCheck";
version = "2.10.1";
sha256 = "1dbb56786854fd539315497086284dfff039a52a487319e648140e4987b6d5e5";
libraryHaskellDepends = [
base
containers
deepseq
random
template-haskell
tf-random
transformers
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/nick8325/quickcheck";
description = "Automatic testing of Haskell programs";
license = stdenv.lib.licenses.bsd3;

}) {};
"RSA" = callPackage
({
  mkDerivation
, base
, binary
, bytestring
, crypto-api
, crypto-pubkey-types
, SHA
, stdenv
}:
mkDerivation {

pname = "RSA";
version = "2.3.0";
sha256 = "eee76dc7f9dd2d2cdeb014af728ff56f2f5d2908212bd3bb8c5e89f5c6485333";
libraryHaskellDepends = [
base
binary
bytestring
crypto-api
crypto-pubkey-types
SHA
];
doHaddock = false;
doCheck = false;
description = "Implementation of RSA, using the padding schemes of PKCS#1 v2.1.";
license = stdenv.lib.licenses.bsd3;

}) {};
"Rasterific" = callPackage
({
  mkDerivation
, base
, bytestring
, containers
, dlist
, FontyFruity
, free
, JuicyPixels
, mtl
, primitive
, stdenv
, transformers
, vector
, vector-algorithms
}:
mkDerivation {

pname = "Rasterific";
version = "0.7.3";
sha256 = "fd0a8770acaf2c594b64aafd15e8288ec5af370d901ac03a933b642deb802279";
libraryHaskellDepends = [
base
bytestring
containers
dlist
FontyFruity
free
JuicyPixels
mtl
primitive
transformers
vector
vector-algorithms
];
doHaddock = false;
doCheck = false;
description = "A pure haskell drawing engine";
license = stdenv.lib.licenses.bsd3;

}) {};
"RefSerialize" = callPackage
({
  mkDerivation
, base
, binary
, bytestring
, containers
, hashtables
, stdenv
, stringsearch
}:
mkDerivation {

pname = "RefSerialize";
version = "0.4.0";
sha256 = "05b25eb1ab943d96119aa2acca678fc8f194c3411af521e3835f4de5c752bbb2";
libraryHaskellDepends = [
base
binary
bytestring
containers
hashtables
stringsearch
];
doHaddock = false;
doCheck = false;
description = "Write to and read from ByteStrings maintaining internal memory references";
license = stdenv.lib.licenses.bsd3;

}) {};
"SCalendar" = callPackage
({
  mkDerivation
, base
, containers
, stdenv
, text
, time
}:
mkDerivation {

pname = "SCalendar";
version = "1.1.0";
sha256 = "4971bf6df45953434088ba50d0e17dcc49a0e4c2dd37ad06385c1f87d87b348d";
libraryHaskellDepends = [
base
containers
text
time
];
doHaddock = false;
doCheck = false;
homepage = "https://www.researchgate.net/publication/311582722_Method_of_Managing_Resources_in_a_Telecommunication_Network_or_a_Computing_System";
description = "This is a library for handling calendars and resource availability based on the \"top-nodes algorithm\" and set operations";
license = stdenv.lib.licenses.mit;

}) {};
"SHA" = callPackage
({
  mkDerivation
, array
, base
, binary
, bytestring
, stdenv
}:
mkDerivation {

pname = "SHA";
version = "1.6.4.4";
sha256 = "6bd950df6b11a3998bb1452d875d2da043ee43385459afc5f16d471d25178b44";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
array
base
binary
bytestring
];
doHaddock = false;
doCheck = false;
description = "Implementations of the SHA suite of message digest functions";
license = stdenv.lib.licenses.bsd3;

}) {};
"STMonadTrans" = callPackage
({
  mkDerivation
, array
, base
, mtl
, stdenv
}:
mkDerivation {

pname = "STMonadTrans";
version = "0.4.3";
sha256 = "574fd56cf74036c20d00a09d815659dbbb0ae51c8103d00c93cd9558ad3322db";
revision = "1";
editedCabalFile = "09kqrv9a4yhsdpix49h9qjw0j2fhxrgkjnfrnyxg1nspmqrvl50m";
libraryHaskellDepends = [
array
base
mtl
];
doHaddock = false;
doCheck = false;
description = "A monad transformer version of the ST monad";
license = stdenv.lib.licenses.bsd3;

}) {};
"SafeSemaphore" = callPackage
({
  mkDerivation
, base
, containers
, stdenv
, stm
}:
mkDerivation {

pname = "SafeSemaphore";
version = "0.10.1";
sha256 = "21e5b737a378cae9e1faf85cab015316d4c84d4b37e6d9d202111cef8c4cef66";
revision = "1";
editedCabalFile = "1k61gqgfh6n3sj8ni8sfvpcm39nqc2msjfxk2pgmhfabvv48w5hv";
libraryHaskellDepends = [
base
containers
stm
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/ChrisKuklewicz/SafeSemaphore";
description = "Much safer replacement for QSemN, QSem, and SampleVar";
license = stdenv.lib.licenses.bsd3;

}) {};
"SegmentTree" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "SegmentTree";
version = "0.3";
sha256 = "6188c1b1276d7fa0391098a563df73dd522d20b57dc5321fe3418a9e3ca84fc1";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
description = "Data structure for querying the set (or count) of intervals covering given point";
license = stdenv.lib.licenses.bsd3;

}) {};
"ShellCheck" = callPackage
({
  mkDerivation
, base
, Cabal
, containers
, directory
, json
, mtl
, parsec
, process
, QuickCheck
, regex-tdfa
, stdenv
}:
mkDerivation {

pname = "ShellCheck";
version = "0.4.7";
sha256 = "184955264d42c5dca0300fb9688b9a6c9a1c70c345dbcd8e30bb48a049a70d7c";
revision = "1";
editedCabalFile = "0fbrysx6wb9kmlzbfyjcb7107rnf0rjldlszaqnpib33vwd7l1hx";
isLibrary = true;
isExecutable = true;
setupHaskellDepends = [
base
Cabal
process
];
libraryHaskellDepends = [
base
containers
directory
json
mtl
parsec
process
QuickCheck
regex-tdfa
];
executableHaskellDepends = [
base
containers
directory
json
mtl
parsec
QuickCheck
regex-tdfa
];
doHaddock = false;
doCheck = false;
homepage = "https://www.shellcheck.net/";
description = "Shell script analysis tool";
license = stdenv.lib.licenses.gpl3;

}) {};
"Spintax" = callPackage
({
  mkDerivation
, attoparsec
, base
, extra
, mtl
, mwc-random
, stdenv
, text
}:
mkDerivation {

pname = "Spintax";
version = "0.3.2";
sha256 = "f7e620817ce065f06ae163b08461eb3ce3dc0254caf0dcbd00d01836759bf048";
libraryHaskellDepends = [
attoparsec
base
extra
mtl
mwc-random
text
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/MichelBoucey/spintax";
description = "Random text generation based on spintax";
license = stdenv.lib.licenses.bsd3;

}) {};
"Spock" = callPackage
({
  mkDerivation
, base
, base64-bytestring
, bytestring
, containers
, cryptonite
, focus
, hashable
, http-types
, hvect
, list-t
, monad-control
, mtl
, reroute
, resource-pool
, resourcet
, Spock-core
, stdenv
, stm
, stm-containers
, text
, time
, transformers
, transformers-base
, unordered-containers
, vault
, wai
}:
mkDerivation {

pname = "Spock";
version = "0.12.0.0";
sha256 = "8392d1ee34b46238c6bfe951080f06e11e1f3622d8402e7762c70aa61430e3d9";
revision = "1";
editedCabalFile = "0a9mfn2p1b6r6pc6n3a2l7xl4607mjj3fvsvpcipp2zvqsryi9c8";
libraryHaskellDepends = [
base
base64-bytestring
bytestring
containers
cryptonite
focus
hashable
http-types
hvect
list-t
monad-control
mtl
reroute
resource-pool
resourcet
Spock-core
stm
stm-containers
text
time
transformers
transformers-base
unordered-containers
vault
wai
];
doHaddock = false;
doCheck = false;
homepage = "https://www.spock.li";
description = "Another Haskell web framework for rapid development";
license = stdenv.lib.licenses.bsd3;

}) {};
"Spock-api" = callPackage
({
  mkDerivation
, aeson
, base
, deepseq
, hvect
, reroute
, stdenv
}:
mkDerivation {

pname = "Spock-api";
version = "0.12.0.0";
sha256 = "8cfdbcbd2fa426c595fb7d29f8a6395dea17476c15d5ae863da2605b1c6ebe00";
revision = "1";
editedCabalFile = "0w0xah0lirgrs1xvlw5z6saa3wvzdl5r3yq3zxipg7kmrfxgbfbz";
libraryHaskellDepends = [
aeson
base
deepseq
hvect
reroute
];
doHaddock = false;
doCheck = false;
homepage = "https://www.spock.li";
description = "Another Haskell web framework for rapid development";
license = stdenv.lib.licenses.bsd3;

}) {};
"Spock-api-server" = callPackage
({
  mkDerivation
, base
, hvect
, mtl
, Spock-api
, Spock-core
, stdenv
}:
mkDerivation {

pname = "Spock-api-server";
version = "0.12.0.0";
sha256 = "29734206823875ec71d7cad14bf012adb70b01700975e2181a7cb52713b131ce";
libraryHaskellDepends = [
base
hvect
mtl
Spock-api
Spock-core
];
doHaddock = false;
doCheck = false;
homepage = "https://www.spock.li";
description = "Another Haskell web framework for rapid development";
license = stdenv.lib.licenses.bsd3;

}) {};
"Spock-core" = callPackage
({
  mkDerivation
, aeson
, base
, base64-bytestring
, bytestring
, case-insensitive
, containers
, cookie
, directory
, hashable
, http-api-data
, http-types
, hvect
, mtl
, old-locale
, reroute
, resourcet
, stdenv
, stm
, superbuffer
, text
, time
, transformers
, unordered-containers
, vault
, wai
, wai-extra
, warp
}:
mkDerivation {

pname = "Spock-core";
version = "0.12.0.0";
sha256 = "e69b70ea3027fa644d546bcae25bbf75e38abd6f4a7f88f0628fea6e16e97895";
revision = "1";
editedCabalFile = "0xk6kmka807ifwldr34wjgkwdn19p848ik6lmm2zyah08amvcgqq";
libraryHaskellDepends = [
aeson
base
base64-bytestring
bytestring
case-insensitive
containers
cookie
directory
hashable
http-api-data
http-types
hvect
mtl
old-locale
reroute
resourcet
stm
superbuffer
text
time
transformers
unordered-containers
vault
wai
wai-extra
warp
];
doHaddock = false;
doCheck = false;
homepage = "https://www.spock.li";
description = "Another Haskell web framework for rapid development";
license = stdenv.lib.licenses.bsd3;

}) {};
"Spock-lucid" = callPackage
({
  mkDerivation
, base
, lucid
, Spock
, stdenv
, transformers
}:
mkDerivation {

pname = "Spock-lucid";
version = "0.4.0.1";
sha256 = "3126d512e9528a6cf8830ad355dd2f0429bfd41f0ae048138818ae8dcedc2397";
libraryHaskellDepends = [
base
lucid
Spock
transformers
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/aelve/Spock-lucid";
description = "Lucid support for Spock";
license = stdenv.lib.licenses.bsd3;

}) {};
"Spock-worker" = callPackage
({
  mkDerivation
, base
, containers
, errors
, lifted-base
, mtl
, Spock
, stdenv
, stm
, text
, time
, transformers
, vector
}:
mkDerivation {

pname = "Spock-worker";
version = "0.3.1.0";
sha256 = "edc009d59fe528ab3bee887b8092f720a8a4ee85b550dec065964ed55c76dc4b";
libraryHaskellDepends = [
base
containers
errors
lifted-base
mtl
Spock
stm
text
time
transformers
vector
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/agrafix/Spock-worker";
description = "Background workers for Spock";
license = stdenv.lib.licenses.mit;

}) {};
"StateVar" = callPackage
({
  mkDerivation
, base
, stdenv
, stm
, transformers
}:
mkDerivation {

pname = "StateVar";
version = "1.1.1.0";
sha256 = "1a89cd2632c2fc384b4c71fdc12894cc1c3902badbf4771497437e4044274e80";
libraryHaskellDepends = [
base
stm
transformers
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/haskell-opengl/StateVar";
description = "State variables";
license = stdenv.lib.licenses.bsd3;

}) {};
"Strafunski-StrategyLib" = callPackage
({
  mkDerivation
, base
, directory
, mtl
, stdenv
, syb
, transformers
}:
mkDerivation {

pname = "Strafunski-StrategyLib";
version = "5.0.1.0";
sha256 = "a018c7420289a381d2b491a753f685b9d691be07cea99855cc5c8e05d5a9a295";
libraryHaskellDepends = [
base
directory
mtl
syb
transformers
];
doHaddock = false;
doCheck = false;
description = "Library for strategic programming";
license = stdenv.lib.licenses.bsd3;

}) {};
"TCache" = callPackage
({
  mkDerivation
, base
, bytestring
, containers
, directory
, hashtables
, mtl
, old-time
, RefSerialize
, stdenv
, stm
, text
}:
mkDerivation {

pname = "TCache";
version = "0.12.1";
sha256 = "f134b45fcdd127fa1a4214f01d44dc34e994fed137cec63f4c4ea632363ab7bd";
libraryHaskellDepends = [
base
bytestring
containers
directory
hashtables
mtl
old-time
RefSerialize
stm
text
];
doHaddock = false;
doCheck = false;
description = "A Transactional cache with user-defined persistence";
license = stdenv.lib.licenses.bsd3;

}) {};
"TypeCompose" = callPackage
({
  mkDerivation
, base
, base-orphans
, stdenv
}:
mkDerivation {

pname = "TypeCompose";
version = "0.9.12";
sha256 = "3a182c2cc93f8291b3aedfc32c0b1faa84a982601c1a24cbe7fe1ecc50e333e2";
revision = "1";
editedCabalFile = "0j27xdfim7a6a16v834n3jdp1j7bsr3yn19bnfwni3xsvrc732q3";
libraryHaskellDepends = [
base
base-orphans
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/conal/TypeCompose";
description = "Type composition classes & instances";
license = stdenv.lib.licenses.bsd3;

}) {};
"Unique" = callPackage
({
  mkDerivation
, base
, containers
, extra
, hashable
, stdenv
, unordered-containers
}:
mkDerivation {

pname = "Unique";
version = "0.4.7.2";
sha256 = "b56155043817187170d02e6fa7c5ec69c72dc2a1c00b50bdd34d6d2875795b6b";
libraryHaskellDepends = [
base
containers
extra
hashable
unordered-containers
];
doHaddock = false;
doCheck = false;
description = "It provides the functionality like unix \"uniq\" utility";
license = stdenv.lib.licenses.bsd3;

}) {};
"ViennaRNAParser" = callPackage
({
  mkDerivation
, base
, parsec
, ParsecTools
, process
, stdenv
, transformers
}:
mkDerivation {

pname = "ViennaRNAParser";
version = "1.3.3";
sha256 = "7ee941d106b8b0c57e1ca5104d19b94215721e4a7b8aeb53fa353d246efbaefe";
libraryHaskellDepends = [
base
parsec
ParsecTools
process
transformers
];
doHaddock = false;
doCheck = false;
description = "Libary for parsing ViennaRNA package output";
license = stdenv.lib.licenses.gpl3;

}) {};
"Win32-notify" = callPackage
({
  mkDerivation
, base
, containers
, directory
, stdenv
, Win32
}:
mkDerivation {

pname = "Win32-notify";
version = "0.3.0.3";
sha256 = "0c21dbe06cb1ce3b3e5f1aace0b7ee359b36e7cb057f8fe2c28c943150044116";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
base
containers
directory
Win32
];
doHaddock = false;
doCheck = false;
description = "A binding to part of the Win32 library for file notification";
license = stdenv.lib.licenses.bsd3;

}) {};
"Workflow" = callPackage
({
  mkDerivation
, base
, binary
, bytestring
, containers
, directory
, exceptions
, extensible-exceptions
, mtl
, old-time
, RefSerialize
, stdenv
, stm
, TCache
, vector
}:
mkDerivation {

pname = "Workflow";
version = "0.8.3";
sha256 = "c89b4b3a4a29fe576f8972ffa1e698eff8ac0ceb433642fc0b3f9c0308d22123";
revision = "1";
editedCabalFile = "0jy6hn1lx9wpq44ld96msgb6a2hb6cvryn1a39b4rq4iy3m45r8v";
libraryHaskellDepends = [
base
binary
bytestring
containers
directory
exceptions
extensible-exceptions
mtl
old-time
RefSerialize
stm
TCache
vector
];
doHaddock = false;
doCheck = false;
description = "Workflow patterns over a monad for thread state logging & recovery";
license = stdenv.lib.licenses.bsd3;

}) {};
"X11" = callPackage
({
  mkDerivation
, base
, data-default
, libX11
, libXext
, libXinerama
, libXrandr
, libXrender
, libXScrnSaver
, stdenv
}:
mkDerivation {

pname = "X11";
version = "1.8";
sha256 = "541b166aab1e05a92dc8f42a511d827e7aad373af12ae283b9df9982ccc09d8e";
libraryHaskellDepends = [
base
data-default
];
librarySystemDepends = [
libX11
libXext
libXinerama
libXrandr
libXrender
libXScrnSaver
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/xmonad/X11";
description = "A binding to the X11 graphics library";
license = stdenv.lib.licenses.bsd3;

}) {inherit (pkgs) libX11; inherit (pkgs) libXext;
inherit (pkgs) libXrandr;};
"X11-xft" = callPackage
({
  mkDerivation
, base
, libXft
, stdenv
, utf8-string
, X11
}:
mkDerivation {

pname = "X11-xft";
version = "0.3.1";
sha256 = "4eba3fee62570e06447654030a62fb55f19587884bc2cef77a9c3b2c3458f8d1";
libraryHaskellDepends = [
base
utf8-string
X11
];
libraryPkgconfigDepends = [
libXft
];
doHaddock = false;
doCheck = false;
description = "Bindings to the Xft, X Free Type interface library, and some Xrender parts";
license = "LGPL";

}) {inherit (pkgs) libXft;};
"Xauth" = callPackage
({
  mkDerivation
, base
, libXau
, stdenv
}:
mkDerivation {

pname = "Xauth";
version = "0.1";
sha256 = "ba332dea9ec152b3f676d22461eee81a657e16987c3dfb8249e9dbe0cda56ed7";
libraryHaskellDepends = [
base
];
libraryPkgconfigDepends = [
libXau
];
doHaddock = false;
doCheck = false;
description = "A binding to the X11 authentication library";
license = stdenv.lib.licenses.bsd3;

}) {inherit (pkgs) libXau;};
"Yampa" = callPackage
({
  mkDerivation
, base
, deepseq
, random
, stdenv
}:
mkDerivation {

pname = "Yampa";
version = "0.10.7";
sha256 = "14b13dcb9e52a4c6f738d7515d82d681618720de5598ec11448646333193d1c5";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
base
deepseq
random
];
doHaddock = false;
doCheck = false;
homepage = "http://www.haskell.org/haskellwiki/Yampa";
description = "Library for programming hybrid systems";
license = stdenv.lib.licenses.bsd3;

}) {};
"YampaSynth" = callPackage
({
  mkDerivation
, array
, base
, bytestring
, containers
, HCodecs
, stdenv
, Yampa
}:
mkDerivation {

pname = "YampaSynth";
version = "0.2";
sha256 = "a1c6a0ea57aee855ca3f558f1b6d7ec167abb57333052d8a9f7b46ef323d0a09";
isLibrary = false;
isExecutable = true;
enableSeparateDataOutput = true;
executableHaskellDepends = [
array
base
bytestring
containers
HCodecs
Yampa
];
doHaddock = false;
doCheck = false;
homepage = "http://www-db.informatik.uni-tuebingen.de/team/giorgidze";
description = "Software synthesizer";
license = stdenv.lib.licenses.bsd3;

}) {};
"abstract-deque" = callPackage
({
  mkDerivation
, array
, base
, containers
, random
, stdenv
, time
}:
mkDerivation {

pname = "abstract-deque";
version = "0.3";
sha256 = "09aa10f38193a8275a7791b92a4f3a7192a304874637e2a35c897dde25d75ca2";
libraryHaskellDepends = [
array
base
containers
random
time
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/rrnewton/haskell-lockfree/wiki";
description = "Abstract, parameterized interface to mutable Deques";
license = stdenv.lib.licenses.bsd3;

}) {};
"abstract-deque-tests" = callPackage
({
  mkDerivation
, abstract-deque
, array
, base
, containers
, HUnit
, random
, stdenv
, test-framework
, test-framework-hunit
, time
}:
mkDerivation {

pname = "abstract-deque-tests";
version = "0.3";
sha256 = "5f17fb4cc26559f81c777f494622907e8927181175eaa172fb6adbf14b2feba5";
libraryHaskellDepends = [
abstract-deque
array
base
containers
HUnit
random
test-framework
test-framework-hunit
time
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/rrnewton/haskell-lockfree/wiki";
description = "A test-suite for any queue or double-ended queue satisfying an interface";
license = stdenv.lib.licenses.bsd3;

}) {};
"abstract-par" = callPackage
({
  mkDerivation
, base
, deepseq
, stdenv
}:
mkDerivation {

pname = "abstract-par";
version = "0.3.3";
sha256 = "248a8739bd902462cb16755b690b55660e196e58cc7e6ef8157a72c2a3d5d860";
libraryHaskellDepends = [
base
deepseq
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/simonmar/monad-par";
description = "Type classes generalizing the functionality of the 'monad-par' library";
license = stdenv.lib.licenses.bsd3;

}) {};
"accelerate" = callPackage
({
  mkDerivation
, ansi-wl-pprint
, base
, base-orphans
, containers
, deepseq
, directory
, exceptions
, fclabels
, filepath
, ghc-prim
, hashable
, hashtables
, mtl
, stdenv
, template-haskell
, time
, transformers
, unique
, unix
, unordered-containers
}:
mkDerivation {

pname = "accelerate";
version = "1.1.1.0";
sha256 = "a4f482472bbd0e858bbe568834490af46d882bafb598576213b63a44be828ee1";
libraryHaskellDepends = [
ansi-wl-pprint
base
base-orphans
containers
deepseq
directory
exceptions
fclabels
filepath
ghc-prim
hashable
hashtables
mtl
template-haskell
time
transformers
unique
unix
unordered-containers
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/AccelerateHS/accelerate/";
description = "An embedded language for accelerated array processing";
license = stdenv.lib.licenses.bsd3;

}) {};
"accelerate-arithmetic" = callPackage
({
  mkDerivation
, accelerate
, accelerate-utility
, base
, QuickCheck
, stdenv
, utility-ht
}:
mkDerivation {

pname = "accelerate-arithmetic";
version = "1.0.0.1";
sha256 = "5ea02a4100717d4a85af1e0e9cc7a095e751cc9933cffb094a95a3c6985e1616";
libraryHaskellDepends = [
accelerate
accelerate-utility
base
QuickCheck
utility-ht
];
doHaddock = false;
doCheck = false;
homepage = "http://hub.darcs.net/thielema/accelerate-arithmetic/";
description = "Linear algebra and interpolation using the Accelerate framework";
license = stdenv.lib.licenses.bsd3;

}) {};
"accelerate-bignum" = callPackage
({
  mkDerivation
, accelerate
, accelerate-llvm
, accelerate-llvm-native
, accelerate-llvm-ptx
, base
, ghc-prim
, llvm-hs-pure
, stdenv
, template-haskell
}:
mkDerivation {

pname = "accelerate-bignum";
version = "0.1.0.0";
sha256 = "7c18c467d646ed30131ad197144c4f7fa6ce3e821d41c6db3dba4361f04e30a5";
revision = "2";
editedCabalFile = "00s0n5jqahn15m8x81chavv8blzjjb8z6368pl3diaadd8bi8hsv";
libraryHaskellDepends = [
accelerate
accelerate-llvm
accelerate-llvm-native
accelerate-llvm-ptx
base
ghc-prim
llvm-hs-pure
template-haskell
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/tmcdonell/accelerate-bignum";
description = "Fixed-length large integer arithmetic for Accelerate";
license = stdenv.lib.licenses.bsd3;

}) {};
"accelerate-blas" = callPackage
({
  mkDerivation
, accelerate
, accelerate-llvm
, accelerate-llvm-native
, accelerate-llvm-ptx
, base
, blas-hs
, bytestring
, containers
, cublas
, cuda
, file-embed
, llvm-hs-pure
, mtl
, stdenv
, storable-complex
}:
mkDerivation {

pname = "accelerate-blas";
version = "0.1.0.1";
sha256 = "cda96b600cfa251036db1c3568778235cb766d6f9bcff80420b4de48867a4c66";
revision = "2";
editedCabalFile = "1bxh38hyn7lq73z1dqg8rsbdblvy3551lp08jlm2h8p9b8bsriia";
libraryHaskellDepends = [
accelerate
accelerate-llvm
accelerate-llvm-native
accelerate-llvm-ptx
base
blas-hs
bytestring
containers
cublas
cuda
file-embed
llvm-hs-pure
mtl
storable-complex
];
doHaddock = false;
doCheck = false;
description = "Numeric Linear Algebra in Accelerate";
license = stdenv.lib.licenses.bsd3;

}) {};
"accelerate-fft" = callPackage
({
  mkDerivation
, accelerate
, accelerate-llvm
, accelerate-llvm-native
, accelerate-llvm-ptx
, base
, bytestring
, carray
, cuda
, cufft
, fft
, file-embed
, stdenv
, storable-complex
}:
mkDerivation {

pname = "accelerate-fft";
version = "1.1.0.0";
sha256 = "34d9ae4f15b63067803febd5887a08cf067d7e61dec1c61702a7d66795855160";
libraryHaskellDepends = [
accelerate
accelerate-llvm
accelerate-llvm-native
accelerate-llvm-ptx
base
bytestring
carray
cuda
cufft
fft
file-embed
storable-complex
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/AccelerateHS/accelerate-fft";
description = "FFT using the Accelerate library";
license = stdenv.lib.licenses.bsd3;

}) {};
"accelerate-fftw" = callPackage
({
  mkDerivation
, accelerate
, accelerate-io
, base
, carray
, fft
, stdenv
, storable-complex
}:
mkDerivation {

pname = "accelerate-fftw";
version = "1.0.0.1";
sha256 = "fe7a7813d7f33b49145c42e95433a4e792020a8f774bae82583f18076aee53e1";
libraryHaskellDepends = [
accelerate
accelerate-io
base
carray
fft
storable-complex
];
doHaddock = false;
doCheck = false;
homepage = "http://hub.darcs.net/thielema/accelerate-fftw/";
description = "Accelerate frontend to the FFTW library (Fourier transform)";
license = stdenv.lib.licenses.bsd3;

}) {};
"accelerate-fourier" = callPackage
({
  mkDerivation
, accelerate
, accelerate-arithmetic
, accelerate-utility
, base
, containers
, QuickCheck
, stdenv
, transformers
, utility-ht
}:
mkDerivation {

pname = "accelerate-fourier";
version = "1.0.0.5";
sha256 = "28cff1b6801249aa354f3d6289fdd36e50587f1d0245289fb6e6d86aa6d16b0d";
libraryHaskellDepends = [
accelerate
accelerate-arithmetic
accelerate-utility
base
containers
QuickCheck
transformers
utility-ht
];
doHaddock = false;
doCheck = false;
homepage = "http://hub.darcs.net/thielema/accelerate-fourier/";
description = "Fast Fourier transform and convolution using the Accelerate framework";
license = stdenv.lib.licenses.bsd3;

}) {};
"accelerate-io" = callPackage
({
  mkDerivation
, accelerate
, array
, base
, bmp
, bytestring
, repa
, stdenv
, vector
}:
mkDerivation {

pname = "accelerate-io";
version = "1.0.0.1";
sha256 = "f5a68d160adb378b1b9e42596786f8cc0ece4bb54af68f0d4f1e5d03c92474e0";
revision = "1";
editedCabalFile = "1qf7f1swy5h1fqaciw1swvwrvmqrcmi03v0vqsx6ccxf2zxcjlal";
libraryHaskellDepends = [
accelerate
array
base
bmp
bytestring
repa
vector
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/AccelerateHS/accelerate-io";
description = "Read and write Accelerate arrays in various formats";
license = stdenv.lib.licenses.bsd3;

}) {};
"accelerate-llvm" = callPackage
({
  mkDerivation
, abstract-deque
, accelerate
, base
, bytestring
, chaselev-deque
, containers
, data-default-class
, deepseq
, directory
, dlist
, exceptions
, fclabels
, filepath
, llvm-hs
, llvm-hs-pure
, mtl
, mwc-random
, stdenv
, template-haskell
, unordered-containers
, vector
}:
mkDerivation {

pname = "accelerate-llvm";
version = "1.1.0.0";
sha256 = "1c0324a64b9515a9b81f3566040bacc7cab230dad7e1d4c74429d5e6947a82f4";
revision = "1";
editedCabalFile = "1h26kcajp26w72fhl31i3bagdyn20za4qpb26fb90v15iygq9q46";
libraryHaskellDepends = [
abstract-deque
accelerate
base
bytestring
chaselev-deque
containers
data-default-class
deepseq
directory
dlist
exceptions
fclabels
filepath
llvm-hs
llvm-hs-pure
mtl
mwc-random
template-haskell
unordered-containers
vector
];
doHaddock = false;
doCheck = false;
description = "Accelerate backend component generating LLVM IR";
license = stdenv.lib.licenses.bsd3;

}) {};
"accelerate-llvm-native" = callPackage
({
  mkDerivation
, accelerate
, accelerate-llvm
, base
, bytestring
, c2hs
, Cabal
, cereal
, containers
, directory
, dlist
, fclabels
, filepath
, ghc
, ghc-prim
, hashable
, libffi
, llvm-hs
, llvm-hs-pure
, mtl
, stdenv
, template-haskell
, time
, unique
, unix
, vector
}:
mkDerivation {

pname = "accelerate-llvm-native";
version = "1.1.0.1";
sha256 = "b4ec3931647ed297a9588b8eb03d3f1d3dcdaa41d4f2fe808459b3aa69d2bc43";
revision = "1";
editedCabalFile = "1kqv7bpa3mm4qzc141z5kqq934930b1cv2djr9m2ycwvb3y8ysfl";
libraryHaskellDepends = [
accelerate
accelerate-llvm
base
bytestring
Cabal
cereal
containers
directory
dlist
fclabels
filepath
ghc
ghc-prim
hashable
libffi
llvm-hs
llvm-hs-pure
mtl
template-haskell
time
unique
unix
vector
];
libraryToolDepends = [
c2hs
];
doHaddock = false;
doCheck = false;
description = "Accelerate backend for multicore CPUs";
license = stdenv.lib.licenses.bsd3;

}) {};
"accelerate-llvm-ptx" = callPackage
({
  mkDerivation
, accelerate
, accelerate-llvm
, base
, bytestring
, containers
, cuda
, deepseq
, directory
, dlist
, fclabels
, file-embed
, filepath
, hashable
, llvm-hs
, llvm-hs-pure
, mtl
, nvvm
, pretty
, process
, stdenv
, template-haskell
, time
, unordered-containers
}:
mkDerivation {

pname = "accelerate-llvm-ptx";
version = "1.1.0.1";
sha256 = "b26c1b2d2a3a9f438e255661f3fe28120443c16e9e4e0fd18a2988fe80273248";
libraryHaskellDepends = [
accelerate
accelerate-llvm
base
bytestring
containers
cuda
deepseq
directory
dlist
fclabels
file-embed
filepath
hashable
llvm-hs
llvm-hs-pure
mtl
nvvm
pretty
process
template-haskell
time
unordered-containers
];
doHaddock = false;
doCheck = false;
description = "Accelerate backend for NVIDIA GPUs";
license = stdenv.lib.licenses.bsd3;

}) {};
"accelerate-utility" = callPackage
({
  mkDerivation
, accelerate
, base
, stdenv
, utility-ht
}:
mkDerivation {

pname = "accelerate-utility";
version = "1.0.0.1";
sha256 = "900bb340fba2c0c5beefa04657b8826c78b630c6dd3ac227cdcfcaf9e6f5bdf1";
libraryHaskellDepends = [
accelerate
base
utility-ht
];
doHaddock = false;
doCheck = false;
homepage = "http://hub.darcs.net/thielema/accelerate-utility/";
description = "Utility functions for the Accelerate framework";
license = stdenv.lib.licenses.bsd3;

}) {};
"accuerr" = callPackage
({
  mkDerivation
, base
, bifunctors
, lens
, semigroups
, stdenv
}:
mkDerivation {

pname = "accuerr";
version = "0.2.0.2";
sha256 = "4f6a8230d2ad3bc274dea234208ce4f5282e2d9413a5da1f5505fc55a2fa9a36";
libraryHaskellDepends = [
base
bifunctors
lens
semigroups
];
doHaddock = false;
doCheck = false;
homepage = "http://www.github.com/massysett/accuerr";
description = "Data type like Either but with accumulating error type";
license = stdenv.lib.licenses.bsd3;

}) {};
"ace" = callPackage
({
  mkDerivation
, attoparsec
, base
, blaze-html
, blaze-markup
, data-default
, parsec
, stdenv
, text
}:
mkDerivation {

pname = "ace";
version = "0.6";
sha256 = "d3472b659d26cf7ea9afa207ec24ac0314598de997722e636e9bfa24b3900738";
libraryHaskellDepends = [
attoparsec
base
blaze-html
blaze-markup
data-default
parsec
text
];
doHaddock = false;
doCheck = false;
description = "Attempto Controlled English parser and printer";
license = stdenv.lib.licenses.bsd3;

}) {};
"action-permutations" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "action-permutations";
version = "0.0.0.1";
sha256 = "a419ee59f996e5305afd96336a561a9fcf26844362eaa32ab6b747a8f9fd1466";
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
description = "Execute a set of actions (e.g. parsers) in each possible order";
license = stdenv.lib.licenses.bsd3;

}) {};
"active" = callPackage
({
  mkDerivation
, base
, lens
, linear
, semigroupoids
, semigroups
, stdenv
, vector
}:
mkDerivation {

pname = "active";
version = "0.2.0.13";
sha256 = "5d9a141d58bcefbf699ed233a22309ded671c25ed64bcee11a663d00731280fb";
revision = "5";
editedCabalFile = "0hwla9xz275qzgn9n07311ksl3j40izidki1nbhmrmmmfjin57cv";
libraryHaskellDepends = [
base
lens
linear
semigroupoids
semigroups
vector
];
doHaddock = false;
doCheck = false;
description = "Abstractions for animation";
license = stdenv.lib.licenses.bsd3;

}) {};
"ad" = callPackage
({
  mkDerivation
, array
, base
, Cabal
, cabal-doctest
, comonad
, containers
, data-reify
, erf
, free
, nats
, reflection
, semigroups
, stdenv
, transformers
}:
mkDerivation {

pname = "ad";
version = "4.3.5";
sha256 = "9c5e754b1f0ff83490bcc30f5dfa8504de5a34ab8f7be03ac232882940dc8d60";
revision = "4";
editedCabalFile = "0n1r7ylnabfcd3x88j93r3fjbz8hdlp3hda0zaw7h5cawc7zy01j";
setupHaskellDepends = [
base
Cabal
cabal-doctest
];
libraryHaskellDepends = [
array
base
comonad
containers
data-reify
erf
free
nats
reflection
semigroups
transformers
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/ekmett/ad";
description = "Automatic Differentiation";
license = stdenv.lib.licenses.bsd3;

}) {};
"adjunctions" = callPackage
({
  mkDerivation
, array
, base
, comonad
, containers
, contravariant
, distributive
, free
, mtl
, profunctors
, semigroupoids
, semigroups
, stdenv
, tagged
, transformers
, transformers-compat
, void
}:
mkDerivation {

pname = "adjunctions";
version = "4.4";
sha256 = "507c2ef55337ae61c805f8cbc1213dfd7d2b85187342675d662254b8d8a16ae9";
libraryHaskellDepends = [
array
base
comonad
containers
contravariant
distributive
free
mtl
profunctors
semigroupoids
semigroups
tagged
transformers
transformers-compat
void
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/ekmett/adjunctions/";
description = "Adjunctions and representable functors";
license = stdenv.lib.licenses.bsd3;

}) {};
"adler32" = callPackage
({
  mkDerivation
, base
, bytestring
, stdenv
, zlib
}:
mkDerivation {

pname = "adler32";
version = "0.1.2.0";
sha256 = "26b43c9f389f45ed792698ea4880d24ba56ab61c6f7cae51e582a05e0b5866a4";
libraryHaskellDepends = [
base
bytestring
];
librarySystemDepends = [
zlib
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/redneb/hs-adler32";
description = "An implementation of Adler-32, supporting rolling checksum operation";
license = stdenv.lib.licenses.bsd3;

}) {inherit (pkgs) zlib;};
"aern2-mp" = callPackage
({
  mkDerivation
, base
, convertible
, hmpfr
, hspec
, integer-gmp
, integer-logarithms
, lens
, mixed-types-num
, QuickCheck
, regex-tdfa
, stdenv
, template-haskell
}:
mkDerivation {

pname = "aern2-mp";
version = "0.1.2.0";
sha256 = "9de6632ad943c044115e713f6c87078f33c37c6bde36ff472a5142a96cf53c8c";
revision = "1";
editedCabalFile = "09b92kf60m4v0xn2nm9h8wkg8wr7dc1na5c9mg2lk3kplf60sfvk";
libraryHaskellDepends = [
base
convertible
hmpfr
hspec
integer-gmp
integer-logarithms
lens
mixed-types-num
QuickCheck
regex-tdfa
template-haskell
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/michalkonecny/aern2";
description = "Multi-precision floats via MPFR";
license = stdenv.lib.licenses.bsd3;

}) {};
"aern2-real" = callPackage
({
  mkDerivation
, aern2-mp
, aeson
, base
, bytestring
, containers
, convertible
, hspec
, lens
, mixed-types-num
, QuickCheck
, random
, stdenv
, stm
, transformers
}:
mkDerivation {

pname = "aern2-real";
version = "0.1.1.0";
sha256 = "25e0428536b401d5a06fd3b169025747663359595b3cfcdb56a042be81d002eb";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
aern2-mp
aeson
base
bytestring
containers
convertible
hspec
lens
mixed-types-num
QuickCheck
stm
transformers
];
executableHaskellDepends = [
aern2-mp
base
mixed-types-num
QuickCheck
random
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/michalkonecny/aern2";
description = "Exact real numbers via Cauchy sequences and MPFR";
license = stdenv.lib.licenses.bsd3;

}) {};
"aeson" = callPackage
({
  mkDerivation
, attoparsec
, base
, base-compat
, bytestring
, containers
, deepseq
, dlist
, ghc-prim
, hashable
, scientific
, stdenv
, tagged
, template-haskell
, text
, th-abstraction
, time
, time-locale-compat
, unordered-containers
, uuid-types
, vector
}:
mkDerivation {

pname = "aeson";
version = "1.2.4.0";
sha256 = "3401dba4fddb92c8a971f6645b38e2f8a1b286ef7061cd392a1a567640bbfc9b";
libraryHaskellDepends = [
attoparsec
base
base-compat
bytestring
containers
deepseq
dlist
ghc-prim
hashable
scientific
tagged
template-haskell
text
th-abstraction
time
time-locale-compat
unordered-containers
uuid-types
vector
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/bos/aeson";
description = "Fast JSON parsing and encoding";
license = stdenv.lib.licenses.bsd3;

}) {};
"aeson-better-errors" = callPackage
({
  mkDerivation
, aeson
, base
, bytestring
, dlist
, mtl
, scientific
, stdenv
, text
, transformers
, transformers-compat
, unordered-containers
, vector
, void
}:
mkDerivation {

pname = "aeson-better-errors";
version = "0.9.1.0";
sha256 = "68f001bf055ec7b755d91019f2a0ef136307d157a231acddad6b4cc561f67327";
libraryHaskellDepends = [
aeson
base
bytestring
dlist
mtl
scientific
text
transformers
transformers-compat
unordered-containers
vector
void
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/hdgarrood/aeson-better-errors";
description = "Better error messages when decoding JSON values";
license = stdenv.lib.licenses.mit;

}) {};
"aeson-casing" = callPackage
({
  mkDerivation
, aeson
, base
, stdenv
}:
mkDerivation {

pname = "aeson-casing";
version = "0.1.0.5";
sha256 = "cfec563dc6822f035858a7190153d8818c200be565806b43b70f198bf5410577";
libraryHaskellDepends = [
aeson
base
];
doHaddock = false;
doCheck = false;
description = "Tools to change the formatting of field names in Aeson instances";
license = stdenv.lib.licenses.mit;

}) {};
"aeson-compat" = callPackage
({
  mkDerivation
, aeson
, attoparsec
, attoparsec-iso8601
, base
, base-compat
, bytestring
, containers
, exceptions
, hashable
, scientific
, stdenv
, tagged
, text
, time
, time-locale-compat
, unordered-containers
, vector
}:
mkDerivation {

pname = "aeson-compat";
version = "0.3.7.1";
sha256 = "59740dc1e37b08e60abb47f38b87de5b9805611a1b468cd18294d5982a1dcacb";
revision = "3";
editedCabalFile = "1smql0v6b9f4pb3jnrm8kspyq2ygvznk1wkhzp0x7bjd7psrnmy9";
libraryHaskellDepends = [
aeson
attoparsec
attoparsec-iso8601
base
base-compat
bytestring
containers
exceptions
hashable
scientific
tagged
text
time
time-locale-compat
unordered-containers
vector
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/phadej/aeson-compat#readme";
description = "Compatibility layer for aeson";
license = stdenv.lib.licenses.bsd3;

}) {};
"aeson-diff" = callPackage
({
  mkDerivation
, aeson
, base
, bytestring
, edit-distance-vector
, hashable
, mtl
, optparse-applicative
, scientific
, stdenv
, text
, unordered-containers
, vector
}:
mkDerivation {

pname = "aeson-diff";
version = "1.1.0.5";
sha256 = "61d9dd60b6c19dd5aa350b85083ebed3eab8d8611893db1279e55e43d7c7fbcf";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
aeson
base
bytestring
edit-distance-vector
hashable
mtl
scientific
text
unordered-containers
vector
];
executableHaskellDepends = [
aeson
base
bytestring
optparse-applicative
text
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/thsutton/aeson-diff";
description = "Extract and apply patches to JSON documents";
license = stdenv.lib.licenses.bsd3;

}) {};
"aeson-extra" = callPackage
({
  mkDerivation
, aeson
, aeson-compat
, attoparsec
, attoparsec-iso8601
, base
, base-compat
, bytestring
, containers
, deepseq
, exceptions
, hashable
, parsec
, recursion-schemes
, scientific
, stdenv
, template-haskell
, text
, these
, time
, unordered-containers
, vector
}:
mkDerivation {

pname = "aeson-extra";
version = "0.4.1.0";
sha256 = "1e35bda18aca4f847178606e4cc4d24001bd0bae5c40e2934c039b64979f9085";
revision = "1";
editedCabalFile = "0fqhf8prdgjskr3qpryx2pn5s78l9dpapm4kmghak0dxh90sfp33";
libraryHaskellDepends = [
aeson
aeson-compat
attoparsec
attoparsec-iso8601
base
base-compat
bytestring
containers
deepseq
exceptions
hashable
parsec
recursion-schemes
scientific
template-haskell
text
these
time
unordered-containers
vector
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/phadej/aeson-extra#readme";
description = "Extra goodies for aeson";
license = stdenv.lib.licenses.bsd3;

}) {};
"aeson-generic-compat" = callPackage
({
  mkDerivation
, aeson
, base
, stdenv
}:
mkDerivation {

pname = "aeson-generic-compat";
version = "0.0.1.2";
sha256 = "6308ce74043a47289ee183918a362508677e9dd93fbed2b1033dc5132dca0422";
libraryHaskellDepends = [
aeson
base
];
doHaddock = false;
doCheck = false;
description = "Compatible generic class names of Aeson";
license = stdenv.lib.licenses.bsd3;

}) {};
"aeson-injector" = callPackage
({
  mkDerivation
, aeson
, base
, bifunctors
, deepseq
, hashable
, lens
, servant-docs
, stdenv
, swagger2
, text
, unordered-containers
}:
mkDerivation {

pname = "aeson-injector";
version = "1.1.0.0";
sha256 = "8ea78f3cf94be2e50654ba1ff8110c528f710f648e1fa10c621fa6f89f3e74b6";
libraryHaskellDepends = [
aeson
base
bifunctors
deepseq
hashable
lens
servant-docs
swagger2
text
unordered-containers
];
doHaddock = false;
doCheck = false;
description = "Injecting fields into aeson values";
license = stdenv.lib.licenses.mit;

}) {};
"aeson-picker" = callPackage
({
  mkDerivation
, aeson
, base
, lens
, lens-aeson
, stdenv
, text
}:
mkDerivation {

pname = "aeson-picker";
version = "0.1.0.4";
sha256 = "b20e23905c395d7b61fce6c5f6343758e3753a2dbee61800d3e15e753ac7c452";
libraryHaskellDepends = [
aeson
base
lens
lens-aeson
text
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/ozzzzz/aeson-picker#readme";
description = "Tiny library to get fields from JSON format";
license = stdenv.lib.licenses.bsd3;

}) {};
"aeson-pretty" = callPackage
({
  mkDerivation
, aeson
, attoparsec
, base
, base-compat
, bytestring
, cmdargs
, scientific
, stdenv
, text
, unordered-containers
, vector
}:
mkDerivation {

pname = "aeson-pretty";
version = "0.8.7";
sha256 = "c1c1ecc5e3abd004a6c4c256ee6f61da2a43d7f1452ffa391dee250df43b27d5";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
aeson
base
base-compat
bytestring
scientific
text
unordered-containers
vector
];
executableHaskellDepends = [
aeson
attoparsec
base
bytestring
cmdargs
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/informatikr/aeson-pretty";
description = "JSON pretty-printing library and command-line tool";
license = stdenv.lib.licenses.bsd3;

}) {};
"aeson-qq" = callPackage
({
  mkDerivation
, aeson
, attoparsec
, base
, base-compat
, haskell-src-meta
, parsec
, scientific
, stdenv
, template-haskell
, text
, vector
}:
mkDerivation {

pname = "aeson-qq";
version = "0.8.2";
sha256 = "6db252c94601efcb1ce395de0084ccf931a3525339ccdca011a740e7b11cc152";
libraryHaskellDepends = [
aeson
attoparsec
base
base-compat
haskell-src-meta
parsec
scientific
template-haskell
text
vector
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/sol/aeson-qq#readme";
description = "JSON quasiquoter for Haskell";
license = stdenv.lib.licenses.mit;

}) {};
"aeson-typescript" = callPackage
({
  mkDerivation
, aeson
, base
, containers
, interpolate
, mtl
, stdenv
, template-haskell
, text
, th-abstraction
, unordered-containers
}:
mkDerivation {

pname = "aeson-typescript";
version = "0.1.0.6";
sha256 = "2d9aa1534d2cc86a7f95a5876d7ff28006c34dbead6fb7a03aa86d6f5e310187";
libraryHaskellDepends = [
aeson
base
containers
interpolate
mtl
template-haskell
text
th-abstraction
unordered-containers
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/codedownio/aeson-typescript#readme";
description = "Generate TypeScript definition files from your ADTs";
license = stdenv.lib.licenses.bsd3;

}) {};
"aeson-utils" = callPackage
({
  mkDerivation
, aeson
, attoparsec
, base
, bytestring
, scientific
, stdenv
, text
}:
mkDerivation {

pname = "aeson-utils";
version = "0.3.0.2";
sha256 = "71814b1be8849f945395eb81217a2ad464f2943134c50c09afd8a3126add4b1f";
revision = "7";
editedCabalFile = "0lnlmsn5imbapdhbza1175wm04ynn1w75llkhlk1akpanx1dnd15";
libraryHaskellDepends = [
aeson
attoparsec
base
bytestring
scientific
text
];
doHaddock = false;
doCheck = false;
description = "Utilities for working with Aeson";
license = stdenv.lib.licenses.bsd3;

}) {};
"aeson-yak" = callPackage
({
  mkDerivation
, aeson
, base
, stdenv
}:
mkDerivation {

pname = "aeson-yak";
version = "0.1.1.3";
sha256 = "af4355bc315a152592e9c06f5cc41bdb5ce7b236d85fe572a292c6bac02faa74";
libraryHaskellDepends = [
aeson
base
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/tejon/aeson-yak";
description = "Handle JSON that may or may not be a list, or exist";
license = stdenv.lib.licenses.mit;

}) {};
"airship" = callPackage
({
  mkDerivation
, attoparsec
, base
, base64-bytestring
, blaze-builder
, bytestring
, bytestring-trie
, case-insensitive
, containers
, cryptohash
, directory
, either
, filepath
, http-date
, http-media
, http-types
, lifted-base
, microlens
, mime-types
, mmorph
, monad-control
, mtl
, network
, old-locale
, random
, stdenv
, text
, time
, transformers
, transformers-base
, unix
, unordered-containers
, wai
, wai-extra
}:
mkDerivation {

pname = "airship";
version = "0.9.3";
sha256 = "e254837d9d667fcb70a2767ad486dfe2b8eb6577f3676abc3ec82227aa6d345a";
libraryHaskellDepends = [
attoparsec
base
base64-bytestring
blaze-builder
bytestring
bytestring-trie
case-insensitive
containers
cryptohash
directory
either
filepath
http-date
http-media
http-types
lifted-base
microlens
mime-types
mmorph
monad-control
mtl
network
old-locale
random
text
time
transformers
transformers-base
unix
unordered-containers
wai
wai-extra
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/helium/airship/";
description = "A Webmachine-inspired HTTP library";
license = stdenv.lib.licenses.mit;

}) {};
"alarmclock" = callPackage
({
  mkDerivation
, async
, base
, clock
, stdenv
, stm
, time
, unbounded-delays
}:
mkDerivation {

pname = "alarmclock";
version = "0.4.0.3";
sha256 = "b66f5b18b0efc4471b32704dd7bdb650d09629c5bc006e54f4354b1265650f5e";
libraryHaskellDepends = [
async
base
clock
stm
time
unbounded-delays
];
doHaddock = false;
doCheck = false;
homepage = "https://bitbucket.org/davecturner/alarmclock";
description = "Wake up and perform an action at a certain time";
license = stdenv.lib.licenses.bsd3;

}) {};
"alerts" = callPackage
({
  mkDerivation
, base
, blaze-html
, stdenv
, text
}:
mkDerivation {

pname = "alerts";
version = "0.1.0.0";
sha256 = "52418ed3abfff15e802506e5fb45f56d38eee020cb01af3f0acfe163c470ca68";
libraryHaskellDepends = [
base
blaze-html
text
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/alx741/alerts#readme";
description = "Alert messages for web applications";
license = stdenv.lib.licenses.bsd3;

}) {};
"alex" = callPackage
({
  mkDerivation
, array
, base
, containers
, directory
, happy
, stdenv
}:
mkDerivation {

pname = "alex";
version = "3.2.4";
sha256 = "d58e4d708b14ff332a8a8edad4fa8989cb6a9f518a7c6834e96281ac5f8ff232";
isLibrary = false;
isExecutable = true;
enableSeparateDataOutput = true;
executableHaskellDepends = [
array
base
containers
directory
];
executableToolDepends = [
happy
];
doHaddock = false;
doCheck = false;
homepage = "http://www.haskell.org/alex/";
description = "Alex is a tool for generating lexical analysers in Haskell";
license = stdenv.lib.licenses.bsd3;

}) {};
"algebra" = callPackage
({
  mkDerivation
, adjunctions
, array
, base
, containers
, distributive
, mtl
, nats
, semigroupoids
, semigroups
, stdenv
, tagged
, transformers
, void
}:
mkDerivation {

pname = "algebra";
version = "4.3.1";
sha256 = "25982f929b6f9930ad4df7b2c4084da473178a6e1f33ccc556ec96ee6f541224";
libraryHaskellDepends = [
adjunctions
array
base
containers
distributive
mtl
nats
semigroupoids
semigroups
tagged
transformers
void
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/ekmett/algebra/";
description = "Constructive abstract algebra";
license = stdenv.lib.licenses.bsd3;

}) {};
"algebraic-graphs" = callPackage
({
  mkDerivation
, array
, base
, base-compat
, containers
, deepseq
, stdenv
}:
mkDerivation {

pname = "algebraic-graphs";
version = "0.1.1.1";
sha256 = "8747a7d6f7a328b6073c1904883087a6a8e9a02d3bd8a5e35174c5f1c1cd1231";
libraryHaskellDepends = [
array
base
base-compat
containers
deepseq
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/snowleopard/alga";
description = "A library for algebraic graph construction and transformation";
license = stdenv.lib.licenses.mit;

}) {};
"alsa-core" = callPackage
({
  mkDerivation
, alsaLib
, base
, extensible-exceptions
, stdenv
}:
mkDerivation {

pname = "alsa-core";
version = "0.5.0.1";
sha256 = "eb50495ef05ecc7c06a0147da7f0d3efde832a44d23caaf5172dc114882270ab";
libraryHaskellDepends = [
base
extensible-exceptions
];
libraryPkgconfigDepends = [
alsaLib
];
doHaddock = false;
doCheck = false;
homepage = "http://www.haskell.org/haskellwiki/ALSA";
description = "Binding to the ALSA Library API (Exceptions)";
license = stdenv.lib.licenses.bsd3;
platforms = [
"i686-linux"
"x86_64-linux"
];

}) {inherit (pkgs) alsaLib;};
"alsa-mixer" = callPackage
({
  mkDerivation
, alsa-core
, alsaLib
, base
, c2hs
, stdenv
, unix
}:
mkDerivation {

pname = "alsa-mixer";
version = "0.2.0.3";
sha256 = "f76deb4081a2ce4a765e78a017b2e13c073d2aaa5a2d2652fd5e635dd169cf8d";
libraryHaskellDepends = [
alsa-core
base
unix
];
librarySystemDepends = [
alsaLib
];
libraryToolDepends = [
c2hs
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/ttuegel/alsa-mixer";
description = "Bindings to the ALSA simple mixer API";
license = stdenv.lib.licenses.bsd3;

}) {inherit (pkgs) alsaLib;};
"alsa-pcm" = callPackage
({
  mkDerivation
, alsa-core
, alsaLib
, array
, base
, extensible-exceptions
, sample-frame
, semigroups
, stdenv
, storable-record
}:
mkDerivation {

pname = "alsa-pcm";
version = "0.6.1";
sha256 = "453d768f7b90aaa0b5fd5462bcd7f8f40a97aa9d0ca7dfc7e61fe69e74934e5d";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
alsa-core
array
base
extensible-exceptions
sample-frame
semigroups
storable-record
];
libraryPkgconfigDepends = [
alsaLib
];
doHaddock = false;
doCheck = false;
homepage = "http://www.haskell.org/haskellwiki/ALSA";
description = "Binding to the ALSA Library API (PCM audio)";
license = stdenv.lib.licenses.bsd3;

}) {inherit (pkgs) alsaLib;};
"alsa-seq" = callPackage
({
  mkDerivation
, alsa-core
, alsaLib
, array
, base
, bytestring
, data-accessor
, enumset
, extensible-exceptions
, poll
, stdenv
, transformers
, utility-ht
}:
mkDerivation {

pname = "alsa-seq";
version = "0.6.0.7";
sha256 = "06cda1e24993aaf0c3592b51a613cf1e187eea603dd77ad3a129a8a7b1e0b778";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
alsa-core
array
base
bytestring
data-accessor
enumset
extensible-exceptions
poll
transformers
utility-ht
];
libraryPkgconfigDepends = [
alsaLib
];
doHaddock = false;
doCheck = false;
homepage = "http://www.haskell.org/haskellwiki/ALSA";
description = "Binding to the ALSA Library API (MIDI sequencer)";
license = stdenv.lib.licenses.bsd3;

}) {inherit (pkgs) alsaLib;};
"alternative-vector" = callPackage
({
  mkDerivation
, base
, stdenv
, vector
}:
mkDerivation {

pname = "alternative-vector";
version = "0.0.0";
sha256 = "42474bc708dbc81e13a7850887cefc2596db47cb07423610094cd994f754c7b1";
libraryHaskellDepends = [
base
vector
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/athanclark/alternative-vector#readme";
description = "Use vectors instead of lists for many and some";
license = stdenv.lib.licenses.bsd3;

}) {};
"alternators" = callPackage
({
  mkDerivation
, base
, mmorph
, stdenv
, transformers
}:
mkDerivation {

pname = "alternators";
version = "0.1.2.0";
sha256 = "afe401a4a5ccef58a503f31fd9cf0fdc9618333772e9a80fb5a2696b22f422a6";
libraryHaskellDepends = [
base
mmorph
transformers
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/louispan/alternators#readme";
description = "Handy functions when using transformers";
license = stdenv.lib.licenses.bsd3;

}) {};
"amqp" = callPackage
({
  mkDerivation
, base
, binary
, bytestring
, clock
, connection
, containers
, data-binary-ieee754
, monad-control
, network
, network-uri
, split
, stdenv
, stm
, text
, vector
, xml
}:
mkDerivation {

pname = "amqp";
version = "0.18.1";
sha256 = "4678e2eb976df97e27cacbc4b1feafeb5a1800a9779b0a36666f04804f43e248";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
base
binary
bytestring
clock
connection
containers
data-binary-ieee754
monad-control
network
network-uri
split
stm
text
vector
];
executableHaskellDepends = [
base
containers
xml
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/hreinhardt/amqp";
description = "Client library for AMQP servers (currently only RabbitMQ)";
license = stdenv.lib.licenses.bsd3;

}) {};
"annotated-wl-pprint" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "annotated-wl-pprint";
version = "0.7.0";
sha256 = "0c262d7fe13a9a50216438ec882c13e25f31236b886a5692e3c35b85cd773d18";
revision = "1";
editedCabalFile = "138k24qxvl90l7dwdw1b3w36mpw93n0xi0nljblqg88pxg7jcvjx";
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/david-christiansen/annotated-wl-pprint";
description = "The Wadler/Leijen Pretty Printer, with annotation support";
license = stdenv.lib.licenses.bsd3;

}) {};
"ansi-terminal" = callPackage
({
  mkDerivation
, base
, colour
, stdenv
}:
mkDerivation {

pname = "ansi-terminal";
version = "0.8.0.4";
sha256 = "eb3cb8b0d0ce1c67ae3146c0b73a83e640c6f049d36bd6e859b6b951117e4810";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
base
colour
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/feuerbach/ansi-terminal";
description = "Simple ANSI terminal support, with Windows compatibility";
license = stdenv.lib.licenses.bsd3;

}) {};
"ansi-wl-pprint" = callPackage
({
  mkDerivation
, ansi-terminal
, base
, stdenv
}:
mkDerivation {

pname = "ansi-wl-pprint";
version = "0.6.8.2";
sha256 = "a630721bd57678c3bfeb6c703f8249e434cbf85f40daceec4660fb8c6725cb3e";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
ansi-terminal
base
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/ekmett/ansi-wl-pprint";
description = "The Wadler/Leijen Pretty Printer for colored ANSI terminal output";
license = stdenv.lib.licenses.bsd3;

}) {};
"ansigraph" = callPackage
({
  mkDerivation
, ansi-terminal
, base
, stdenv
}:
mkDerivation {

pname = "ansigraph";
version = "0.3.0.5";
sha256 = "2e8dcf6b182c0b0608f515582b780b7b9cf73a63ec8d1f4bf9ce4b3063397a0e";
libraryHaskellDepends = [
ansi-terminal
base
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/BlackBrane/ansigraph";
description = "Terminal-based graphing via ANSI and Unicode";
license = stdenv.lib.licenses.mit;

}) {};
"apecs" = callPackage
({
  mkDerivation
, async
, base
, containers
, mtl
, stdenv
, template-haskell
, vector
}:
mkDerivation {

pname = "apecs";
version = "0.2.4.7";
sha256 = "1ad954536d6ed1c7f576c8bfd7150d9e69e6e1aa6c19dfe0691f21230a061d43";
libraryHaskellDepends = [
async
base
containers
mtl
template-haskell
vector
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/jonascarpay/apecs#readme";
description = "A fast ECS for game engine programming";
license = stdenv.lib.licenses.bsd3;

}) {};
"api-field-json-th" = callPackage
({
  mkDerivation
, aeson
, base
, lens
, split
, stdenv
, template-haskell
, text
}:
mkDerivation {

pname = "api-field-json-th";
version = "0.1.0.2";
sha256 = "b8d49c3869bc8104539c43d5544ed2271d1e68a963440d781ee71d2252b0f724";
libraryHaskellDepends = [
aeson
base
lens
split
template-haskell
text
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/nakaji-dayo/api-field-json-th";
description = "option of aeson's deriveJSON";
license = stdenv.lib.licenses.bsd3;

}) {};
"app-settings" = callPackage
({
  mkDerivation
, base
, containers
, directory
, mtl
, parsec
, stdenv
, text
}:
mkDerivation {

pname = "app-settings";
version = "0.2.0.11";
sha256 = "6a14c69aca4e55cf27933475f5ae0ffead3a83f69f4233896eb13c41dccd50b1";
libraryHaskellDepends = [
base
containers
directory
mtl
parsec
text
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/emmanueltouzery/app-settings";
description = "A library to manage application settings (INI file-like)";
license = stdenv.lib.licenses.bsd3;

}) {};
"appar" = callPackage
({
  mkDerivation
, base
, bytestring
, stdenv
}:
mkDerivation {

pname = "appar";
version = "0.1.4";
sha256 = "58ea66abe4dd502d2fc01eecdb0828d5e214704a3c1b33b1f8b33974644c4b26";
libraryHaskellDepends = [
base
bytestring
];
doHaddock = false;
doCheck = false;
description = "A simple applicative parser";
license = stdenv.lib.licenses.bsd3;

}) {};
"apply-refact" = callPackage
({
  mkDerivation
, base
, containers
, directory
, filemanip
, filepath
, ghc
, ghc-exactprint
, mtl
, optparse-applicative
, process
, refact
, stdenv
, syb
, temporary
, transformers
, unix-compat
}:
mkDerivation {

pname = "apply-refact";
version = "0.4.1.0";
sha256 = "7c8eb33266ea4d8e3c668aa1f2f322421b78a83456703e2d0749edec79731502";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
base
containers
directory
filemanip
ghc
ghc-exactprint
mtl
process
refact
syb
temporary
transformers
unix-compat
];
executableHaskellDepends = [
base
containers
directory
filemanip
filepath
ghc
ghc-exactprint
mtl
optparse-applicative
process
refact
syb
temporary
transformers
unix-compat
];
doHaddock = false;
doCheck = false;
description = "Perform refactorings specified by the refact library";
license = stdenv.lib.licenses.bsd3;

}) {};
"apportionment" = callPackage
({
  mkDerivation
, base
, containers
, stdenv
, utility-ht
}:
mkDerivation {

pname = "apportionment";
version = "0.0.0.2";
sha256 = "352d9564ffdb01d3312a1087f8badc544b3478185cbc27d4ca29fc1f18c9f82b";
libraryHaskellDepends = [
base
containers
utility-ht
];
doHaddock = false;
doCheck = false;
homepage = "http://hub.darcs.net/thielema/apportionment";
description = "Round a set of numbers while maintaining its sum";
license = stdenv.lib.licenses.bsd3;

}) {};
"approximate" = callPackage
({
  mkDerivation
, base
, binary
, bytes
, Cabal
, cabal-doctest
, cereal
, comonad
, deepseq
, ghc-prim
, hashable
, lens
, log-domain
, pointed
, safecopy
, semigroupoids
, semigroups
, stdenv
, vector
}:
mkDerivation {

pname = "approximate";
version = "0.3.1";
sha256 = "d837f716d9e73d68a53a17321f0433dd9ffe71df24d550aed6a34ec1c2ad2ea2";
setupHaskellDepends = [
base
Cabal
cabal-doctest
];
libraryHaskellDepends = [
base
binary
bytes
cereal
comonad
deepseq
ghc-prim
hashable
lens
log-domain
pointed
safecopy
semigroupoids
semigroups
vector
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/analytics/approximate/";
description = "Approximate discrete values and numbers";
license = stdenv.lib.licenses.bsd3;

}) {};
"arithmoi" = callPackage
({
  mkDerivation
, array
, base
, containers
, exact-pi
, ghc-prim
, integer-gmp
, integer-logarithms
, mtl
, random
, stdenv
}:
mkDerivation {

pname = "arithmoi";
version = "0.6.0.1";
sha256 = "15cffd4c0349024fd5649b5f37c14ff0dc9e9177a4808c796a20c45d72291936";
revision = "3";
editedCabalFile = "1ah8b17pxa96gdap3sr7872km29lz95bqjwswqzfkirig2njlf9q";
configureFlags = [
"-f-llvm"
];
libraryHaskellDepends = [
array
base
containers
exact-pi
ghc-prim
integer-gmp
integer-logarithms
mtl
random
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/cartazio/arithmoi";
description = "Efficient basic number-theoretic functions";
license = stdenv.lib.licenses.mit;

}) {};
"array-memoize" = callPackage
({
  mkDerivation
, array
, base
, stdenv
}:
mkDerivation {

pname = "array-memoize";
version = "0.6.0";
sha256 = "76c88cb3ed04875821a5601f6a1c40f4e15ef8cb36e8a3d4004df956d1db05dc";
libraryHaskellDepends = [
array
base
];
doHaddock = false;
doCheck = false;
description = "Memoization combinators using arrays for finite sub-domains of functions";
license = stdenv.lib.licenses.bsd3;

}) {};
"arrow-extras" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "arrow-extras";
version = "0.1.0.1";
sha256 = "c13c3aba839d1ec78a49991fa4038a68c5eb9ef6da61eceb6e68bc3ce0586a6c";
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/louispan/arrow-extras#readme";
description = "Extra functions for Control.Arrow";
license = stdenv.lib.licenses.bsd3;

}) {};
"arrow-list" = callPackage
({
  mkDerivation
, base
, containers
, mtl
, stdenv
}:
mkDerivation {

pname = "arrow-list";
version = "0.7";
sha256 = "33f836f23648aa2cea11533f7a9941127c397eecdca105b2084dded9e039d5d8";
libraryHaskellDepends = [
base
containers
mtl
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/silkapp/arrow-list";
description = "List arrows for Haskell";
license = stdenv.lib.licenses.bsd3;

}) {};
"ascii-progress" = callPackage
({
  mkDerivation
, async
, base
, concurrent-output
, data-default
, stdenv
, time
}:
mkDerivation {

pname = "ascii-progress";
version = "0.3.3.0";
sha256 = "7e3fa6b80c09a83c9ba8a0644ef304ca92d65b76383b8dd023ff9f89ebec913e";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
async
base
concurrent-output
data-default
time
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/yamadapc/haskell-ascii-progress";
description = "A simple progress bar for the console";
license = stdenv.lib.licenses.mit;

}) {};
"asciidiagram" = callPackage
({
  mkDerivation
, base
, bytestring
, containers
, directory
, filepath
, FontyFruity
, JuicyPixels
, lens
, linear
, mtl
, optparse-applicative
, rasterific-svg
, stdenv
, svg-tree
, text
, vector
}:
mkDerivation {

pname = "asciidiagram";
version = "1.3.3.1";
sha256 = "9ee69ca0abb42379070c3d6d51df1fa522438a6472db035c74e01744626c92a4";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
base
bytestring
containers
FontyFruity
JuicyPixels
lens
linear
mtl
rasterific-svg
svg-tree
text
vector
];
executableHaskellDepends = [
base
bytestring
directory
filepath
FontyFruity
JuicyPixels
optparse-applicative
rasterific-svg
svg-tree
text
];
doHaddock = false;
doCheck = false;
description = "Pretty rendering of Ascii diagram into svg or png";
license = stdenv.lib.licenses.bsd3;

}) {};
"asn1-encoding" = callPackage
({
  mkDerivation
, asn1-types
, base
, bytestring
, hourglass
, stdenv
}:
mkDerivation {

pname = "asn1-encoding";
version = "0.9.5";
sha256 = "1e863bfd363f6c3760cc80f2c0d422e17845a9f79fe006030db202ecab5aaf29";
libraryHaskellDepends = [
asn1-types
base
bytestring
hourglass
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/vincenthz/hs-asn1";
description = "ASN1 data reader and writer in RAW, BER and DER forms";
license = stdenv.lib.licenses.bsd3;

}) {};
"asn1-parse" = callPackage
({
  mkDerivation
, asn1-encoding
, asn1-types
, base
, bytestring
, stdenv
}:
mkDerivation {

pname = "asn1-parse";
version = "0.9.4";
sha256 = "c6a328f570c69db73f8d2416f9251e8a03753f90d5d19e76cbe69509a3ceb708";
libraryHaskellDepends = [
asn1-encoding
asn1-types
base
bytestring
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/vincenthz/hs-asn1";
description = "Simple monadic parser for ASN1 stream types";
license = stdenv.lib.licenses.bsd3;

}) {};
"asn1-types" = callPackage
({
  mkDerivation
, base
, bytestring
, hourglass
, memory
, stdenv
}:
mkDerivation {

pname = "asn1-types";
version = "0.3.2";
sha256 = "0c571fff4a10559c6a630d4851ba3cdf1d558185ce3dcfca1136f9883d647217";
libraryHaskellDepends = [
base
bytestring
hourglass
memory
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/vincenthz/hs-asn1-types";
description = "ASN.1 types";
license = stdenv.lib.licenses.bsd3;

}) {};
"assert-failure" = callPackage
({
  mkDerivation
, base
, pretty-show
, stdenv
, text
}:
mkDerivation {

pname = "assert-failure";
version = "0.1.2.2";
sha256 = "f69416fd527b4f6933586edfc9ee741a2163c3741471e9b8e46a244495bd4a9d";
enableSeparateDataOutput = true;
libraryHaskellDepends = [
base
pretty-show
text
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/Mikolaj/assert-failure";
description = "Syntactic sugar improving 'assert' and 'error'";
license = stdenv.lib.licenses.bsd3;

}) {};
"astro" = callPackage
({
  mkDerivation
, base
, matrix
, stdenv
, time
}:
mkDerivation {

pname = "astro";
version = "0.4.2.0";
sha256 = "86fdc23f0420d46e5cf65cb657c448a61c9398163c312ecb8b4344925ffd47ae";
libraryHaskellDepends = [
base
matrix
time
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/alexander-ignatyev/astro";
description = "Amateur astronomical computations";
license = stdenv.lib.licenses.bsd3;

}) {};
"async" = callPackage
({
  mkDerivation
, base
, stdenv
, stm
}:
mkDerivation {

pname = "async";
version = "2.1.1.1";
sha256 = "cd83e471466ea6885b2e8fb60f452db3ac3fdf3ea2d6370aa1e071ebc37544e2";
libraryHaskellDepends = [
base
stm
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/simonmar/async";
description = "Run IO operations asynchronously and wait for their results";
license = stdenv.lib.licenses.bsd3;

}) {};
"async-extra" = callPackage
({
  mkDerivation
, async
, base
, deepseq
, split
, stdenv
}:
mkDerivation {

pname = "async-extra";
version = "0.2.0.0";
sha256 = "0d06d5a5cb835597ff1668ae58a1f0d048830164876838533dec4a78eb11cc43";
libraryHaskellDepends = [
async
base
deepseq
split
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/agrafix/async-extra#readme";
description = "Useful concurrent combinators";
license = stdenv.lib.licenses.mit;

}) {};
"async-refresh" = callPackage
({
  mkDerivation
, base
, formatting
, lifted-async
, microlens
, microlens-th
, monad-control
, monad-logger
, safe-exceptions
, stdenv
, stm
, text
}:
mkDerivation {

pname = "async-refresh";
version = "0.2.0.2";
sha256 = "9a328b67a12980b26360ae7dac30a92f059f78327ead2e2ccf22bcfd6c8201c3";
libraryHaskellDepends = [
base
formatting
lifted-async
microlens
microlens-th
monad-control
monad-logger
safe-exceptions
stm
text
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/mtesseract/async-refresh";
description = "Package implementing core logic for refreshing of expiring data";
license = stdenv.lib.licenses.bsd3;

}) {};
"async-refresh-tokens" = callPackage
({
  mkDerivation
, async-refresh
, base
, bytestring
, formatting
, lifted-async
, microlens
, microlens-th
, monad-control
, monad-logger
, safe-exceptions
, stdenv
, stm
, text
}:
mkDerivation {

pname = "async-refresh-tokens";
version = "0.3.0.1";
sha256 = "bdedc61d44eac7a36442f1a3af51d9a9e7b84901e1fe316a96b9286a5bfea796";
libraryHaskellDepends = [
async-refresh
base
bytestring
formatting
lifted-async
microlens
microlens-th
monad-control
monad-logger
safe-exceptions
stm
text
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/mtesseract/async-refresh-tokens#readme";
description = "Package implementing core logic for refreshing of expiring access tokens";
license = stdenv.lib.licenses.bsd3;

}) {};
"async-timer" = callPackage
({
  mkDerivation
, base
, lifted-async
, lifted-base
, monad-control
, safe-exceptions
, stdenv
, transformers-base
}:
mkDerivation {

pname = "async-timer";
version = "0.1.4.1";
sha256 = "c2aa4d89792e6f21367122f4d9f1d5cafdf1e04a5a82fb566ec508453a83a398";
libraryHaskellDepends = [
base
lifted-async
lifted-base
monad-control
safe-exceptions
transformers-base
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/mtesseract/async-timer#readme";
description = "Provides API for timer based execution of IO actions";
license = stdenv.lib.licenses.bsd3;

}) {};
"atom-basic" = callPackage
({
  mkDerivation
, base
, base64-bytestring
, bytestring
, network
, network-uri
, stdenv
, text
, time
}:
mkDerivation {

pname = "atom-basic";
version = "0.2.5";
sha256 = "24be9667b8bad3ad63b2e9b42fdea5aa0fd96f7e90f52fb1203adfa71d2f75ee";
libraryHaskellDepends = [
base
base64-bytestring
bytestring
network
network-uri
text
time
];
doHaddock = false;
doCheck = false;
description = "Basic Atom feed construction";
license = stdenv.lib.licenses.bsd3;

}) {};
"atom-conduit" = callPackage
({
  mkDerivation
, base
, blaze-builder
, conduit
, conduit-combinators
, lens-simple
, mono-traversable
, parsers
, safe-exceptions
, stdenv
, text
, time
, timerep
, uri-bytestring
, xml-conduit
, xml-types
}:
mkDerivation {

pname = "atom-conduit";
version = "0.5.0.1";
sha256 = "8c88c5c77567753b56163bfa596f50a9cfdde28796e66bb194ca6d9057e831cd";
libraryHaskellDepends = [
base
blaze-builder
conduit
conduit-combinators
lens-simple
mono-traversable
parsers
safe-exceptions
text
time
timerep
uri-bytestring
xml-conduit
xml-types
];
doHaddock = false;
doCheck = false;
description = "Streaming parser/renderer for the Atom 1.0 standard (RFC 4287).";
license = stdenv.lib.licenses.publicDomain;

}) {};
"atomic-primops" = callPackage
({
  mkDerivation
, base
, ghc-prim
, primitive
, stdenv
}:
mkDerivation {

pname = "atomic-primops";
version = "0.8.2";
sha256 = "67f8872e0c1e634d819a967365eb4ad514e9b2cde967fbc710da7cdc4d17d933";
libraryHaskellDepends = [
base
ghc-prim
primitive
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/rrnewton/haskell-lockfree/wiki";
description = "A safe approach to CAS and other atomic ops in Haskell";
license = stdenv.lib.licenses.bsd3;

}) {};
"atomic-write" = callPackage
({
  mkDerivation
, base
, bytestring
, directory
, filepath
, stdenv
, temporary
, text
, unix-compat
}:
mkDerivation {

pname = "atomic-write";
version = "0.2.0.5";
sha256 = "dbc7b4c31c734ad12d8f6c05b5d1384ee57f50ad8ff1a703d560b39e2f0458c5";
libraryHaskellDepends = [
base
bytestring
directory
filepath
temporary
text
unix-compat
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/stackbuilders/atomic-write";
description = "Atomically write to a file";
license = stdenv.lib.licenses.mit;

}) {};
"attoparsec" = callPackage
({
  mkDerivation
, array
, base
, bytestring
, containers
, deepseq
, scientific
, stdenv
, text
, transformers
}:
mkDerivation {

pname = "attoparsec";
version = "0.13.2.2";
sha256 = "dd93471eb969172cc4408222a3842d867adda3dd7fb39ad8a4df1b121a67d848";
libraryHaskellDepends = [
array
base
bytestring
containers
deepseq
scientific
text
transformers
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/bos/attoparsec";
description = "Fast combinator parsing for bytestrings and text";
license = stdenv.lib.licenses.bsd3;

}) {};
"attoparsec-binary" = callPackage
({
  mkDerivation
, attoparsec
, base
, bytestring
, stdenv
}:
mkDerivation {

pname = "attoparsec-binary";
version = "0.2";
sha256 = "05e6445b20b396c99275de3e37bf8bb18559a5666ad5136907857bf574e77a0b";
libraryHaskellDepends = [
attoparsec
base
bytestring
];
doHaddock = false;
doCheck = false;
description = "Binary processing extensions to Attoparsec";
license = stdenv.lib.licenses.bsd3;

}) {};
"attoparsec-expr" = callPackage
({
  mkDerivation
, attoparsec
, base
, stdenv
}:
mkDerivation {

pname = "attoparsec-expr";
version = "0.1.1.2";
sha256 = "8d4cd436112ce9007d2831776d4c5102a5322c48993229d2d41e259c07bb457c";
libraryHaskellDepends = [
attoparsec
base
];
doHaddock = false;
doCheck = false;
description = "Port of parsec's expression parser to attoparsec";
license = stdenv.lib.licenses.bsd3;

}) {};
"attoparsec-ip" = callPackage
({
  mkDerivation
, attoparsec
, base
, ip
, stdenv
}:
mkDerivation {

pname = "attoparsec-ip";
version = "0.0.1";
sha256 = "8da5ca8ae483bbb8dacfae3a888fa9438f55f84f8605e7c769091ee5b6555629";
libraryHaskellDepends = [
attoparsec
base
ip
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/athanclark/attoparsec-ip#readme";
description = "Parse IP data types with attoparsec";
license = stdenv.lib.licenses.bsd3;

}) {};
"attoparsec-iso8601" = callPackage
({
  mkDerivation
, attoparsec
, base
, base-compat
, stdenv
, text
, time
}:
mkDerivation {

pname = "attoparsec-iso8601";
version = "1.0.0.0";
sha256 = "aa6c6d87587383e386cb85e7ffcc4a6317aa8dafb8ba9a104ecac365ce2a858a";
revision = "1";
editedCabalFile = "06f7pgmmc8456p3hc1y23kz1y127gfczy7s00wz1rls9g2sm2vi4";
libraryHaskellDepends = [
attoparsec
base
base-compat
text
time
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/bos/aeson";
description = "Parsing of ISO 8601 dates, originally from aeson";
license = stdenv.lib.licenses.bsd3;

}) {};
"attoparsec-path" = callPackage
({
  mkDerivation
, attoparsec
, base
, path
, stdenv
, text
}:
mkDerivation {

pname = "attoparsec-path";
version = "0.0.0.1";
sha256 = "d07126622210fdb18722f585c61bda0a17389aecc83e786f9f6e621ec120b60c";
libraryHaskellDepends = [
attoparsec
base
path
text
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/athanclark/attoparsec-path#readme";
description = "Convenience bindings between path and attoparsec";
license = stdenv.lib.licenses.bsd3;

}) {};
"attoparsec-time" = callPackage
({
  mkDerivation
, attoparsec
, base
, base-prelude
, bytestring
, Cabal
, cabal-doctest
, scientific
, stdenv
, text
, time
}:
mkDerivation {

pname = "attoparsec-time";
version = "1";
sha256 = "d4eb479267ec32eaa27584fa8cabe4f952361f696eb4085340ba64b378cb0618";
setupHaskellDepends = [
base
Cabal
cabal-doctest
];
libraryHaskellDepends = [
attoparsec
base
base-prelude
bytestring
scientific
text
time
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/nikita-volkov/attoparsec-time";
description = "Attoparsec parsers of time";
license = stdenv.lib.licenses.mit;

}) {};
"attoparsec-uri" = callPackage
({
  mkDerivation
, attoparsec
, attoparsec-ip
, base
, bytedump
, ip
, stdenv
, strict
, text
, vector
}:
mkDerivation {

pname = "attoparsec-uri";
version = "0.0.4";
sha256 = "4e032ccaa65f96edac79556431ade75ad400371d0a5c19aeed6a7adbd3d2f1f3";
libraryHaskellDepends = [
attoparsec
attoparsec-ip
base
bytedump
ip
strict
text
vector
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/athanclark/attoparsec-uri#readme";
description = "URI parser / printer using attoparsec";
license = stdenv.lib.licenses.bsd3;

}) {};
"audacity" = callPackage
({
  mkDerivation
, base
, bytestring
, deepseq
, directory
, explicit-exception
, filepath
, non-empty
, semigroups
, stdenv
, storable-record
, storablevector
, tagchup
, transformers
, utility-ht
, xml-basic
}:
mkDerivation {

pname = "audacity";
version = "0.0.2";
sha256 = "d9d2dfb1c4e6ad39b535561feb720a7889dc1151ad6625fd5522d4212dbc26a4";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
base
bytestring
deepseq
directory
explicit-exception
filepath
non-empty
semigroups
storable-record
storablevector
tagchup
transformers
utility-ht
xml-basic
];
doHaddock = false;
doCheck = false;
homepage = "http://hub.darcs.net/thielema/audacity";
description = "Interchange with the Audacity sound signal editor";
license = stdenv.lib.licenses.bsd3;

}) {};
"authenticate" = callPackage
({
  mkDerivation
, aeson
, attoparsec
, base
, blaze-builder
, bytestring
, case-insensitive
, conduit
, containers
, http-conduit
, http-types
, network-uri
, resourcet
, stdenv
, tagstream-conduit
, text
, transformers
, unordered-containers
, xml-conduit
}:
mkDerivation {

pname = "authenticate";
version = "1.3.4";
sha256 = "3fd566dbfdf75d81ad1bebd19facb9f01509ead6e27d9aed802404ecde932fb8";
libraryHaskellDepends = [
aeson
attoparsec
base
blaze-builder
bytestring
case-insensitive
conduit
containers
http-conduit
http-types
network-uri
resourcet
tagstream-conduit
text
transformers
unordered-containers
xml-conduit
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/yesodweb/authenticate";
description = "Authentication methods for Haskell web applications";
license = stdenv.lib.licenses.mit;

}) {};
"authenticate-oauth" = callPackage
({
  mkDerivation
, base
, base64-bytestring
, blaze-builder
, bytestring
, crypto-pubkey-types
, data-default
, http-client
, http-types
, random
, RSA
, SHA
, stdenv
, time
, transformers
, transformers-compat
}:
mkDerivation {

pname = "authenticate-oauth";
version = "1.6";
sha256 = "d26d9f10fd57e06fa2af066df65e578ff3ec7541efc3e6648b29a743b13f8375";
revision = "1";
editedCabalFile = "1fxwn8bn6qs8dhxq0q04psq7zp1qvw1b6g3vmsclgyj9p7kr77ms";
libraryHaskellDepends = [
base
base64-bytestring
blaze-builder
bytestring
crypto-pubkey-types
data-default
http-client
http-types
random
RSA
SHA
time
transformers
transformers-compat
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/yesodweb/authenticate";
description = "Library to authenticate with OAuth for Haskell web applications";
license = stdenv.lib.licenses.bsd3;

}) {};
"auto" = callPackage
({
  mkDerivation
, base
, base-orphans
, bytestring
, cereal
, containers
, deepseq
, MonadRandom
, profunctors
, random
, semigroups
, stdenv
, transformers
}:
mkDerivation {

pname = "auto";
version = "0.4.3.1";
sha256 = "c6e26d1cbb17e3645e55bc8e9432b124520fbcba5ff32445acd4260c25cd3b41";
libraryHaskellDepends = [
base
base-orphans
bytestring
cereal
containers
deepseq
MonadRandom
profunctors
random
semigroups
transformers
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/mstksg/auto";
description = "Denotative, locally stateful programming DSL & platform";
license = stdenv.lib.licenses.mit;

}) {};
"auto-update" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "auto-update";
version = "0.1.4";
sha256 = "5e96c151024e8bcaf4eaa932e16995872b2017f46124b967e155744d9580b425";
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/yesodweb/wai";
description = "Efficiently run periodic, on-demand actions";
license = stdenv.lib.licenses.mit;

}) {};
"autoexporter" = callPackage
({
  mkDerivation
, base
, Cabal
, directory
, filepath
, stdenv
}:
mkDerivation {

pname = "autoexporter";
version = "1.1.9";
sha256 = "3b0d44d191796eb4d9645d3193b09befaf3fcea911562ce5b5cbc9e7acb4a042";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
base
Cabal
directory
filepath
];
executableHaskellDepends = [
base
Cabal
directory
filepath
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/tfausak/autoexporter#readme";
description = "Automatically re-export modules";
license = stdenv.lib.licenses.mit;

}) {};
"avwx" = callPackage
({
  mkDerivation
, attoparsec
, base
, HTTP
, lens
, optparse-applicative
, parsers
, pretty-show
, stdenv
, text
}:
mkDerivation {

pname = "avwx";
version = "0.3.0.2";
sha256 = "b4299cc4e05a4c94f53d06f05b30baac1e15c59663b59afd1dd32417a280fb0a";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
attoparsec
base
HTTP
lens
parsers
text
];
executableHaskellDepends = [
base
optparse-applicative
pretty-show
text
];
doHaddock = false;
doCheck = false;
homepage = "https://www.hcesperer.org/posts/2016-09-20-avwx.html";
description = "Parse aviation weather reports";
license = stdenv.lib.licenses.mit;

}) {};
"axiom" = callPackage
({
  mkDerivation
, base
, bytestring
, containers
, directory
, ghcjs-perch
, mtl
, stdenv
, transformers
, transient
, transient-universe
}:
mkDerivation {

pname = "axiom";
version = "0.4.6";
sha256 = "8365128ce841379023fee062c16ad1d31c27260f5d994a0a49d9d1fae7cae844";
libraryHaskellDepends = [
base
bytestring
containers
directory
ghcjs-perch
mtl
transformers
transient
transient-universe
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/transient-haskell/axiom";
description = "Web EDSL for running in browsers and server nodes using transient";
license = stdenv.lib.licenses.mit;

}) {};
"b9" = callPackage
({
  mkDerivation
, aeson
, async
, base
, bifunctors
, binary
, boxes
, bytestring
, conduit
, conduit-extra
, ConfigFile
, directory
, filepath
, free
, hashable
, lens
, mtl
, optparse-applicative
, parallel
, parsec
, pretty
, pretty-show
, process
, QuickCheck
, random
, shake
, stdenv
, syb
, template
, text
, time
, transformers
, unordered-containers
, vector
, yaml
}:
mkDerivation {

pname = "b9";
version = "0.5.47";
sha256 = "df3b8cfa24cbb8798da6c39841112ee3395dfa72e1d7244e340e967e4f64ceca";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
aeson
async
base
bifunctors
binary
boxes
bytestring
conduit
conduit-extra
ConfigFile
directory
filepath
free
hashable
lens
mtl
parallel
parsec
pretty
pretty-show
process
QuickCheck
random
shake
syb
template
text
time
transformers
unordered-containers
vector
yaml
];
executableHaskellDepends = [
base
bytestring
directory
lens
optparse-applicative
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/sheyll/b9-vm-image-builder";
description = "A tool and library for building virtual machine images";
license = stdenv.lib.licenses.mit;

}) {};
"backprop" = callPackage
({
  mkDerivation
, base
, binary
, deepseq
, microlens
, primitive
, random
, reflection
, stdenv
, transformers
, type-combinators
, vector
}:
mkDerivation {

pname = "backprop";
version = "0.1.5.2";
sha256 = "d0d99f1757dd2988a47f40a5783e36d5233bc13214eea194de073c7b794b69d5";
libraryHaskellDepends = [
base
binary
deepseq
microlens
primitive
random
reflection
transformers
type-combinators
vector
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/mstksg/backprop#readme";
description = "Heterogeneous automatic differentation (backpropagation)";
license = stdenv.lib.licenses.bsd3;

}) {};
"bank-holidays-england" = callPackage
({
  mkDerivation
, base
, containers
, stdenv
, time
}:
mkDerivation {

pname = "bank-holidays-england";
version = "0.1.0.6";
sha256 = "57ed284bffdadcaf3dd26795de9815c032c5876034e5200216ae21ac94f434ab";
libraryHaskellDepends = [
base
containers
time
];
doHaddock = false;
doCheck = false;
homepage = "https://bitbucket.org/davecturner/bank-holidays-england";
description = "Calculation of bank holidays in England and Wales";
license = stdenv.lib.licenses.bsd3;

}) {};
"barrier" = callPackage
({
  mkDerivation
, base
, blaze-svg
, bytestring
, stdenv
, template-haskell
, text
, unordered-containers
}:
mkDerivation {

pname = "barrier";
version = "0.1.1";
sha256 = "6395da01eea1984c7bcc85c624b1b5dfbe0b6b764adeed7b04c9fa4d8de91ed9";
revision = "1";
editedCabalFile = "167akvi72l47gcqbq5609m24469pq0xmv0kjbmivnrxs796gh890";
isLibrary = true;
isExecutable = true;
enableSeparateDataOutput = true;
libraryHaskellDepends = [
base
blaze-svg
bytestring
template-haskell
text
unordered-containers
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/philopon/barrier";
description = "Shields.io style badge generator";
license = stdenv.lib.licenses.mit;

}) {};
"base-compat" = callPackage
({
  mkDerivation
, base
, stdenv
, unix
}:
mkDerivation {

pname = "base-compat";
version = "0.9.3";
sha256 = "7d602b0f0543fadbd598a090c738e9ce9b07a1896673dc27f1503ae3bea1a210";
libraryHaskellDepends = [
base
unix
];
doHaddock = false;
doCheck = false;
description = "A compatibility layer for base";
license = stdenv.lib.licenses.mit;

}) {};
"base-orphans" = callPackage
({
  mkDerivation
, base
, ghc-prim
, stdenv
}:
mkDerivation {

pname = "base-orphans";
version = "0.7";
sha256 = "0aaddc39e3d0bba13acfcf0009ef57bf91d2ee74b295041d63e14c6caf4dee14";
libraryHaskellDepends = [
base
ghc-prim
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/haskell-compat/base-orphans#readme";
description = "Backwards-compatible orphan instances for base";
license = stdenv.lib.licenses.mit;

}) {};
"base-prelude" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "base-prelude";
version = "1.2.1";
sha256 = "07f30ca0f620ce67dbd07f82793fe2de69492b6df7445c5676ec7e5288139ab8";
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/nikita-volkov/base-prelude";
description = "The most complete prelude formed solely from the \"base\" package";
license = stdenv.lib.licenses.mit;

}) {};
"base-unicode-symbols" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "base-unicode-symbols";
version = "0.2.2.4";
sha256 = "a2f841430fec32edba778b74bde83bf0170ada7c5e2e59d7187c8f06d92dcca9";
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
homepage = "http://haskell.org/haskellwiki/Unicode-symbols";
description = "Unicode alternatives for common functions and operators";
license = stdenv.lib.licenses.bsd3;

}) {};
"base16-bytestring" = callPackage
({
  mkDerivation
, base
, bytestring
, ghc-prim
, stdenv
}:
mkDerivation {

pname = "base16-bytestring";
version = "0.1.1.6";
sha256 = "5afe65a152c5418f5f4e3579a5e0d5ca19c279dc9bf31c1a371ccbe84705c449";
libraryHaskellDepends = [
base
bytestring
ghc-prim
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/bos/base16-bytestring";
description = "Fast base16 (hex) encoding and decoding for ByteStrings";
license = stdenv.lib.licenses.bsd3;

}) {};
"base32string" = callPackage
({
  mkDerivation
, aeson
, base
, binary
, bytestring
, stdenv
, text
}:
mkDerivation {

pname = "base32string";
version = "0.9.1";
sha256 = "9e931613aeba5f630f9292fc99131388f406e4b34d8f050515ed93aaf632ea32";
enableSeparateDataOutput = true;
libraryHaskellDepends = [
aeson
base
binary
bytestring
text
];
doHaddock = false;
doCheck = false;
homepage = "http://www.leonmergen.com/opensource.html";
description = "Fast and safe representation of a Base-32 string";
license = stdenv.lib.licenses.mit;

}) {};
"base58string" = callPackage
({
  mkDerivation
, aeson
, base
, binary
, bytestring
, stdenv
, text
}:
mkDerivation {

pname = "base58string";
version = "0.10.0";
sha256 = "3b72607dd76e30a5054acea656c3805f7191e27d67884a7db5fbc73c17e9c088";
enableSeparateDataOutput = true;
libraryHaskellDepends = [
aeson
base
binary
bytestring
text
];
doHaddock = false;
doCheck = false;
homepage = "http://www.leonmergen.com/opensource.html";
description = "Fast and safe representation of a Base-58 string";
license = stdenv.lib.licenses.mit;

}) {};
"base64-bytestring" = callPackage
({
  mkDerivation
, base
, bytestring
, stdenv
}:
mkDerivation {

pname = "base64-bytestring";
version = "1.0.0.1";
sha256 = "ab25abf4b00a2f52b270bc3ed43f1d59f16c8eec9d7dffb14df1e9265b233b50";
libraryHaskellDepends = [
base
bytestring
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/bos/base64-bytestring";
description = "Fast base64 encoding and decoding for ByteStrings";
license = stdenv.lib.licenses.bsd3;

}) {};
"base64-string" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "base64-string";
version = "0.2";
sha256 = "3ec896ca7261ad4ddeffbaa3bdf4d5cb61775250c303fca9929aa9a56acc705e";
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
homepage = "http://urchin.earth.li/~ian/cabal/base64-string/";
description = "Base64 implementation for String's";
license = "unknown";

}) {};
"basement" = callPackage
({
  mkDerivation
, base
, ghc-prim
, stdenv
}:
mkDerivation {

pname = "basement";
version = "0.0.7";
sha256 = "b501b9b378f35b80c60321031dbbf9ed7af46c66353f072e00f00abdd2244f70";
libraryHaskellDepends = [
base
ghc-prim
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/haskell-foundation/foundation";
description = "Foundation scrap box of array & string";
license = stdenv.lib.licenses.bsd3;

}) {};
"basic-prelude" = callPackage
({
  mkDerivation
, base
, bytestring
, containers
, filepath
, hashable
, stdenv
, text
, transformers
, unordered-containers
, vector
}:
mkDerivation {

pname = "basic-prelude";
version = "0.7.0";
sha256 = "10755f892548faa956b81b40d1d03ec6e94609fd8ec8e92be09b4453b7ad9379";
libraryHaskellDepends = [
base
bytestring
containers
filepath
hashable
text
transformers
unordered-containers
vector
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/snoyberg/basic-prelude#readme";
description = "An enhanced core prelude; a common foundation for alternate preludes";
license = stdenv.lib.licenses.mit;

}) {};
"bbdb" = callPackage
({
  mkDerivation
, base
, parsec
, stdenv
}:
mkDerivation {

pname = "bbdb";
version = "0.8";
sha256 = "dce7798cb8e46e1c0f7048579496cabeebddaba9b6233820fd0496723fbc2a5c";
libraryHaskellDepends = [
base
parsec
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/henrylaxen/bbdb";
description = "Ability to read, write, and modify BBDB files";
license = stdenv.lib.licenses.gpl3;

}) {};
"bcrypt" = callPackage
({
  mkDerivation
, base
, bytestring
, data-default
, entropy
, memory
, stdenv
}:
mkDerivation {

pname = "bcrypt";
version = "0.0.11";
sha256 = "e4331788eda7b65064d88930b4b7a50f5011bdec0ad46059d8c4ee6a5e72fcef";
libraryHaskellDepends = [
base
bytestring
data-default
entropy
memory
];
doHaddock = false;
doCheck = false;
description = "Haskell bindings to the bcrypt password hash";
license = stdenv.lib.licenses.bsd3;

}) {};
"beam-core" = callPackage
({
  mkDerivation
, aeson
, base
, bytestring
, containers
, dlist
, free
, ghc-prim
, hashable
, microlens
, mtl
, network-uri
, stdenv
, tagged
, text
, time
, vector-sized
}:
mkDerivation {

pname = "beam-core";
version = "0.7.2.1";
sha256 = "5c8e94dab94248189a53e89d515e696c882ffabb91b777c7b1e59d3cf2d5356d";
libraryHaskellDepends = [
aeson
base
bytestring
containers
dlist
free
ghc-prim
hashable
microlens
mtl
network-uri
tagged
text
time
vector-sized
];
doHaddock = false;
doCheck = false;
homepage = "http://travis.athougies.net/projects/beam.html";
description = "Type-safe, feature-complete SQL query and manipulation interface for Haskell";
license = stdenv.lib.licenses.mit;

}) {};
"beam-migrate" = callPackage
({
  mkDerivation
, aeson
, base
, beam-core
, bytestring
, containers
, deepseq
, dependent-map
, dependent-sum
, free
, ghc-prim
, hashable
, haskell-src-exts
, mtl
, parallel
, pqueue
, pretty
, scientific
, stdenv
, text
, time
, unordered-containers
, uuid-types
, vector
}:
mkDerivation {

pname = "beam-migrate";
version = "0.3.2.0";
sha256 = "0ee6121f57f67e60db32543be95085220ea1c6256784e878e5b40b75d911d5a8";
libraryHaskellDepends = [
aeson
base
beam-core
bytestring
containers
deepseq
dependent-map
dependent-sum
free
ghc-prim
hashable
haskell-src-exts
mtl
parallel
pqueue
pretty
scientific
text
time
unordered-containers
uuid-types
vector
];
doHaddock = false;
doCheck = false;
homepage = "https://travis.athougies.net/projects/beam.html";
description = "SQL DDL support and migrations support library for Beam";
license = stdenv.lib.licenses.mit;

}) {};
"beam-sqlite" = callPackage
({
  mkDerivation
, aeson
, attoparsec
, base
, beam-core
, beam-migrate
, bytestring
, dlist
, free
, hashable
, mtl
, network-uri
, scientific
, sqlite-simple
, stdenv
, text
, time
, unix
}:
mkDerivation {

pname = "beam-sqlite";
version = "0.3.2.0";
sha256 = "3a65aaed83ab8bac030253bafcbcac2d1108c5e66f5272d1098261daa4d2951a";
libraryHaskellDepends = [
aeson
attoparsec
base
beam-core
beam-migrate
bytestring
dlist
free
hashable
mtl
network-uri
scientific
sqlite-simple
text
time
unix
];
doHaddock = false;
doCheck = false;
homepage = "http://tathougies.github.io/beam/user-guide/backends/beam-sqlite/";
description = "Beam driver for SQLite";
license = stdenv.lib.licenses.mit;

}) {};
"bench" = callPackage
({
  mkDerivation
, base
, criterion
, optparse-applicative
, process
, silently
, stdenv
, text
, turtle
}:
mkDerivation {

pname = "bench";
version = "1.0.9";
sha256 = "3c43d5b28abd7d07617ce5bf44756e8922db2dfbb39d7b123427b20eb8a9a830";
isLibrary = false;
isExecutable = true;
executableHaskellDepends = [
base
criterion
optparse-applicative
process
silently
text
turtle
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/Gabriel439/bench";
description = "Command-line benchmark tool";
license = stdenv.lib.licenses.bsd3;

}) {};
"benchpress" = callPackage
({
  mkDerivation
, base
, bytestring
, mtl
, stdenv
, time
}:
mkDerivation {

pname = "benchpress";
version = "0.2.2.10";
sha256 = "e6b0c5ef9e880a866cb438cc1c7efe83bc69ddbc5b0e941833495e43456f39c7";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
base
mtl
time
];
executableHaskellDepends = [
base
bytestring
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/WillSewell/benchpress";
description = "Micro-benchmarking with detailed statistics";
license = stdenv.lib.licenses.bsd3;

}) {};
"bencode" = callPackage
({
  mkDerivation
, base
, binary
, bytestring
, containers
, parsec
, stdenv
}:
mkDerivation {

pname = "bencode";
version = "0.6.0.0";
sha256 = "3b8efdfecee9bc486d9bcdbb633b7128ca235360f102478a7e0f8c895281f68a";
libraryHaskellDepends = [
base
binary
bytestring
containers
parsec
];
doHaddock = false;
doCheck = false;
description = "Parser and printer for bencoded data";
license = stdenv.lib.licenses.bsd3;

}) {};
"bento" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "bento";
version = "0.1.0";
sha256 = "eba28420daba13af9de264ec0e3d605535496536b9aff9bc23798cdbcc209192";
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/tfausak/bento#readme";
description = "🍱 Manage stateful components";
license = stdenv.lib.licenses.mit;

}) {};
"between" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "between";
version = "0.11.0.0";
sha256 = "8337351326c5a613d9b7520b6a8203234c04454e23550a81739beaa6f671465d";
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/trskop/between";
description = "Function combinator \"between\" and derived combinators";
license = stdenv.lib.licenses.bsd3;

}) {};
"bhoogle" = callPackage
({
  mkDerivation
, base
, brick
, bytestring
, containers
, directory
, filepath
, hoogle
, lens
, process
, protolude
, stdenv
, text
, time
, vector
, vty
}:
mkDerivation {

pname = "bhoogle";
version = "0.1.2.6";
sha256 = "5677bad1a5dd369ba14eb399945938cc4d894d86a5196e46cd1f02047380df5c";
isLibrary = false;
isExecutable = true;
executableHaskellDepends = [
base
brick
bytestring
containers
directory
filepath
hoogle
lens
process
protolude
text
time
vector
vty
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/andrevdm/bhoogle#readme";
description = "Simple terminal GUI for local hoogle";
license = stdenv.lib.licenses.bsd3;

}) {};
"bibtex" = callPackage
({
  mkDerivation
, base
, latex
, parsec
, stdenv
, utility-ht
}:
mkDerivation {

pname = "bibtex";
version = "0.1.0.6";
sha256 = "090a3b9589388bdf9d2bf60d8d1898aa0313a2874b551ba86cbbd049f3ee5f04";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
base
latex
parsec
utility-ht
];
doHaddock = false;
doCheck = false;
homepage = "http://www.haskell.org/haskellwiki/BibTeX";
description = "Parse, format and processing BibTeX files";
license = stdenv.lib.licenses.bsd3;

}) {};
"bifunctors" = callPackage
({
  mkDerivation
, base
, base-orphans
, comonad
, containers
, semigroups
, stdenv
, tagged
, template-haskell
, th-abstraction
, transformers
, transformers-compat
}:
mkDerivation {

pname = "bifunctors";
version = "5.5.2";
sha256 = "332bb2ea19e77dac55282daff8046d89f69514ced5b987779d887e53b5d7cb11";
revision = "2";
editedCabalFile = "0glrvir6md8a1ncr6ah95a5mnn7n9v8yl85afvdx24i9z1nr1319";
libraryHaskellDepends = [
base
base-orphans
comonad
containers
semigroups
tagged
template-haskell
th-abstraction
transformers
transformers-compat
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/ekmett/bifunctors/";
description = "Bifunctors";
license = stdenv.lib.licenses.bsd3;

}) {};
"bimap" = callPackage
({
  mkDerivation
, base
, containers
, exceptions
, stdenv
}:
mkDerivation {

pname = "bimap";
version = "0.3.3";
sha256 = "73829355c7bcbd3eedba22a382a04a3ab641702b00828790ec082ec2db3a8ad1";
libraryHaskellDepends = [
base
containers
exceptions
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/joelwilliamson/bimap";
description = "Bidirectional mapping between two key types";
license = stdenv.lib.licenses.bsd3;

}) {};
"bimap-server" = callPackage
({
  mkDerivation
, aeson
, base
, bimap
, binary
, directory
, http-types
, stdenv
, unix
, wai
, warp
}:
mkDerivation {

pname = "bimap-server";
version = "0.1.0.1";
sha256 = "09dfd1865812f40e317b610cbe05cc65ba6ea7215428748e1038ff7fc38ef535";
libraryHaskellDepends = [
aeson
base
bimap
binary
directory
http-types
unix
wai
warp
];
doHaddock = false;
doCheck = false;
description = "Two-column database server";
license = stdenv.lib.licenses.bsd3;

}) {};
"binary" = callPackage
({
  mkDerivation
, array
, base
, bytestring
, containers
, stdenv
}:
mkDerivation {

pname = "binary";
version = "0.8.5.1";
sha256 = "deb91a69662288f38bb62e04f2cedf8ef60d84437a194c778dacf6c31dfe0596";
libraryHaskellDepends = [
array
base
bytestring
containers
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/kolmodin/binary";
description = "Binary serialisation for Haskell values using lazy ByteStrings";
license = stdenv.lib.licenses.bsd3;

}) {};
"binary-bits" = callPackage
({
  mkDerivation
, base
, binary
, bytestring
, stdenv
}:
mkDerivation {

pname = "binary-bits";
version = "0.5";
sha256 = "16534a018a4754d8d1eab051711c23fb741f41a0d141b289001c52824b5be794";
libraryHaskellDepends = [
base
binary
bytestring
];
doHaddock = false;
doCheck = false;
description = "Bit parsing/writing on top of binary";
license = stdenv.lib.licenses.bsd3;

}) {};
"binary-conduit" = callPackage
({
  mkDerivation
, base
, binary
, bytestring
, conduit
, exceptions
, stdenv
, vector
}:
mkDerivation {

pname = "binary-conduit";
version = "1.3";
sha256 = "43f9bd47b679b552b295132680a8cd0ade6489fc33d5d98aed1f5c948320cccd";
revision = "1";
editedCabalFile = "0y08nw3y5jgrw5waa25b75iwsibnd1m9rbpqrvz5j4xq6baqw6kx";
libraryHaskellDepends = [
base
binary
bytestring
conduit
exceptions
vector
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/qnikst/binary-conduit/";
description = "data serialization/deserialization conduit library";
license = stdenv.lib.licenses.mit;

}) {};
"binary-ieee754" = callPackage
({
  mkDerivation
, array
, base
, binary
, stdenv
}:
mkDerivation {

pname = "binary-ieee754";
version = "0.1.0.0";
sha256 = "15c489898bcd346b4067a27579cb5fc62e2fafecbec81ea0446165a24aee4d54";
libraryHaskellDepends = [
array
base
binary
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/winterland1989/binary-ieee754";
description = "Backport ieee754 float double combinators to older binary";
license = stdenv.lib.licenses.bsd3;

}) {};
"binary-list" = callPackage
({
  mkDerivation
, base
, binary
, bytestring
, deepseq
, phantom-state
, stdenv
, transformers
}:
mkDerivation {

pname = "binary-list";
version = "1.1.1.2";
sha256 = "6b21e58ea4091b9572cb24a92dfb1ddc14fcea82d2272d30a83eb1b430dd1878";
libraryHaskellDepends = [
base
binary
bytestring
deepseq
phantom-state
transformers
];
doHaddock = false;
doCheck = false;
description = "Lists of length a power of two";
license = stdenv.lib.licenses.bsd3;

}) {};
"binary-orphans" = callPackage
({
  mkDerivation
, aeson
, base
, binary
, case-insensitive
, hashable
, scientific
, stdenv
, tagged
, text
, text-binary
, time
, unordered-containers
, vector
, vector-binary-instances
}:
mkDerivation {

pname = "binary-orphans";
version = "0.1.8.0";
sha256 = "f17557ccd98931df2bea038f25e7f835f38019ea7d53bd763f71fe64f931c0cc";
revision = "3";
editedCabalFile = "083bch2ir9mgiymgyv9qp5z1fv232zr8sxiwn27x3arvxzz9ax85";
libraryHaskellDepends = [
aeson
base
binary
case-insensitive
hashable
scientific
tagged
text
text-binary
time
unordered-containers
vector
vector-binary-instances
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/phadej/binary-orphans#readme";
description = "Orphan instances for binary";
license = stdenv.lib.licenses.bsd3;

}) {};
"binary-parser" = callPackage
({
  mkDerivation
, base
, base-prelude
, bytestring
, mtl
, stdenv
, text
, transformers
}:
mkDerivation {

pname = "binary-parser";
version = "0.5.5";
sha256 = "1dab718e06a978118cd28d2412bceaa0b6ec8d67785bdb0982e259fb60fe43b3";
revision = "3";
editedCabalFile = "14n41yazmks2qw0v4krxcqw3ac0wdy2z53d0qz0rdjcd94fpghjf";
libraryHaskellDepends = [
base
base-prelude
bytestring
mtl
text
transformers
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/nikita-volkov/binary-parser";
description = "A highly-efficient but limited parser API specialised for bytestrings";
license = stdenv.lib.licenses.mit;

}) {};
"binary-parsers" = callPackage
({
  mkDerivation
, base
, binary
, bytestring
, bytestring-lexing
, scientific
, stdenv
}:
mkDerivation {

pname = "binary-parsers";
version = "0.2.3.0";
sha256 = "bc6195493b950efcbeb9ef54dfe47a6badf894dff934cf02a4b170331c1b217a";
revision = "1";
editedCabalFile = "09ag18yr1m26fl3w7ab1d5q5j201ygbw7qsbsy41bwd6iq87rq15";
libraryHaskellDepends = [
base
binary
bytestring
bytestring-lexing
scientific
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/winterland1989/binary-parsers";
description = "Extends binary with parsec/attoparsec style parsing combinators";
license = stdenv.lib.licenses.bsd3;

}) {};
"binary-search" = callPackage
({
  mkDerivation
, base
, containers
, stdenv
, transformers
}:
mkDerivation {

pname = "binary-search";
version = "1.0.0.3";
sha256 = "b0e32df46aeddceac57bd6afa940f84f275f82fb251479e10fadd7c14414f6fa";
libraryHaskellDepends = [
base
containers
transformers
];
doHaddock = false;
doCheck = false;
description = "Binary and exponential searches";
license = stdenv.lib.licenses.bsd3;

}) {};
"binary-shared" = callPackage
({
  mkDerivation
, base
, binary
, bytestring
, containers
, mtl
, stdenv
}:
mkDerivation {

pname = "binary-shared";
version = "0.8.3";
sha256 = "830116505018fc43de09867bea9039b0bfa29e77564efa8c3f3b708933c098b2";
libraryHaskellDepends = [
base
binary
bytestring
containers
mtl
];
doHaddock = false;
doCheck = false;
homepage = "http://www.leksah.org";
description = "Sharing for the binary package";
license = "GPL";

}) {};
"binary-tagged" = callPackage
({
  mkDerivation
, aeson
, array
, base
, base16-bytestring
, binary
, bytestring
, containers
, generics-sop
, hashable
, nats
, scientific
, semigroups
, SHA
, stdenv
, tagged
, text
, time
, unordered-containers
, vector
}:
mkDerivation {

pname = "binary-tagged";
version = "0.1.4.2";
sha256 = "311fab8c2bac00cb6785cb144e25ed58b2efce85e5dc64e30e2b5a2a16cdc784";
revision = "8";
editedCabalFile = "0a8xcrx2lm8yzcnrf76c1wynn238i87yz3lqlgrg5n9csdc0bhj1";
libraryHaskellDepends = [
aeson
array
base
base16-bytestring
binary
bytestring
containers
generics-sop
hashable
nats
scientific
semigroups
SHA
tagged
text
time
unordered-containers
vector
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/phadej/binary-tagged#readme";
description = "Tagged binary serialisation";
license = stdenv.lib.licenses.bsd3;

}) {};
"bindings-DSL" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "bindings-DSL";
version = "1.0.25";
sha256 = "63de32380c68d1cc5e9c7b3622d67832c786da21163ba0c8a4835e6dd169194f";
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/jwiegley/bindings-dsl/wiki";
description = "FFI domain specific language, on top of hsc2hs";
license = stdenv.lib.licenses.bsd3;

}) {};
"bindings-GLFW" = callPackage
({
  mkDerivation
, base
, bindings-DSL
, libGL
, libX11
, libXcursor
, libXext
, libXfixes
, libXi
, libXinerama
, libXrandr
, libXxf86vm
, stdenv
}:
mkDerivation {

pname = "bindings-GLFW";
version = "3.1.2.4";
sha256 = "794e1f9f4d9dda8003cbf01517ed723c9850960bf32ca35df27d4f8f27930e35";
libraryHaskellDepends = [
base
bindings-DSL
];
librarySystemDepends = [
libGL
libX11
libXcursor
libXext
libXfixes
libXi
libXinerama
libXrandr
libXxf86vm
];
doHaddock = false;
doCheck = false;
description = "Low-level bindings to GLFW OpenGL library";
license = stdenv.lib.licenses.bsd3;

}) {inherit (pkgs) libGL; inherit (pkgs) libX11;
inherit (pkgs) libXcursor; inherit (pkgs) libXi;
inherit (pkgs) libXinerama; inherit (pkgs) libXrandr;
inherit (pkgs) libXxf86vm;};
"bindings-libzip" = callPackage
({
  mkDerivation
, base
, bindings-DSL
, libzip
, stdenv
}:
mkDerivation {

pname = "bindings-libzip";
version = "1.0.1";
sha256 = "908d060360d66974b1d9400dea28a1dce35a88baf5d73a6e3c12be8e74cda2ec";
libraryHaskellDepends = [
base
bindings-DSL
];
libraryPkgconfigDepends = [
libzip
];
doHaddock = false;
doCheck = false;
homepage = "http://bitbucket.org/astanin/hs-libzip/";
description = "Low level bindings to libzip";
license = stdenv.lib.licenses.bsd3;

}) {inherit (pkgs) libzip;};
"bindings-uname" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "bindings-uname";
version = "0.1";
sha256 = "130e75c3fd95e232452c7d903efbfab2d2ff6c9d455b617adeaebe5d60235cd3";
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
description = "Low-level binding to POSIX uname(3)";
license = stdenv.lib.licenses.publicDomain;

}) {};
"bioace" = callPackage
({
  mkDerivation
, base
, bioalign
, biocore
, bytestring
, parsec
, stdenv
}:
mkDerivation {

pname = "bioace";
version = "0.0.1";
sha256 = "6f43645b2a0ccbca20069aa25fae6fc2ae1704a3a0c48b069852fbfb8ce16222";
libraryHaskellDepends = [
base
bioalign
biocore
bytestring
parsec
];
doHaddock = false;
doCheck = false;
homepage = "https://patch-tag.com/r/dfornika/bioace/home";
description = "Library for reading ace assembly files";
license = "GPL";

}) {};
"bioalign" = callPackage
({
  mkDerivation
, base
, biocore
, bytestring
, stdenv
}:
mkDerivation {

pname = "bioalign";
version = "0.0.5";
sha256 = "b9152e81abbd7c79099520b69aeca3ff21970f1151b3c072a2994ea31b7acf00";
libraryHaskellDepends = [
base
biocore
bytestring
];
doHaddock = false;
doCheck = false;
homepage = "https://patch-tag.com/r/dfornika/biophd/home";
description = "Data structures and helper functions for calculating alignments";
license = "GPL";

}) {};
"biocore" = callPackage
({
  mkDerivation
, base
, bytestring
, stdenv
, stringable
}:
mkDerivation {

pname = "biocore";
version = "0.3.1";
sha256 = "212b7d7395138d4c231968e1f5bb047c03f61adc6c5eb36162602f42c24db41a";
libraryHaskellDepends = [
base
bytestring
stringable
];
doHaddock = false;
doCheck = false;
description = "A bioinformatics library";
license = "LGPL";

}) {};
"biofasta" = callPackage
({
  mkDerivation
, base
, biocore
, bytestring
, stdenv
}:
mkDerivation {

pname = "biofasta";
version = "0.0.3";
sha256 = "6221a89cde259e8f9a2d4da11230a8a53d78b24d3367e70be5e7b1279e06e7d0";
libraryHaskellDepends = [
base
biocore
bytestring
];
doHaddock = false;
doCheck = false;
homepage = "https://patch-tag.com/r/dfornika/biofasta/home";
description = "Library for reading fasta sequence files";
license = "GPL";

}) {};
"biofastq" = callPackage
({
  mkDerivation
, base
, biocore
, bytestring
, stdenv
}:
mkDerivation {

pname = "biofastq";
version = "0.1";
sha256 = "74e51887569c4900f5de266eca0dd28082c8abdf6ef0f34787a91baec562a310";
libraryHaskellDepends = [
base
biocore
bytestring
];
doHaddock = false;
doCheck = false;
homepage = "http://biohaskell.org/";
description = "A library for reading FASTQ files";
license = "LGPL";

}) {};
"biopsl" = callPackage
({
  mkDerivation
, base
, biocore
, bytestring
, cmdargs
, stdenv
, unordered-containers
}:
mkDerivation {

pname = "biopsl";
version = "0.4";
sha256 = "b2be254020a276df342ede835a1c1b1b989763098d7d8a5536c0b86c5f7a3bed";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
base
biocore
bytestring
];
executableHaskellDepends = [
cmdargs
unordered-containers
];
doHaddock = false;
doCheck = false;
homepage = "http://biohaskell.org/";
description = "Library and executables for working with PSL files";
license = "LGPL";

}) {};
"bit-stream" = callPackage
({
  mkDerivation
, base
, ghc-prim
, stdenv
, vector
}:
mkDerivation {

pname = "bit-stream";
version = "0.1.0.2";
sha256 = "811f2e7d4a827440bc21557e48c5310fe91e1b17f337ec35208546e1c5639bf4";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
base
ghc-prim
vector
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/Bodigrim/bit-stream#readme";
description = "Lazy, infinite, compact stream of Bool with O(1) indexing";
license = stdenv.lib.licenses.bsd3;

}) {};
"bitarray" = callPackage
({
  mkDerivation
, array
, base
, stdenv
}:
mkDerivation {

pname = "bitarray";
version = "0.0.1.1";
sha256 = "b27f6f1065053a0e8e24fbf9382b7060af9962d8d150b631c682c0c58469d802";
revision = "1";
editedCabalFile = "10fk92v9afjqk43zi621jxl0n8kci0xjj32lz3vqa9xbh67zjz45";
libraryHaskellDepends = [
array
base
];
doHaddock = false;
doCheck = false;
homepage = "http://code.haskell.org/~bkomuves/";
description = "Mutable and immutable bit arrays";
license = stdenv.lib.licenses.bsd3;

}) {};
"bitcoin-api" = callPackage
({
  mkDerivation
, aeson
, base
, base58string
, binary
, bitcoin-block
, bitcoin-script
, bitcoin-tx
, bitcoin-types
, bytestring
, hexstring
, lens
, lens-aeson
, stdenv
, text
, unordered-containers
, wreq
}:
mkDerivation {

pname = "bitcoin-api";
version = "0.12.1";
sha256 = "c978de1519b24c5c04ff518ad1209f74f91df31d65e23592dc639219df6b3e30";
enableSeparateDataOutput = true;
libraryHaskellDepends = [
aeson
base
base58string
binary
bitcoin-block
bitcoin-script
bitcoin-tx
bitcoin-types
bytestring
hexstring
lens
lens-aeson
text
unordered-containers
wreq
];
doHaddock = false;
doCheck = false;
homepage = "http://www.leonmergen.com/opensource.html";
description = "Provides access to the RPC API of Bitcoin Core";
license = stdenv.lib.licenses.mit;

}) {};
"bitcoin-api-extra" = callPackage
({
  mkDerivation
, base
, binary
, bitcoin-api
, bitcoin-block
, bitcoin-tx
, bytestring
, conduit
, lens
, stdenv
, stm
, stm-chans
, stm-conduit
, text
, transformers
}:
mkDerivation {

pname = "bitcoin-api-extra";
version = "0.9.1";
sha256 = "c423c6007d0f830dd2bbc0e1bc9219980e6fb2bde684890e265e1bfce4bdd7fc";
enableSeparateDataOutput = true;
libraryHaskellDepends = [
base
binary
bitcoin-api
bitcoin-block
bitcoin-tx
bytestring
conduit
lens
stm
stm-chans
stm-conduit
text
transformers
];
doHaddock = false;
doCheck = false;
homepage = "http://www.leonmergen.com/opensource.html";
description = "Higher level constructs on top of the bitcoin-api package";
license = stdenv.lib.licenses.mit;

}) {};
"bitcoin-block" = callPackage
({
  mkDerivation
, base
, binary
, bitcoin-tx
, bitcoin-types
, bytestring
, cryptohash
, hexstring
, largeword
, lens
, stdenv
}:
mkDerivation {

pname = "bitcoin-block";
version = "0.13.1";
sha256 = "d7f57c0fe71045dab85d223dc15d64db3a15cc7fd8446bfe4ebd98cd9d417d5a";
enableSeparateDataOutput = true;
libraryHaskellDepends = [
base
binary
bitcoin-tx
bitcoin-types
bytestring
cryptohash
hexstring
largeword
lens
];
doHaddock = false;
doCheck = false;
homepage = "http://www.leonmergen.com/opensource.html";
description = "Utility functions for manipulating bitcoin blocks";
license = stdenv.lib.licenses.mit;

}) {};
"bitcoin-script" = callPackage
({
  mkDerivation
, base
, base16-bytestring
, binary
, bytestring
, stdenv
, text
}:
mkDerivation {

pname = "bitcoin-script";
version = "0.11.1";
sha256 = "398c1d86e918731b5b2026351bb3b0b90b20606517e7c21e42f05d6c6e197b4c";
enableSeparateDataOutput = true;
libraryHaskellDepends = [
base
base16-bytestring
binary
bytestring
text
];
doHaddock = false;
doCheck = false;
homepage = "http://www.leonmergen.com/opensource.html";
description = "Compilation, manipulation and decompilation of Bitcoin scripts";
license = stdenv.lib.licenses.mit;

}) {};
"bitcoin-tx" = callPackage
({
  mkDerivation
, base
, binary
, bitcoin-script
, bitcoin-types
, bytestring
, cryptohash
, hexstring
, lens
, stdenv
}:
mkDerivation {

pname = "bitcoin-tx";
version = "0.13.1";
sha256 = "3bb88265353066c394e96a56b2dc555fa13d37ca7f820978b793196c6829cc00";
enableSeparateDataOutput = true;
libraryHaskellDepends = [
base
binary
bitcoin-script
bitcoin-types
bytestring
cryptohash
hexstring
lens
];
doHaddock = false;
doCheck = false;
homepage = "http://www.leonmergen.com/opensource.html";
description = "Utility functions for manipulating bitcoin transactions";
license = stdenv.lib.licenses.mit;

}) {};
"bitcoin-types" = callPackage
({
  mkDerivation
, base
, base58string
, binary
, bytestring
, hexstring
, stdenv
, text
}:
mkDerivation {

pname = "bitcoin-types";
version = "0.9.2";
sha256 = "b72f9448508b64706d5f443748dc9b8abde8e749959187ce3d8356cde0d6c40b";
enableSeparateDataOutput = true;
libraryHaskellDepends = [
base
base58string
binary
bytestring
hexstring
text
];
doHaddock = false;
doCheck = false;
homepage = "http://www.leonmergen.com/opensource.html";
description = "Provides consistent low-level types used commonly among Bitcoin implementations";
license = stdenv.lib.licenses.mit;

}) {};
"bits" = callPackage
({
  mkDerivation
, base
, bytes
, Cabal
, cabal-doctest
, mtl
, stdenv
, transformers
}:
mkDerivation {

pname = "bits";
version = "0.5.1";
sha256 = "657e557bb913b53fb3b3fc7eda820cf3c85a5b89692d242275d3e8e8d9479c93";
revision = "5";
editedCabalFile = "012qycmsfz5l6y82d3zgjmp1k3pgvhlpjdk6rwlpc1wlfbpdqiaw";
setupHaskellDepends = [
base
Cabal
cabal-doctest
];
libraryHaskellDepends = [
base
bytes
mtl
transformers
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/ekmett/bits";
description = "Various bit twiddling and bitwise serialization primitives";
license = stdenv.lib.licenses.bsd3;

}) {};
"bitset-word8" = callPackage
({
  mkDerivation
, base
, containers
, stdenv
, template-haskell
, th-lift-instances
}:
mkDerivation {

pname = "bitset-word8";
version = "0.1.1.0";
sha256 = "14e9eded3d5f535dbb1ce6debe4edd2d227765af31cc58e072b78824cd9f9b06";
libraryHaskellDepends = [
base
containers
template-haskell
th-lift-instances
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/nshimaza/bitset-word8#readme";
description = "Space efficient set of Word8 and some pre-canned sets useful for parsing HTTP";
license = stdenv.lib.licenses.mit;

}) {};
"bitx-bitcoin" = callPackage
({
  mkDerivation
, aeson
, base
, bytestring
, deepseq
, exceptions
, http-client
, http-client-tls
, http-types
, microlens
, microlens-th
, network
, QuickCheck
, scientific
, split
, stdenv
, text
, time
}:
mkDerivation {

pname = "bitx-bitcoin";
version = "0.12.0.0";
sha256 = "31f2398bbb0deff80361fdabb108c1552ae097b15a44c6ca6674977ae735c871";
libraryHaskellDepends = [
aeson
base
bytestring
deepseq
exceptions
http-client
http-client-tls
http-types
microlens
microlens-th
network
QuickCheck
scientific
split
text
time
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/tebello-thejane/bitx.hs";
description = "A Haskell library for working with the BitX bitcoin exchange";
license = stdenv.lib.licenses.bsd3;

}) {};
"blake2" = callPackage
({
  mkDerivation
, base
, bytestring
, stdenv
}:
mkDerivation {

pname = "blake2";
version = "0.2.0";
sha256 = "07d910e3f5c6e98f5a6b9d53dbe5f52506c3859b513bc7493b52552a28382cfc";
libraryHaskellDepends = [
base
bytestring
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/centromere/blake2";
description = "A library providing BLAKE2";
license = stdenv.lib.licenses.publicDomain;

}) {};
"blas-carray" = callPackage
({
  mkDerivation
, base
, blas-ffi
, carray
, netlib-carray
, netlib-ffi
, stdenv
, storable-complex
, transformers
}:
mkDerivation {

pname = "blas-carray";
version = "0.0.1.1";
sha256 = "bdad1b777d36e46a63bec022190bd009d2782018d7a447f41e3c2db772635f46";
libraryHaskellDepends = [
base
blas-ffi
carray
netlib-carray
netlib-ffi
storable-complex
transformers
];
doHaddock = false;
doCheck = false;
homepage = "http://hub.darcs.net/thielema/blas-carray/";
description = "Auto-generated interface to Fortran BLAS via CArrays";
license = stdenv.lib.licenses.bsd3;

}) {};
"blas-ffi" = callPackage
({
  mkDerivation
, base
, blas
, netlib-ffi
, stdenv
}:
mkDerivation {

pname = "blas-ffi";
version = "0.0.1.1";
sha256 = "ee0d88ad15d127e08dd273264befe2259bb64646156adb9e830aa8692dc3f036";
libraryHaskellDepends = [
base
netlib-ffi
];
libraryPkgconfigDepends = [
blas
];
doHaddock = false;
doCheck = false;
homepage = "http://hub.darcs.net/thielema/blas-ffi/";
description = "Auto-generated interface to Fortran BLAS";
license = stdenv.lib.licenses.bsd3;

}) {inherit (pkgs) blas;};
"blas-hs" = callPackage
({
  mkDerivation
, base
, blas
, stdenv
, storable-complex
}:
mkDerivation {

pname = "blas-hs";
version = "0.1.1.0";
sha256 = "80e06b0927982b391d239f8656ed437cd29665969d1a078ea4e42a2bf196b086";
libraryHaskellDepends = [
base
storable-complex
];
librarySystemDepends = [
blas
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/Rufflewind/blas-hs";
description = "Low-level Haskell bindings to Blas";
license = stdenv.lib.licenses.mit;

}) {inherit (pkgs) blas;};
"blastxml" = callPackage
({
  mkDerivation
, base
, biocore
, bytestring
, parallel
, stdenv
, tagsoup
}:
mkDerivation {

pname = "blastxml";
version = "0.3.2";
sha256 = "0c0089c42306c8189a9a26905677372d26adfde03772ae79b4742771d0de986a";
libraryHaskellDepends = [
base
biocore
bytestring
parallel
tagsoup
];
doHaddock = false;
doCheck = false;
homepage = "http://biohaskell.org/";
description = "Library for reading Blast XML output";
license = "LGPL";

}) {};
"blaze-bootstrap" = callPackage
({
  mkDerivation
, base
, blaze-html
, stdenv
, text
}:
mkDerivation {

pname = "blaze-bootstrap";
version = "0.1.0.1";
sha256 = "53b54c0b55ae7a436ec7e5d4e29d50fceb1ccd459ef715236358a3c661d05163";
libraryHaskellDepends = [
base
blaze-html
text
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/agrafix/blaze-bootstrap";
description = "Blaze helper functions for bootstrap pages";
license = stdenv.lib.licenses.mit;

}) {};
"blaze-builder" = callPackage
({
  mkDerivation
, base
, bytestring
, deepseq
, stdenv
, text
}:
mkDerivation {

pname = "blaze-builder";
version = "0.4.1.0";
sha256 = "91fc8b966f3e9dc9461e1675c7566b881740f99abc906495491a3501630bc814";
libraryHaskellDepends = [
base
bytestring
deepseq
text
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/lpsmith/blaze-builder";
description = "Efficient buffered output";
license = stdenv.lib.licenses.bsd3;

}) {};
"blaze-html" = callPackage
({
  mkDerivation
, base
, blaze-builder
, blaze-markup
, bytestring
, stdenv
, text
}:
mkDerivation {

pname = "blaze-html";
version = "0.9.0.1";
sha256 = "aeceaab3fbccbf7f01a241819e6c16c0a1cf19dccecb795c5de5407bc8660a64";
libraryHaskellDepends = [
base
blaze-builder
blaze-markup
bytestring
text
];
doHaddock = false;
doCheck = false;
homepage = "http://jaspervdj.be/blaze";
description = "A blazingly fast HTML combinator library for Haskell";
license = stdenv.lib.licenses.bsd3;

}) {};
"blaze-markup" = callPackage
({
  mkDerivation
, base
, blaze-builder
, bytestring
, stdenv
, text
}:
mkDerivation {

pname = "blaze-markup";
version = "0.8.2.1";
sha256 = "90ab7cbc29df9fbe24e208ade58ca9828e3074f1163618f1faaf4da8f0600146";
libraryHaskellDepends = [
base
blaze-builder
bytestring
text
];
doHaddock = false;
doCheck = false;
homepage = "http://jaspervdj.be/blaze";
description = "A blazingly fast markup combinator library for Haskell";
license = stdenv.lib.licenses.bsd3;

}) {};
"blaze-svg" = callPackage
({
  mkDerivation
, base
, blaze-markup
, mtl
, stdenv
}:
mkDerivation {

pname = "blaze-svg";
version = "0.3.6.1";
sha256 = "f6a4f1bba1e973b336e94de73369f4562778fde43b6ac7c0b32d6a501527aa60";
libraryHaskellDepends = [
base
blaze-markup
mtl
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/deepakjois/blaze-svg";
description = "SVG combinator library";
license = stdenv.lib.licenses.bsd3;

}) {};
"blaze-textual" = callPackage
({
  mkDerivation
, base
, blaze-builder
, bytestring
, ghc-prim
, integer-gmp
, old-locale
, stdenv
, text
, time
, vector
}:
mkDerivation {

pname = "blaze-textual";
version = "0.2.1.0";
sha256 = "1042795ab0bab891c034c24a51bafecbb89870ccd28af39534ab3d9ae7f46c2d";
libraryHaskellDepends = [
base
blaze-builder
bytestring
ghc-prim
integer-gmp
old-locale
text
time
vector
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/bos/blaze-textual";
description = "Fast rendering of common datatypes";
license = stdenv.lib.licenses.bsd3;

}) {};
"bloodhound" = callPackage
({
  mkDerivation
, aeson
, base
, blaze-builder
, bytestring
, containers
, data-default-class
, exceptions
, hashable
, http-client
, http-types
, mtl
, mtl-compat
, network-uri
, scientific
, semigroups
, stdenv
, text
, time
, transformers
, unordered-containers
, vector
}:
mkDerivation {

pname = "bloodhound";
version = "0.15.0.2";
sha256 = "3109a143ccb0f7aac7d2346926a3769ceffd0ed0122f4670e0b589330b02bc9f";
libraryHaskellDepends = [
aeson
base
blaze-builder
bytestring
containers
data-default-class
exceptions
hashable
http-client
http-types
mtl
mtl-compat
network-uri
scientific
semigroups
text
time
transformers
unordered-containers
vector
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/bitemyapp/bloodhound";
description = "ElasticSearch client library for Haskell";
license = stdenv.lib.licenses.bsd3;

}) {};
"blosum" = callPackage
({
  mkDerivation
, base
, containers
, fasta
, lens
, optparse-applicative
, pipes
, pipes-text
, split
, stdenv
, text
, text-show
}:
mkDerivation {

pname = "blosum";
version = "0.1.1.4";
sha256 = "44b12d24d56bfadec7a53c1d620e1cc52f4126ba01ab541a135b187846c10380";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
base
containers
fasta
lens
text
text-show
];
executableHaskellDepends = [
base
containers
fasta
optparse-applicative
pipes
pipes-text
split
text
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/GregorySchwartz/blosum#readme";
description = "BLOSUM generator";
license = stdenv.lib.licenses.gpl2;

}) {};
"bmp" = callPackage
({
  mkDerivation
, base
, binary
, bytestring
, stdenv
}:
mkDerivation {

pname = "bmp";
version = "1.2.6.3";
sha256 = "3cc63de40fe088ce4d1c869180fd2309bcec35a940c9e3d1904d3520ca2fdacc";
libraryHaskellDepends = [
base
binary
bytestring
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/benl23x5/bmp";
description = "Read and write uncompressed BMP image files";
license = stdenv.lib.licenses.mit;

}) {};
"bno055-haskell" = callPackage
({
  mkDerivation
, base
, bytestring
, cereal
, h2c
, mtl
, resourcet
, stdenv
}:
mkDerivation {

pname = "bno055-haskell";
version = "0.1.0";
sha256 = "7adc29f94755047b4214115c23b63041e9d3970d2648f53dcd38b84725059ad8";
libraryHaskellDepends = [
base
bytestring
cereal
h2c
mtl
resourcet
];
doHaddock = false;
doCheck = false;
homepage = "https://bitbucket.org/fmapE/bno055-haskell";
description = "Library for communication with the Bosch BNO055 orientation sensor";
license = stdenv.lib.licenses.mit;

}) {};
"boltzmann-samplers" = callPackage
({
  mkDerivation
, ad
, base
, containers
, hashable
, hmatrix
, ieee754
, MonadRandom
, mtl
, QuickCheck
, stdenv
, transformers
, unordered-containers
, vector
}:
mkDerivation {

pname = "boltzmann-samplers";
version = "0.1.1.0";
sha256 = "de7c3e1f77b0ae27c78cb53e539dbaa8dc2f6e3f3605c25f1611545806ad878e";
libraryHaskellDepends = [
ad
base
containers
hashable
hmatrix
ieee754
MonadRandom
mtl
QuickCheck
transformers
unordered-containers
vector
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/Lysxia/boltzmann-samplers#readme";
description = "Uniform random generators";
license = stdenv.lib.licenses.mit;

}) {};
"bookkeeping" = callPackage
({
  mkDerivation
, base
, dlist
, mtl
, stdenv
, text
, time
}:
mkDerivation {

pname = "bookkeeping";
version = "0.2.1.4";
sha256 = "ff4294e6c9c03c99cdcda31586ffaedde1f20a4d21fbdd28b2f82a5754ea27e4";
libraryHaskellDepends = [
base
dlist
mtl
text
time
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/arowM/haskell-bookkeeping#readme";
description = "A module for bookkeeping by double entry";
license = stdenv.lib.licenses.mit;

}) {};
"boolean-like" = callPackage
({
  mkDerivation
, attoparsec
, base
, bytestring
, containers
, semigroups
, stdenv
, text
, vector
}:
mkDerivation {

pname = "boolean-like";
version = "0.1.1.0";
sha256 = "6ca47b21a6d98161edfd94f4d5a19daacc13d229b87a0c107e868ff0259658b8";
libraryHaskellDepends = [
attoparsec
base
bytestring
containers
semigroups
text
vector
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/Shou/boolean-like";
description = "Logical combinatory operations dealing with datatypes representing booleans by their constructors";
license = stdenv.lib.licenses.bsd3;

}) {};
"boolsimplifier" = callPackage
({
  mkDerivation
, base
, containers
, stdenv
}:
mkDerivation {

pname = "boolsimplifier";
version = "0.1.8";
sha256 = "096fa9377241520ee114403fd53b51a7369187fb4dca65f19f85a727d689828f";
revision = "1";
editedCabalFile = "0xqm0vn9i49b75fnvnvcnr9m4zwvhqynrkcjdxghrsxayg420lnh";
libraryHaskellDepends = [
base
containers
];
doHaddock = false;
doCheck = false;
description = "Simplification tools for simple propositional formulas";
license = stdenv.lib.licenses.bsd3;

}) {};
"boomerang" = callPackage
({
  mkDerivation
, base
, mtl
, semigroups
, stdenv
, template-haskell
, text
}:
mkDerivation {

pname = "boomerang";
version = "1.4.5.5";
sha256 = "8dfc7ff14b6d32e18904d1af5169432750fbefdecd4f7a1f87f014bd86dd5a44";
libraryHaskellDepends = [
base
mtl
semigroups
template-haskell
text
];
doHaddock = false;
doCheck = false;
description = "Library for invertible parsing and printing";
license = stdenv.lib.licenses.bsd3;

}) {};
"bordacount" = callPackage
({
  mkDerivation
, base
, containers
, stdenv
}:
mkDerivation {

pname = "bordacount";
version = "0.1.0.0";
sha256 = "cb691095f688dc2c1726750d5e5d267d3f49466377869a574d6416090a46fdce";
libraryHaskellDepends = [
base
containers
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/hverr/bordacount#readme";
description = "Implementation of the Borda count election method";
license = stdenv.lib.licenses.bsd3;

}) {};
"both" = callPackage
({
  mkDerivation
, base
, semigroups
, stdenv
, zero
}:
mkDerivation {

pname = "both";
version = "0.1.1.0";
sha256 = "6f4ee8b7745fb3054282240fe941dd74cf2481f1a07b170d211c2b8791340e8e";
libraryHaskellDepends = [
base
semigroups
zero
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/barrucadu/both";
description = "Like Maybe, but with a different Monoid instance";
license = stdenv.lib.licenses.mit;

}) {};
"bound" = callPackage
({
  mkDerivation
, base
, bifunctors
, binary
, bytes
, Cabal
, cabal-doctest
, cereal
, comonad
, deepseq
, hashable
, mmorph
, profunctors
, stdenv
, template-haskell
, transformers
, transformers-compat
}:
mkDerivation {

pname = "bound";
version = "2.0.1";
sha256 = "294a206f33b6583e56bd3aad620e4a7bd0a22b4bf4c6fe5988b2fe55159fbb76";
revision = "5";
editedCabalFile = "02xvpawr73xq11lwkj1rp96h3pgpgcp693gawc3wn5zksrr0986i";
setupHaskellDepends = [
base
Cabal
cabal-doctest
];
libraryHaskellDepends = [
base
bifunctors
binary
bytes
cereal
comonad
deepseq
hashable
mmorph
profunctors
template-haskell
transformers
transformers-compat
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/ekmett/bound/";
description = "Making de Bruijn Succ Less";
license = stdenv.lib.licenses.bsd3;

}) {};
"boundingboxes" = callPackage
({
  mkDerivation
, base
, lens
, stdenv
}:
mkDerivation {

pname = "boundingboxes";
version = "0.2.3";
sha256 = "e80947aa2c2c7f11e7eb2eb088a463d1cd1cdf03790e4c2746b629dcb1737564";
libraryHaskellDepends = [
base
lens
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/fumieval/boundingboxes";
description = "A generic boundingbox for an arbitrary vector";
license = stdenv.lib.licenses.bsd3;

}) {};
"bower-json" = callPackage
({
  mkDerivation
, aeson
, aeson-better-errors
, base
, bytestring
, deepseq
, ghc-prim
, mtl
, scientific
, stdenv
, text
, transformers
, unordered-containers
, vector
}:
mkDerivation {

pname = "bower-json";
version = "1.0.0.1";
sha256 = "7aa954e2b1bf79307db710c158108bd9ddb45b333ca96072cdbfaf96c77b7e73";
libraryHaskellDepends = [
aeson
aeson-better-errors
base
bytestring
deepseq
ghc-prim
mtl
scientific
text
transformers
unordered-containers
vector
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/hdgarrood/bower-json";
description = "Read bower.json from Haskell";
license = stdenv.lib.licenses.mit;

}) {};
"boxes" = callPackage
({
  mkDerivation
, base
, split
, stdenv
}:
mkDerivation {

pname = "boxes";
version = "0.1.5";
sha256 = "38e1782e8a458f342a0acbb74af8f55cb120756bc3af7ee7220d955812af56c3";
libraryHaskellDepends = [
base
split
];
doHaddock = false;
doCheck = false;
description = "2D text pretty-printing library";
license = stdenv.lib.licenses.bsd3;

}) {};
"brick" = callPackage
({
  mkDerivation
, base
, config-ini
, containers
, contravariant
, data-clist
, deepseq
, dlist
, microlens
, microlens-mtl
, microlens-th
, stdenv
, stm
, template-haskell
, text
, text-zipper
, transformers
, vector
, vty
, word-wrap
}:
mkDerivation {

pname = "brick";
version = "0.34.1";
sha256 = "dabbfada104fd88e068d75b73266c59682a2920e9e813bb12b76e1920bee0778";
revision = "2";
editedCabalFile = "0yk4wxlv693gnax8b0gr6g2zqsm53izwar0aagqc4w3bq3llx63b";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
base
config-ini
containers
contravariant
data-clist
deepseq
dlist
microlens
microlens-mtl
microlens-th
stm
template-haskell
text
text-zipper
transformers
vector
vty
word-wrap
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/jtdaugherty/brick/";
description = "A declarative terminal user interface library";
license = stdenv.lib.licenses.bsd3;

}) {};
"brittany" = callPackage
({
  mkDerivation
, aeson
, base
, butcher
, bytestring
, cmdargs
, containers
, czipwith
, data-tree-print
, deepseq
, directory
, extra
, filepath
, ghc
, ghc-boot-th
, ghc-exactprint
, ghc-paths
, hspec
, monad-memo
, mtl
, multistate
, neat-interpolation
, pretty
, safe
, semigroups
, stdenv
, strict
, syb
, text
, transformers
, uniplate
, unsafe
, yaml
}:
mkDerivation {

pname = "brittany";
version = "0.9.0.1";
sha256 = "0845ec0dcf88639072efbb4c56562436db79ffaf32bfda69f7711afca7b2b5d9";
revision = "1";
editedCabalFile = "1ac9g160kaaz78xk6xdfpkm0qadgkanjghi8g0b9fy17983fiw7a";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
aeson
base
butcher
bytestring
cmdargs
containers
czipwith
data-tree-print
deepseq
directory
extra
ghc
ghc-boot-th
ghc-exactprint
ghc-paths
monad-memo
mtl
multistate
neat-interpolation
pretty
safe
semigroups
strict
syb
text
transformers
uniplate
unsafe
yaml
];
executableHaskellDepends = [
aeson
base
butcher
bytestring
cmdargs
containers
czipwith
data-tree-print
deepseq
directory
extra
filepath
ghc
ghc-boot-th
ghc-exactprint
ghc-paths
hspec
monad-memo
mtl
multistate
neat-interpolation
pretty
safe
semigroups
strict
syb
text
transformers
uniplate
unsafe
yaml
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/lspitzner/brittany/";
description = "Haskell source code formatter";
license = stdenv.lib.licenses.agpl3;

}) {};
"broadcast-chan" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "broadcast-chan";
version = "0.1.1";
sha256 = "ad5bd65a301aff6df38c4111f02e73cce3bcfed7bfae6c66c2e70310f1e985f2";
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/merijn/broadcast-chan";
description = "Broadcast channel type that avoids 0 reader space leaks";
license = stdenv.lib.licenses.bsd3;

}) {};
"bsb-http-chunked" = callPackage
({
  mkDerivation
, base
, bytestring
, bytestring-builder
, stdenv
}:
mkDerivation {

pname = "bsb-http-chunked";
version = "0.0.0.2";
sha256 = "28cb750979763c815fbf69a6dc510f837b7ccbe262adf0a28ad270966737d5f4";
libraryHaskellDepends = [
base
bytestring
bytestring-builder
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/sjakobi/bsb-http-chunked";
description = "Chunked HTTP transfer encoding for bytestring builders";
license = stdenv.lib.licenses.bsd3;

}) {};
"bson" = callPackage
({
  mkDerivation
, base
, binary
, bytestring
, cryptohash
, data-binary-ieee754
, mtl
, network
, stdenv
, text
, time
}:
mkDerivation {

pname = "bson";
version = "0.3.2.6";
sha256 = "738dc3615aafa1dd553f51a67373af2f27db90e75266ed6cdee5cecb7f6fce80";
libraryHaskellDepends = [
base
binary
bytestring
cryptohash
data-binary-ieee754
mtl
network
text
time
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/mongodb-haskell/bson";
description = "BSON documents are JSON-like objects with a standard binary encoding";
license = stdenv.lib.licenses.asl20;

}) {};
"bson-lens" = callPackage
({
  mkDerivation
, base
, bson
, lens
, stdenv
, text
}:
mkDerivation {

pname = "bson-lens";
version = "0.1.1";
sha256 = "d73bb417def2d8cb1efebfc22482a859e119bcc4005dd10106c82dff5ceeb160";
libraryHaskellDepends = [
base
bson
lens
text
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/jb55/bson-lens";
description = "BSON lenses";
license = stdenv.lib.licenses.mit;

}) {};
"btrfs" = callPackage
({
  mkDerivation
, base
, bytestring
, stdenv
, time
, unix
}:
mkDerivation {

pname = "btrfs";
version = "0.1.2.3";
sha256 = "7efc0b5c65623dcf60910baf896aec7da7ac2df4231f03a3072c78fb5b2fb88d";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
base
bytestring
time
unix
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/redneb/hs-btrfs";
description = "Bindings to the btrfs API";
license = stdenv.lib.licenses.bsd3;

}) {};
"buchhaltung" = callPackage
({
  mkDerivation
, aeson
, ansi-wl-pprint
, array
, async
, base
, boxes
, bytestring
, cassava
, containers
, data-default
, Decimal
, deepseq
, directory
, edit-distance
, file-embed
, filepath
, formatting
, hashable
, haskeline
, hint
, hledger
, hledger-lib
, lens
, lifted-base
, ListLike
, megaparsec
, MissingH
, monad-control
, mtl
, optparse-applicative
, parsec
, process
, regex-compat
, regex-tdfa
, regex-tdfa-text
, safe
, semigroups
, split
, stdenv
, strict
, temporary
, text
, time
, transformers
, unordered-containers
, vector
, yaml
}:
mkDerivation {

pname = "buchhaltung";
version = "0.0.7";
sha256 = "8b7e74a722d5d74d8b9d1473dcb4a73e0b1470794f2de3d39a8f1828a08a71c2";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
aeson
ansi-wl-pprint
array
async
base
boxes
bytestring
cassava
containers
data-default
Decimal
deepseq
directory
edit-distance
file-embed
filepath
formatting
hashable
haskeline
hint
hledger
hledger-lib
lens
lifted-base
ListLike
megaparsec
MissingH
monad-control
mtl
optparse-applicative
parsec
process
regex-compat
regex-tdfa
regex-tdfa-text
safe
semigroups
split
strict
temporary
text
time
transformers
unordered-containers
vector
yaml
];
executableHaskellDepends = [
aeson
ansi-wl-pprint
array
async
base
boxes
bytestring
cassava
containers
data-default
Decimal
deepseq
directory
edit-distance
file-embed
filepath
formatting
hashable
haskeline
hint
hledger
hledger-lib
lens
lifted-base
ListLike
megaparsec
MissingH
monad-control
mtl
optparse-applicative
parsec
process
regex-compat
regex-tdfa
regex-tdfa-text
safe
semigroups
split
strict
temporary
text
time
transformers
unordered-containers
vector
yaml
];
doHaddock = false;
doCheck = false;
homepage = "http://johannesgerer.com/buchhaltung";
description = "Automates most of your plain text accounting data entry in ledger format";
license = stdenv.lib.licenses.mit;

}) {};
"buffer-builder" = callPackage
({
  mkDerivation
, base
, bytestring
, mtl
, stdenv
, text
, unordered-containers
, vector
}:
mkDerivation {

pname = "buffer-builder";
version = "0.2.4.5";
sha256 = "ac329b7b1a81a40ab6d32b3519f396f652d7511ffdcac8e7a680c08cd53fe421";
libraryHaskellDepends = [
base
bytestring
mtl
text
unordered-containers
vector
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/chadaustin/buffer-builder";
description = "Library for efficiently building up buffers, one piece at a time";
license = stdenv.lib.licenses.bsd3;

}) {};
"buffer-pipe" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "buffer-pipe";
version = "0.0";
sha256 = "0875b6e41988f70e20d2e9d1a092ae03d545954732f93d65a3481b5c4b52dccf";
isLibrary = false;
isExecutable = true;
executableHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
description = "Read from stdin and write to stdout in large blocks";
license = stdenv.lib.licenses.bsd3;

}) {};
"butcher" = callPackage
({
  mkDerivation
, base
, bifunctors
, containers
, deque
, extra
, free
, microlens
, microlens-th
, mtl
, multistate
, pretty
, stdenv
, transformers
, unsafe
, void
}:
mkDerivation {

pname = "butcher";
version = "1.3.0.0";
sha256 = "cf4e3b14a147201f7878b70e857c9df1abe62c5eb03a9d3cf65d5207ad7a056d";
revision = "1";
editedCabalFile = "1zw355fg08p90xv3f1qcray0vz68h4sab0q2zfb3hk3j8mpplgvp";
libraryHaskellDepends = [
base
bifunctors
containers
deque
extra
free
microlens
microlens-th
mtl
multistate
pretty
transformers
unsafe
void
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/lspitzner/butcher/";
description = "Chops a command or program invocation into digestable pieces";
license = stdenv.lib.licenses.bsd3;

}) {};
"bv" = callPackage
({
  mkDerivation
, base
, ghc-prim
, integer-gmp
, stdenv
}:
mkDerivation {

pname = "bv";
version = "0.5";
sha256 = "04a189ab1758f6adc51ffff0a10705d8c8b54959946a90a3b9a750c930c77bda";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
base
ghc-prim
integer-gmp
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/iagoabal/haskell-bv";
description = "Bit-vector arithmetic library";
license = stdenv.lib.licenses.bsd3;

}) {};
"bv-little" = callPackage
({
  mkDerivation
, base
, deepseq
, hashable
, integer-gmp
, mono-traversable
, primitive
, QuickCheck
, stdenv
}:
mkDerivation {

pname = "bv-little";
version = "0.1.1";
sha256 = "68e6d6d1ed6922e92e471e93ecb5c643f28f2e9c761f9c1a3697e9527c696b94";
libraryHaskellDepends = [
base
deepseq
hashable
integer-gmp
mono-traversable
primitive
QuickCheck
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/recursion-ninja/bv-little";
description = "Efficient little-endian bit vector library";
license = stdenv.lib.licenses.bsd3;

}) {};
"byteable" = callPackage
({
  mkDerivation
, base
, bytestring
, stdenv
}:
mkDerivation {

pname = "byteable";
version = "0.1.1";
sha256 = "243b34a1b5b64b39e39fe58f75c18f6cad5b668b10cabcd86816cbde27783fe2";
enableSeparateDataOutput = true;
libraryHaskellDepends = [
base
bytestring
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/vincenthz/hs-byteable";
description = "Type class for sequence of bytes";
license = stdenv.lib.licenses.bsd3;

}) {};
"bytedump" = callPackage
({
  mkDerivation
, base
, bytestring
, stdenv
}:
mkDerivation {

pname = "bytedump";
version = "1.0";
sha256 = "ae17b5040f0423eec792505f14d1d3e53f5ff81ddf83524f1c5dc7a16c0dc0dd";
isLibrary = true;
isExecutable = true;
enableSeparateDataOutput = true;
libraryHaskellDepends = [
base
bytestring
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/vincenthz/hs-bytedump";
description = "Flexible byte dump helpers for human readers";
license = stdenv.lib.licenses.bsd3;

}) {};
"byteorder" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "byteorder";
version = "1.0.4";
sha256 = "bd20bbb586947f99c38a4c93d9d0266f49f6fc581767b51ba568f6d5d52d2919";
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
homepage = "http://community.haskell.org/~aslatter/code/byteorder";
description = "Exposes the native endianness or byte ordering of the system";
license = stdenv.lib.licenses.bsd3;

}) {};
"bytes" = callPackage
({
  mkDerivation
, base
, binary
, bytestring
, Cabal
, cabal-doctest
, cereal
, containers
, hashable
, mtl
, scientific
, stdenv
, text
, time
, transformers
, transformers-compat
, unordered-containers
, void
}:
mkDerivation {

pname = "bytes";
version = "0.15.4";
sha256 = "35efd80d978a52dc70b5aa75e96ecbf2d0852d03e3a5c61087efa24a711c3d88";
revision = "1";
editedCabalFile = "1ijk1d47rr4kyi3hl03v1xpb08k87wjr07d8i6gj5glhzfmmwp9k";
setupHaskellDepends = [
base
Cabal
cabal-doctest
];
libraryHaskellDepends = [
base
binary
bytestring
cereal
containers
hashable
mtl
scientific
text
time
transformers
transformers-compat
unordered-containers
void
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/ekmett/bytes";
description = "Sharing code for serialization between binary and cereal";
license = stdenv.lib.licenses.bsd3;

}) {};
"byteset" = callPackage
({
  mkDerivation
, base
, binary
, stdenv
}:
mkDerivation {

pname = "byteset";
version = "0.1.1.0";
sha256 = "13499c5b279f022097e9ae1d0aeef3fcea12b7f18f50157d4950aec58741afa1";
libraryHaskellDepends = [
base
binary
];
doHaddock = false;
doCheck = false;
description = "Set of bytes";
license = stdenv.lib.licenses.bsd3;

}) {};
"bytestring-builder" = callPackage
({
  mkDerivation
, base
, bytestring
, deepseq
, stdenv
}:
mkDerivation {

pname = "bytestring-builder";
version = "0.10.8.1.0";
sha256 = "6d7404773621efb88b256ff88912a7dbcebc7fb86d27868ef58478249892dbc2";
libraryHaskellDepends = [
base
bytestring
deepseq
];
doHaddock = false;
doCheck = false;
description = "The new bytestring builder, packaged outside of GHC";
license = stdenv.lib.licenses.bsd3;

}) {};
"bytestring-conversion" = callPackage
({
  mkDerivation
, attoparsec
, base
, bytestring
, case-insensitive
, double-conversion
, stdenv
, text
}:
mkDerivation {

pname = "bytestring-conversion";
version = "0.3.1";
sha256 = "13b7ea48737dc7a7fd4c894ff1fb9344cf8d9ef8f4201e813d578b613e874ef8";
revision = "2";
editedCabalFile = "1x8c42cfzb6fdvgkxxdxcpdf16csimlzsgahb1axnplmr6b3ba63";
libraryHaskellDepends = [
attoparsec
base
bytestring
case-insensitive
double-conversion
text
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/twittner/bytestring-conversion/";
description = "Type-classes to convert values to and from ByteString";
license = stdenv.lib.licenses.mpl20;

}) {};
"bytestring-lexing" = callPackage
({
  mkDerivation
, base
, bytestring
, stdenv
}:
mkDerivation {

pname = "bytestring-lexing";
version = "0.5.0.2";
sha256 = "01f9add3f25067a89c5ae9ab1f2fd8ab75ec9f386987ee0d83f73ec855b43f73";
libraryHaskellDepends = [
base
bytestring
];
doHaddock = false;
doCheck = false;
homepage = "http://code.haskell.org/~wren/";
description = "Parse and produce literals efficiently from strict or lazy bytestrings";
license = stdenv.lib.licenses.bsd2;

}) {};
"bytestring-strict-builder" = callPackage
({
  mkDerivation
, base
, base-prelude
, bytestring
, semigroups
, stdenv
}:
mkDerivation {

pname = "bytestring-strict-builder";
version = "0.4.5";
sha256 = "cf192d9951a42cf76f35c4b6dcc8d04868c5df3e279b7b29079ebcd076f8f3ce";
libraryHaskellDepends = [
base
base-prelude
bytestring
semigroups
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/nikita-volkov/bytestring-strict-builder";
description = "An efficient strict bytestring builder";
license = stdenv.lib.licenses.mit;

}) {};
"bytestring-tree-builder" = callPackage
({
  mkDerivation
, base
, base-prelude
, bytestring
, semigroups
, stdenv
, text
}:
mkDerivation {

pname = "bytestring-tree-builder";
version = "0.2.7.1";
sha256 = "ae03a5b2e24068870dfcff6c6dc8d6d243aaebdb7c66746d499e7cf6cfd16bd5";
libraryHaskellDepends = [
base
base-prelude
bytestring
semigroups
text
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/nikita-volkov/bytestring-tree-builder";
description = "A very efficient ByteString builder implementation based on the binary tree";
license = stdenv.lib.licenses.mit;

}) {};
"bytestring-trie" = callPackage
({
  mkDerivation
, base
, binary
, bytestring
, stdenv
}:
mkDerivation {

pname = "bytestring-trie";
version = "0.2.4.1";
sha256 = "2fe4feb526a03d32aaf673506623b3af4ce3fee126f745a8852c5fd676a61363";
revision = "1";
editedCabalFile = "0f56pb1k1va7bs9rpn0b8hclxhn5pcjln857k50myhyzrwz8qg7r";
libraryHaskellDepends = [
base
binary
bytestring
];
doHaddock = false;
doCheck = false;
homepage = "http://code.haskell.org/~wren/";
description = "An efficient finite map from (byte)strings to values";
license = stdenv.lib.licenses.bsd3;

}) {};
"bzlib" = callPackage
({
  mkDerivation
, base
, bytestring
, bzip2
, stdenv
}:
mkDerivation {

pname = "bzlib";
version = "0.5.0.5";
sha256 = "9ee7d0ac7461b330820af928c13c6668bf4fe3601f171c42432a85c33718017e";
libraryHaskellDepends = [
base
bytestring
];
librarySystemDepends = [
bzip2
];
doHaddock = false;
doCheck = false;
description = "Compression and decompression in the bzip2 format";
license = stdenv.lib.licenses.bsd3;

}) {inherit (pkgs) bzip2;};
"bzlib-conduit" = callPackage
({
  mkDerivation
, base
, bindings-DSL
, bytestring
, bzip2
, conduit
, data-default-class
, mtl
, resourcet
, stdenv
}:
mkDerivation {

pname = "bzlib-conduit";
version = "0.3.0.1";
sha256 = "43d811549f7fb0710e4895ad54f78418271579f7e27d75e3c3470b74b285a239";
enableSeparateDataOutput = true;
libraryHaskellDepends = [
base
bindings-DSL
bytestring
conduit
data-default-class
mtl
resourcet
];
librarySystemDepends = [
bzip2
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/snoyberg/bzlib-conduit#readme";
description = "Streaming compression/decompression via conduits";
license = stdenv.lib.licenses.bsd3;

}) {inherit (pkgs) bzip2;};
"c2hs" = callPackage
({
  mkDerivation
, array
, base
, bytestring
, containers
, directory
, dlist
, filepath
, language-c
, pretty
, process
, stdenv
}:
mkDerivation {

pname = "c2hs";
version = "0.28.3";
sha256 = "80cc6db945ee7c0328043b4e69213b2a1cb0806fb35c8362f9dea4a2c312f1cc";
isLibrary = false;
isExecutable = true;
enableSeparateDataOutput = true;
executableHaskellDepends = [
array
base
bytestring
containers
directory
dlist
filepath
language-c
pretty
process
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/haskell/c2hs";
description = "C->Haskell FFI tool that gives some cross-language type safety";
license = stdenv.lib.licenses.gpl2;

}) {};
"cabal-doctest" = callPackage
({
  mkDerivation
, base
, Cabal
, directory
, filepath
, stdenv
}:
mkDerivation {

pname = "cabal-doctest";
version = "1.0.6";
sha256 = "decaaa5a73eaabaf3c4f8c644bd7f6e3f428b6244e935c0cf105f75f9b24ed2d";
revision = "1";
editedCabalFile = "1bk85avgc93yvcggwbk01fy8nvg6753wgmaanhkry0hz55h7mpld";
libraryHaskellDepends = [
base
Cabal
directory
filepath
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/phadej/cabal-doctest";
description = "A Setup.hs helper for doctests running";
license = stdenv.lib.licenses.bsd3;

}) {};
"cabal-file-th" = callPackage
({
  mkDerivation
, base
, Cabal
, directory
, pretty
, stdenv
, template-haskell
}:
mkDerivation {

pname = "cabal-file-th";
version = "0.2.4";
sha256 = "0b55d7ffacd0c6324fa7c8b8f148e788e6b899fb9bf8795285dea66575bed91c";
libraryHaskellDepends = [
base
Cabal
directory
pretty
template-haskell
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/nkpart/cabal-file-th";
description = "Template Haskell expressions for reading fields from a project's cabal file";
license = stdenv.lib.licenses.bsd3;

}) {};
"cabal-install" = callPackage
({
  mkDerivation
, array
, async
, base
, base16-bytestring
, binary
, bytestring
, Cabal
, containers
, cryptohash-sha256
, deepseq
, directory
, echo
, edit-distance
, filepath
, hackage-security
, hashable
, HTTP
, mtl
, network
, network-uri
, pretty
, process
, random
, stdenv
, stm
, tar
, time
, unix
, zlib
}:
mkDerivation {

pname = "cabal-install";
version = "2.0.0.1";
sha256 = "f991e36f3adaa1c7e2f0c422a2f2a4ab21b7041c82a8896f72afc9843a0d5d99";
revision = "3";
editedCabalFile = "148rq7hcbl8rq7pkywn1hk3l7lv442flf6b0wamfixxzxk74fwlj";
isLibrary = false;
isExecutable = true;
setupHaskellDepends = [
base
Cabal
filepath
process
];
executableHaskellDepends = [
array
async
base
base16-bytestring
binary
bytestring
Cabal
containers
cryptohash-sha256
deepseq
directory
echo
edit-distance
filepath
hackage-security
hashable
HTTP
mtl
network
network-uri
pretty
process
random
stm
tar
time
unix
zlib
];
doHaddock = false;
doCheck = false;
postInstall = ''
  mkdir $out/etc
  mv bash-completion $out/etc/bash_completion.d
'';
homepage = "http://www.haskell.org/cabal/";
description = "The command-line interface for Cabal and Hackage";
license = stdenv.lib.licenses.bsd3;

}) {};
"cabal-rpm" = callPackage
({
  mkDerivation
, base
, bytestring
, Cabal
, directory
, filepath
, http-client
, http-client-tls
, http-conduit
, process
, stdenv
, time
, unix
}:
mkDerivation {

pname = "cabal-rpm";
version = "0.12.3";
sha256 = "cffd76c4699f2f576148090159902307168f8cd766c32c1f1c8b4c3470482d5a";
isLibrary = false;
isExecutable = true;
executableHaskellDepends = [
base
bytestring
Cabal
directory
filepath
http-client
http-client-tls
http-conduit
process
time
unix
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/juhp/cabal-rpm";
description = "RPM packaging tool for Haskell Cabal-based packages";
license = stdenv.lib.licenses.gpl3;

}) {};
"cabal-toolkit" = callPackage
({
  mkDerivation
, base
, binary
, bytestring
, Cabal
, containers
, ghc
, stdenv
, template-haskell
}:
mkDerivation {

pname = "cabal-toolkit";
version = "0.0.5";
sha256 = "98ad3cc723fd196fd25b3ac4bea2b50bad0cc2d5f24d5557785184bb55396cf0";
libraryHaskellDepends = [
base
binary
bytestring
Cabal
containers
ghc
template-haskell
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/TerrorJack/cabal-toolkit#readme";
description = "Helper functions for writing custom Setup.hs scripts.";
license = stdenv.lib.licenses.bsd3;

}) {};
"cabal2nix" = callPackage
({
  mkDerivation
, aeson
, ansi-wl-pprint
, base
, bytestring
, Cabal
, containers
, deepseq
, directory
, distribution-nixpkgs
, filepath
, hackage-db
, hopenssl
, hpack
, language-nix
, lens
, monad-par
, monad-par-extras
, mtl
, optparse-applicative
, pretty
, process
, split
, stdenv
, text
, time
, transformers
, utf8-string
, yaml
}:
mkDerivation {

pname = "cabal2nix";
version = "2.8.2";
sha256 = "88f52d518bfdf9421e82665bc9b40524312157015578f8c8b1c68e70f3457354";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
aeson
ansi-wl-pprint
base
bytestring
Cabal
containers
deepseq
directory
distribution-nixpkgs
filepath
hackage-db
hopenssl
hpack
language-nix
lens
optparse-applicative
pretty
process
split
text
time
transformers
yaml
];
executableHaskellDepends = [
aeson
base
bytestring
Cabal
containers
directory
distribution-nixpkgs
filepath
hopenssl
language-nix
lens
monad-par
monad-par-extras
mtl
optparse-applicative
pretty
utf8-string
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/nixos/cabal2nix#readme";
description = "Convert Cabal files into Nix build instructions";
license = stdenv.lib.licenses.bsd3;

}) {};
"cache" = callPackage
({
  mkDerivation
, base
, clock
, hashable
, stdenv
, stm
, transformers
, unordered-containers
}:
mkDerivation {

pname = "cache";
version = "0.1.1.0";
sha256 = "14756f8383e991affe6120d299ba23c4f53753519700f8a771cfcec9782b78ff";
libraryHaskellDepends = [
base
clock
hashable
stm
transformers
unordered-containers
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/hverr/haskell-cache#readme";
description = "An in-memory key/value store with expiration support";
license = stdenv.lib.licenses.bsd3;

}) {};
"cairo" = callPackage
({
  mkDerivation
, array
, base
, bytestring
, Cabal
, cairo
, gtk2hs-buildtools
, mtl
, stdenv
, text
, utf8-string
}:
mkDerivation {

pname = "cairo";
version = "0.13.5.0";
sha256 = "420acd81e0b5578ad188bcdd38463135293c233221abb741cc4004d4c8a6bef3";
enableSeparateDataOutput = true;
setupHaskellDepends = [
base
Cabal
gtk2hs-buildtools
];
libraryHaskellDepends = [
array
base
bytestring
mtl
text
utf8-string
];
libraryPkgconfigDepends = [
cairo
];
doHaddock = false;
doCheck = false;
homepage = "http://projects.haskell.org/gtk2hs/";
description = "Binding to the Cairo library";
license = stdenv.lib.licenses.bsd3;

}) {inherit (pkgs) cairo;};
"calendar-recycling" = callPackage
({
  mkDerivation
, base
, containers
, html
, old-time
, stdenv
, utility-ht
}:
mkDerivation {

pname = "calendar-recycling";
version = "0.0";
sha256 = "a33e62c5bdbbece82491b6b795510496467df9993c715c819a7aad7707ee7963";
isLibrary = false;
isExecutable = true;
executableHaskellDepends = [
base
containers
html
old-time
utility-ht
];
doHaddock = false;
doCheck = false;
homepage = "http://hub.darcs.net/thielema/calendar-recycling";
description = "List years with the same calendars";
license = stdenv.lib.licenses.bsd3;

}) {};
"call-stack" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "call-stack";
version = "0.1.0";
sha256 = "f25f5e0992a39371079cc25c2a14b5abb872fa7d868a32753aac3a258b83b1e2";
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/sol/call-stack#readme";
description = "Use GHC call-stacks in a backward compatible way";
license = stdenv.lib.licenses.mit;

}) {};
"capataz" = callPackage
({
  mkDerivation
, async
, base
, bytestring
, data-default
, microlens
, protolude
, safe-exceptions
, stdenv
, stm
, teardown
, text
, time
, unordered-containers
, uuid
, vector
}:
mkDerivation {

pname = "capataz";
version = "0.1.0.1";
sha256 = "2d34c45a76148165371c697e675766ee3b365dd4370907f1792fad584bb5bd51";
libraryHaskellDepends = [
async
base
bytestring
data-default
microlens
protolude
safe-exceptions
stm
teardown
text
time
unordered-containers
uuid
vector
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/roman/Haskell-capataz#readme";
description = "OTP-like supervision trees in Haskell";
license = stdenv.lib.licenses.mit;

}) {};
"cardano-crypto" = callPackage
({
  mkDerivation
, base
, bytestring
, cryptonite
, cryptonite-openssl
, deepseq
, fetchgit
, hashable
, memory
, stdenv
}:
mkDerivation {

pname = "cardano-crypto";
version = "1.0.0";
src = fetchgit {

url = "https://github.com/input-output-hk/cardano-crypto";
sha256 = "02gjaj7889y30g2qfdh96ywrsdpmgfgyqyajw49zaklwjvkh87sv";
rev = "838b064d8a59286142aa2fe14434fe7601896ddb";

};
libraryHaskellDepends = [
base
bytestring
cryptonite
cryptonite-openssl
deepseq
hashable
memory
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/input-output-hk/cardano-crypto#readme";
description = "Cryptography primitives for cardano";
license = stdenv.lib.licenses.mit;

}) {};
"carray" = callPackage
({
  mkDerivation
, array
, base
, binary
, bytestring
, ix-shapable
, QuickCheck
, stdenv
, syb
}:
mkDerivation {

pname = "carray";
version = "0.1.6.8";
sha256 = "8f1967d54c7cf9680481c6f630eafa66f6d916b93c98f3b3c47449f682f11613";
libraryHaskellDepends = [
array
base
binary
bytestring
ix-shapable
QuickCheck
syb
];
doHaddock = false;
doCheck = false;
description = "A C-compatible array library";
license = stdenv.lib.licenses.bsd3;

}) {};
"cartel" = callPackage
({
  mkDerivation
, base
, directory
, filepath
, optparse-applicative
, pretty-show
, process
, split
, stdenv
, time
, transformers
}:
mkDerivation {

pname = "cartel";
version = "0.18.0.2";
sha256 = "7b27aa2cbeb73b1d5bf93214f290275025c3231fee23b32d80de104ec76ec270";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
base
directory
filepath
optparse-applicative
pretty-show
process
split
time
transformers
];
executableHaskellDepends = [
base
directory
filepath
optparse-applicative
pretty-show
process
split
time
transformers
];
doHaddock = false;
doCheck = false;
homepage = "http://www.github.com/massysett/cartel";
description = "Specify Cabal files in Haskell";
license = stdenv.lib.licenses.bsd3;

}) {};
"case-insensitive" = callPackage
({
  mkDerivation
, base
, bytestring
, deepseq
, hashable
, stdenv
, text
}:
mkDerivation {

pname = "case-insensitive";
version = "1.2.0.11";
sha256 = "a7ce6d17e50caaa0f19ad8e67361499022860554c521b1e57993759da3eb37e3";
libraryHaskellDepends = [
base
bytestring
deepseq
hashable
text
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/basvandijk/case-insensitive";
description = "Case insensitive string comparison";
license = stdenv.lib.licenses.bsd3;

}) {};
"cased" = callPackage
({
  mkDerivation
, base
, stdenv
, text
}:
mkDerivation {

pname = "cased";
version = "0.1.0.0";
sha256 = "8394e6705ed83152875e1de1c51c54c26b04a2359919d8958d66997b2b60ad23";
libraryHaskellDepends = [
base
text
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/jb55/cased";
description = "Track string casing in its type";
license = stdenv.lib.licenses.mit;

}) {};
"cases" = callPackage
({
  mkDerivation
, attoparsec
, base-prelude
, loch-th
, stdenv
, text
}:
mkDerivation {

pname = "cases";
version = "0.1.3.2";
sha256 = "9ecf632f7751aac2ed7ec93407f9499237316f2eb50f331bb4969abf3359a8a9";
libraryHaskellDepends = [
attoparsec
base-prelude
loch-th
text
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/nikita-volkov/cases";
description = "A converter for spinal, snake and camel cases";
license = stdenv.lib.licenses.mit;

}) {};
"casing" = callPackage
({
  mkDerivation
, base
, split
, stdenv
}:
mkDerivation {

pname = "casing";
version = "0.1.4.0";
sha256 = "8e8a3631ef5823ae53dfeb7497ad4856c6758e3e380ff164f6a261f41685f6d7";
libraryHaskellDepends = [
base
split
];
doHaddock = false;
doCheck = false;
description = "Convert between various source code casing conventions";
license = stdenv.lib.licenses.mit;

}) {};
"cassava" = callPackage
({
  mkDerivation
, array
, attoparsec
, base
, bytestring
, containers
, deepseq
, hashable
, Only
, scientific
, stdenv
, text
, text-short
, unordered-containers
, vector
}:
mkDerivation {

pname = "cassava";
version = "0.5.1.0";
sha256 = "762c8aaea2cdad61f52bad1b9f1f3b32764b4b6da03371aba6e5017f69614277";
configureFlags = [
"-f-bytestring--lt-0_10_4"
];
libraryHaskellDepends = [
array
attoparsec
base
bytestring
containers
deepseq
hashable
Only
scientific
text
text-short
unordered-containers
vector
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/hvr/cassava";
description = "A CSV parsing and encoding library";
license = stdenv.lib.licenses.bsd3;

}) {};
"cassava-conduit" = callPackage
({
  mkDerivation
, array
, base
, bifunctors
, bytestring
, cassava
, conduit
, containers
, mtl
, stdenv
, text
}:
mkDerivation {

pname = "cassava-conduit";
version = "0.4.0.2";
sha256 = "3fbec93078a468fbcf45290e36b97ad159a5374e588846ae9643c3486a480a4f";
libraryHaskellDepends = [
array
base
bifunctors
bytestring
cassava
conduit
containers
mtl
text
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/domdere/cassava-conduit";
description = "Conduit interface for cassava package";
license = stdenv.lib.licenses.bsd3;

}) {};
"cassava-records" = callPackage
({
  mkDerivation
, attoparsec
, base
, bytestring
, cassava
, foldl
, stdenv
, template-haskell
, text
, unordered-containers
, vector
}:
mkDerivation {

pname = "cassava-records";
version = "0.1.0.4";
sha256 = "11f832c11125bd7a73b57941284d9aeb7f1e7572004da7e37311b34d3366af8d";
libraryHaskellDepends = [
attoparsec
base
bytestring
cassava
foldl
template-haskell
text
unordered-containers
vector
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/gdevanla/cassava-records#readme";
description = "Auto-generation of records data type";
license = stdenv.lib.licenses.bsd3;

}) {};
"cassette" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "cassette";
version = "0.1.0";
sha256 = "fd40b3fd44eebce549216f3a4c1852f5b109edddfff3d6d7e243b64574981613";
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
description = "A combinator library for simultaneously defining parsers and pretty printers";
license = stdenv.lib.licenses.bsd3;

}) {};
"cast" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "cast";
version = "0.1.0.2";
sha256 = "24d545e5974436b6e3ee9dfda7ed68218c9f698103adae676a60860d90d7bc91";
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/haskell-patterns/cast#readme";
description = "Abstact cast pattern";
license = stdenv.lib.licenses.bsd3;

}) {};
"cayley-client" = callPackage
({
  mkDerivation
, aeson
, attoparsec
, base
, binary
, bytestring
, exceptions
, http-client
, http-conduit
, lens
, lens-aeson
, mtl
, stdenv
, text
, transformers
, unordered-containers
, vector
}:
mkDerivation {

pname = "cayley-client";
version = "0.4.6";
sha256 = "6603953227f530b7996898c8f5c77a6fecf8cf6a04d5d558a703ad83fe32cef3";
libraryHaskellDepends = [
aeson
attoparsec
base
binary
bytestring
exceptions
http-client
http-conduit
lens
lens-aeson
mtl
text
transformers
unordered-containers
vector
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/MichelBoucey/cayley-client";
description = "A Haskell client for the Cayley graph database";
license = stdenv.lib.licenses.bsd3;

}) {};
"cereal" = callPackage
({
  mkDerivation
, array
, base
, bytestring
, containers
, ghc-prim
, stdenv
}:
mkDerivation {

pname = "cereal";
version = "0.5.5.0";
sha256 = "0b97320ffbfa6df2e5679022215dbd0fe6e3b5ae8428c2ff4310d9e1acf16822";
libraryHaskellDepends = [
array
base
bytestring
containers
ghc-prim
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/GaloisInc/cereal";
description = "A binary serialization library";
license = stdenv.lib.licenses.bsd3;

}) {};
"cereal-conduit" = callPackage
({
  mkDerivation
, base
, bytestring
, cereal
, conduit
, resourcet
, stdenv
, transformers
}:
mkDerivation {

pname = "cereal-conduit";
version = "0.8.0";
sha256 = "d95c4518a9984feacfd811c64be993705bff74c1f2daa00b4687bbb79f3a39eb";
revision = "1";
editedCabalFile = "1imyl3g2bni8bc6kajr857xh94fscphksj3286pxfpa8yp9vqqpc";
libraryHaskellDepends = [
base
bytestring
cereal
conduit
resourcet
transformers
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/snoyberg/conduit";
description = "Turn Data.Serialize Gets and Puts into Sources, Sinks, and Conduits";
license = stdenv.lib.licenses.bsd3;

}) {};
"cereal-text" = callPackage
({
  mkDerivation
, base
, cereal
, stdenv
, text
}:
mkDerivation {

pname = "cereal-text";
version = "0.1.0.2";
sha256 = "3c7a15f4681fa53b66dcd5165f31f56ff9751a752ac5123ecc5bcf5c3ea0354c";
libraryHaskellDepends = [
base
cereal
text
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/ulikoehler/cereal-text";
description = "Data.Text instances for the cereal serialization library";
license = stdenv.lib.licenses.asl20;

}) {};
"cereal-time" = callPackage
({
  mkDerivation
, base
, cereal
, stdenv
, time
}:
mkDerivation {

pname = "cereal-time";
version = "0.1.0.0";
sha256 = "bec6d5103ec45bee242825da4cf695f574f101bb1d48778bf7823175dfa43cb2";
libraryHaskellDepends = [
base
cereal
time
];
doHaddock = false;
doCheck = false;
description = "Serialize instances for types from `time` package";
license = stdenv.lib.licenses.bsd3;

}) {};
"cereal-vector" = callPackage
({
  mkDerivation
, base
, bytestring
, cereal
, stdenv
, vector
}:
mkDerivation {

pname = "cereal-vector";
version = "0.2.0.1";
sha256 = "ff0685a6c39e7aae32f8b4165e2ae06f284c867298ad4f7b776c1c1b2859f933";
libraryHaskellDepends = [
base
bytestring
cereal
vector
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/acfoltzer/cereal-vector";
description = "Serialize instances for Data.Vector types.";
license = stdenv.lib.licenses.bsd3;

}) {};
"charset" = callPackage
({
  mkDerivation
, array
, base
, bytestring
, containers
, semigroups
, stdenv
, unordered-containers
}:
mkDerivation {

pname = "charset";
version = "0.3.7.1";
sha256 = "3d415d2883bd7bf0cc9f038e8323f19c71e07dd12a3c712f449ccb8b4daac0be";
libraryHaskellDepends = [
array
base
bytestring
containers
semigroups
unordered-containers
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/ekmett/charset";
description = "Fast unicode character sets based on complemented PATRICIA tries";
license = stdenv.lib.licenses.bsd3;

}) {};
"charsetdetect-ae" = callPackage
({
  mkDerivation
, base
, bytestring
, stdenv
}:
mkDerivation {

pname = "charsetdetect-ae";
version = "1.1.0.3";
sha256 = "fed4d478a49dec246e7ac0dd989d90dc6fd6499f9bc83774409a4504ce4b6e96";
libraryHaskellDepends = [
base
bytestring
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/aelve/charsetdetect-ae";
description = "Character set detection using Mozilla's Universal Character Set Detector";
license = "LGPL";

}) {};
"chaselev-deque" = callPackage
({
  mkDerivation
, abstract-deque
, array
, atomic-primops
, base
, ghc-prim
, stdenv
, transformers
, vector
}:
mkDerivation {

pname = "chaselev-deque";
version = "0.5.0.5";
sha256 = "4d58f8d56228e9f5bea2a65717dea65106323cb5ead9b5f39f904dac5c0043f4";
libraryHaskellDepends = [
abstract-deque
array
atomic-primops
base
ghc-prim
transformers
vector
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/rrnewton/haskell-lockfree/wiki";
description = "Chase & Lev work-stealing lock-free double-ended queues (deques)";
license = stdenv.lib.licenses.bsd3;

}) {};
"chatwork" = callPackage
({
  mkDerivation
, aeson
, aeson-casing
, base
, bytestring
, connection
, data-default-class
, http-api-data
, http-client
, http-client-tls
, http-types
, req
, stdenv
, text
}:
mkDerivation {

pname = "chatwork";
version = "0.1.3.3";
sha256 = "35b4e94eccf8a46c2a0c24cfdb75294c1aaf2495c3ddd056046b8db3c43f5495";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
aeson
aeson-casing
base
bytestring
connection
data-default-class
http-api-data
http-client
http-client-tls
http-types
req
text
];
executableHaskellDepends = [
aeson
aeson-casing
base
bytestring
connection
data-default-class
http-api-data
http-client
http-client-tls
http-types
req
text
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/matsubara0507/chatwork#readme";
description = "The ChatWork API in Haskell";
license = stdenv.lib.licenses.mit;

}) {};
"cheapskate" = callPackage
({
  mkDerivation
, base
, blaze-html
, bytestring
, containers
, data-default
, deepseq
, mtl
, stdenv
, syb
, text
, uniplate
, xss-sanitize
}:
mkDerivation {

pname = "cheapskate";
version = "0.1.1";
sha256 = "621041bf50cb9d94bf6a4eb90a038e0b0a6cb9794802f985fe126a73e08938c2";
revision = "1";
editedCabalFile = "1zrbp211ciia8j1br6krbxbqsj69kmx0rgkbvbpxdklmbgpfam3b";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
base
blaze-html
containers
data-default
deepseq
mtl
syb
text
uniplate
xss-sanitize
];
executableHaskellDepends = [
base
blaze-html
bytestring
text
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/jgm/cheapskate";
description = "Experimental markdown processor";
license = stdenv.lib.licenses.bsd3;

}) {};
"cheapskate-highlight" = callPackage
({
  mkDerivation
, base
, blaze-html
, cheapskate
, highlighting-kate
, stdenv
, text
}:
mkDerivation {

pname = "cheapskate-highlight";
version = "0.1.0.0";
sha256 = "5af7afb26b4ea80952963b44db695cbf18da34d3e8a7d32382a7dbfa4832d370";
revision = "1";
editedCabalFile = "1c8kxqdqf0j962xjdrrjfcbjsl0c1kax31rjykymv7w16d6hmlj4";
libraryHaskellDepends = [
base
blaze-html
cheapskate
highlighting-kate
text
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/aelve/cheapskate-highlight";
description = "Code highlighting for cheapskate";
license = stdenv.lib.licenses.bsd3;

}) {};
"cheapskate-lucid" = callPackage
({
  mkDerivation
, base
, blaze-html
, cheapskate
, lucid
, stdenv
}:
mkDerivation {

pname = "cheapskate-lucid";
version = "0.1.0.0";
sha256 = "f582e512befd2707a7056c1d15541967de2e0ce5702bc2197a3fced58a777245";
revision = "1";
editedCabalFile = "197nx95xw21i7zyvgzcgnr36ab6vrk17c66iz8ndwz61vp1jf6hc";
libraryHaskellDepends = [
base
blaze-html
cheapskate
lucid
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/aelve/cheapskate-lucid";
description = "Use cheapskate with Lucid";
license = stdenv.lib.licenses.bsd3;

}) {};
"check-email" = callPackage
({
  mkDerivation
, base
, bytestring
, email-validate
, resolv
, stdenv
}:
mkDerivation {

pname = "check-email";
version = "1.0.2";
sha256 = "1c2615fadba09a5d7aa5c68648d12218a595efb759842fb4f524cf380afa9327";
libraryHaskellDepends = [
base
bytestring
email-validate
];
librarySystemDepends = [
resolv
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/qoelet/check-email#readme";
description = "Confirm whether an email is valid and probably existant";
license = stdenv.lib.licenses.bsd3;

}) {inherit (pkgs) resolv;};
"checkers" = callPackage
({
  mkDerivation
, array
, base
, QuickCheck
, random
, semigroupoids
, stdenv
}:
mkDerivation {

pname = "checkers";
version = "0.4.10";
sha256 = "89f739106f528998cc83bc25ab1b3e483cd2ffb21ca120fcb8b2e5c43306711e";
libraryHaskellDepends = [
array
base
QuickCheck
random
semigroupoids
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/conal/checkers";
description = "Check properties on standard classes and data structures";
license = stdenv.lib.licenses.bsd3;

}) {};
"choice" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "choice";
version = "0.2.2";
sha256 = "d367e4321329df5913216f9746528e4526e14b5ad1f33edc82de8288ad719e61";
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/mboes/choice#readme";
description = "A solution to boolean blindness";
license = stdenv.lib.licenses.publicDomain;

}) {};
"chunked-data" = callPackage
({
  mkDerivation
, base
, bytestring
, containers
, semigroups
, stdenv
, text
, transformers
, vector
}:
mkDerivation {

pname = "chunked-data";
version = "0.3.1";
sha256 = "f710c581aee1f899e807fc9e6cba721b27d53dc9d56986f1922bc7ccddf1a79a";
libraryHaskellDepends = [
base
bytestring
containers
semigroups
text
transformers
vector
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/snoyberg/mono-traversable#readme";
description = "Typeclasses for dealing with various chunked data representations";
license = stdenv.lib.licenses.mit;

}) {};
"cipher-aes" = callPackage
({
  mkDerivation
, base
, byteable
, bytestring
, crypto-cipher-types
, securemem
, stdenv
}:
mkDerivation {

pname = "cipher-aes";
version = "0.2.11";
sha256 = "d3b171895698c73da24d7ce97543f725d26637f038de670c0fd4012ca7f95015";
libraryHaskellDepends = [
base
byteable
bytestring
crypto-cipher-types
securemem
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/vincenthz/hs-cipher-aes";
description = "Fast AES cipher implementation with advanced mode of operations";
license = stdenv.lib.licenses.bsd3;

}) {};
"cipher-aes128" = callPackage
({
  mkDerivation
, base
, bytestring
, Cabal
, cereal
, crypto-api
, process
, stdenv
, tagged
}:
mkDerivation {

pname = "cipher-aes128";
version = "0.7.0.3";
sha256 = "6f27bea8bcd1987072fc75b6b423ae9c691574324b6a328ec1e2866f84412e3a";
revision = "1";
editedCabalFile = "1c3lr80vcdrajlvks9ny9s8m2n2kc9jw14nh65668dfikp0pqc61";
isLibrary = true;
isExecutable = true;
setupHaskellDepends = [
base
Cabal
process
];
libraryHaskellDepends = [
base
bytestring
cereal
crypto-api
tagged
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/TomMD/cipher-aes128";
description = "AES and common modes using AES-NI when available";
license = stdenv.lib.licenses.bsd3;

}) {};
"cipher-blowfish" = callPackage
({
  mkDerivation
, base
, byteable
, bytestring
, crypto-cipher-types
, securemem
, stdenv
, vector
}:
mkDerivation {

pname = "cipher-blowfish";
version = "0.0.3";
sha256 = "8f41170a851dba6d0b6f07298af3213baca09ab2a8aaf2adb733631feb3b6641";
libraryHaskellDepends = [
base
byteable
bytestring
crypto-cipher-types
securemem
vector
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/vincenthz/hs-crypto-cipher";
description = "Blowfish cipher";
license = stdenv.lib.licenses.bsd3;

}) {};
"cipher-camellia" = callPackage
({
  mkDerivation
, base
, byteable
, bytestring
, crypto-cipher-types
, securemem
, stdenv
, vector
}:
mkDerivation {

pname = "cipher-camellia";
version = "0.0.2";
sha256 = "8d0cd137cdb890646bb5d3bb52b20fa6d74e1b0c35d7d524d60edd9d43ace2a7";
libraryHaskellDepends = [
base
byteable
bytestring
crypto-cipher-types
securemem
vector
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/vincenthz/hs-crypto-cipher";
description = "Camellia block cipher primitives";
license = stdenv.lib.licenses.bsd3;

}) {};
"cipher-des" = callPackage
({
  mkDerivation
, base
, byteable
, bytestring
, crypto-cipher-types
, securemem
, stdenv
}:
mkDerivation {

pname = "cipher-des";
version = "0.0.6";
sha256 = "85f1bccdec625a120ecf83b861afcb6478f8f899ceaa06fc083e642b54ff4ac7";
libraryHaskellDepends = [
base
byteable
bytestring
crypto-cipher-types
securemem
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/vincenthz/hs-crypto-cipher";
description = "DES and 3DES primitives";
license = stdenv.lib.licenses.bsd3;

}) {};
"cipher-rc4" = callPackage
({
  mkDerivation
, base
, byteable
, bytestring
, crypto-cipher-types
, stdenv
}:
mkDerivation {

pname = "cipher-rc4";
version = "0.1.4";
sha256 = "c67e731bc9e7f3882e33609c3d9ec97b4e9bbd2f95cd882926acfb621970384d";
libraryHaskellDepends = [
base
byteable
bytestring
crypto-cipher-types
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/vincenthz/hs-cipher-rc4";
description = "Fast RC4 cipher implementation";
license = stdenv.lib.licenses.bsd3;

}) {};
"circle-packing" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "circle-packing";
version = "0.1.0.6";
sha256 = "64ee44a90da3e5fe20d5b78bfe6eba93102a6b52c65f8a7b99af7799798ee81b";
revision = "1";
editedCabalFile = "10dh8jgjah1h54f83s9289abfqzc4ifykb01p5jljfac63yn42zs";
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
description = "Simple heuristic for packing discs of varying radii in a circle";
license = stdenv.lib.licenses.bsd3;

}) {};
"cisco-spark-api" = callPackage
({
  mkDerivation
, aeson
, attoparsec
, base
, bitset-word8
, bytestring
, conduit
, data-default
, http-conduit
, network-uri
, optparse-applicative
, stdenv
, text
, utf8-string
}:
mkDerivation {

pname = "cisco-spark-api";
version = "0.1.0.3";
sha256 = "7e962a9f34e5b0c66fe858f4c6a322d22586bc7a8ac602a317697d2d9b6228ba";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
aeson
attoparsec
base
bitset-word8
bytestring
conduit
data-default
http-conduit
network-uri
text
];
executableHaskellDepends = [
aeson
base
bytestring
conduit
data-default
http-conduit
optparse-applicative
text
utf8-string
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/nshimaza/webex-teams-api#readme";
description = "A Haskell bindings for Webex Teams API";
license = stdenv.lib.licenses.mit;

}) {};
"clang-compilation-database" = callPackage
({
  mkDerivation
, aeson
, base
, bytestring
, stdenv
, text
}:
mkDerivation {

pname = "clang-compilation-database";
version = "0.1.0.1";
sha256 = "114601a1769471e4fc2e8d100c5546e95fa803b9e56dcd342dab9829d0dc1ca8";
libraryHaskellDepends = [
aeson
base
bytestring
text
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/lambdageek/clang-compilation-database";
description = "JSON Compilation Database Format encoding and decoding";
license = stdenv.lib.licenses.mit;

}) {};
"classy-prelude" = callPackage
({
  mkDerivation
, async
, base
, basic-prelude
, bifunctors
, bytestring
, chunked-data
, containers
, deepseq
, dlist
, ghc-prim
, hashable
, mono-traversable
, mono-traversable-instances
, mtl
, mutable-containers
, primitive
, say
, semigroups
, stdenv
, stm
, stm-chans
, text
, time
, transformers
, unliftio
, unordered-containers
, vector
, vector-instances
}:
mkDerivation {

pname = "classy-prelude";
version = "1.4.0";
sha256 = "2b3b255676ab0fdeb39aebafa3543535ddd684d00c645b643e50cb9e2d25f9e0";
libraryHaskellDepends = [
async
base
basic-prelude
bifunctors
bytestring
chunked-data
containers
deepseq
dlist
ghc-prim
hashable
mono-traversable
mono-traversable-instances
mtl
mutable-containers
primitive
say
semigroups
stm
stm-chans
text
time
transformers
unliftio
unordered-containers
vector
vector-instances
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/snoyberg/mono-traversable#readme";
description = "A typeclass-based Prelude";
license = stdenv.lib.licenses.mit;

}) {};
"classy-prelude-conduit" = callPackage
({
  mkDerivation
, base
, bytestring
, classy-prelude
, conduit
, monad-control
, resourcet
, stdenv
, transformers
, void
}:
mkDerivation {

pname = "classy-prelude-conduit";
version = "1.4.0";
sha256 = "39ef2567a3542ebf91f6ebc103cc4afb64c2a4ec051c7ce578b577ef9931c424";
libraryHaskellDepends = [
base
bytestring
classy-prelude
conduit
monad-control
resourcet
transformers
void
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/snoyberg/mono-traversable#readme";
description = "classy-prelude together with conduit functions";
license = stdenv.lib.licenses.mit;

}) {};
"classy-prelude-yesod" = callPackage
({
  mkDerivation
, aeson
, base
, classy-prelude
, classy-prelude-conduit
, data-default
, http-conduit
, http-types
, persistent
, stdenv
, yesod
, yesod-newsfeed
, yesod-static
}:
mkDerivation {

pname = "classy-prelude-yesod";
version = "1.4.0";
sha256 = "0cd2a88f42c3541ba4bce6801c8b8d9c331e1c49a6288bf16f764676a34b9e28";
libraryHaskellDepends = [
aeson
base
classy-prelude
classy-prelude-conduit
data-default
http-conduit
http-types
persistent
yesod
yesod-newsfeed
yesod-static
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/snoyberg/mono-traversable#readme";
description = "Provide a classy prelude including common Yesod functionality";
license = stdenv.lib.licenses.mit;

}) {};
"classyplate" = callPackage
({
  mkDerivation
, base
, stdenv
, template-haskell
}:
mkDerivation {

pname = "classyplate";
version = "0.3.1.0";
sha256 = "9548f228998d7aa00372385e94d51d2802f1a5400b3b85dcb31fda4d75f7d12b";
libraryHaskellDepends = [
base
template-haskell
];
doHaddock = false;
doCheck = false;
description = "Fuseable type-class based generics";
license = stdenv.lib.licenses.bsd3;

}) {};
"clay" = callPackage
({
  mkDerivation
, base
, mtl
, stdenv
, text
}:
mkDerivation {

pname = "clay";
version = "0.12.2";
sha256 = "ea8b95a24568c8a37e2f8deda7f24c5c15a84886ad19f255d6d637e06786e98a";
revision = "1";
editedCabalFile = "1db2rc6q4a1699n43xmq31mv24b7ayc4ivc3n748zkzhs6ff4nbg";
libraryHaskellDepends = [
base
mtl
text
];
doHaddock = false;
doCheck = false;
homepage = "http://fvisser.nl/clay";
description = "CSS preprocessor as embedded Haskell";
license = stdenv.lib.licenses.bsd3;

}) {};
"cli" = callPackage
({
  mkDerivation
, base
, mtl
, stdenv
, terminfo
, transformers
}:
mkDerivation {

pname = "cli";
version = "0.1.2";
sha256 = "580a31fc25eb988dbb5ad3aebfb72d49f089cbee9693edf78dae722b2fde4acb";
libraryHaskellDepends = [
base
mtl
terminfo
transformers
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/vincenthz/hs-cli";
description = "Command Line Interface";
license = stdenv.lib.licenses.bsd3;

}) {};
"clientsession" = callPackage
({
  mkDerivation
, base
, base64-bytestring
, bytestring
, cereal
, cipher-aes
, cprng-aes
, crypto-api
, crypto-random
, directory
, entropy
, setenv
, skein
, stdenv
, tagged
}:
mkDerivation {

pname = "clientsession";
version = "0.9.1.2";
sha256 = "5915adc4de26d2a8b03f1a445bac0b0f5d10a5b0380a4eed71b79a20a727d068";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
base
base64-bytestring
bytestring
cereal
cipher-aes
cprng-aes
crypto-api
crypto-random
directory
entropy
setenv
skein
tagged
];
executableHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/yesodweb/clientsession/tree/master";
description = "Securely store session data in a client-side cookie";
license = stdenv.lib.licenses.mit;

}) {};
"clock" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "clock";
version = "0.7.2";
sha256 = "886601978898d3a91412fef895e864576a7125d661e1f8abc49a2a08840e691f";
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/corsis/clock";
description = "High-resolution clock functions: monotonic, realtime, cputime";
license = stdenv.lib.licenses.bsd3;

}) {};
"clock-extras" = callPackage
({
  mkDerivation
, base
, clock
, stdenv
}:
mkDerivation {

pname = "clock-extras";
version = "0.1.0.2";
sha256 = "a9ed097aa9d48b53c6a555bc5f67e347249b08e2252dd4fc998fb4ab42edda59";
libraryHaskellDepends = [
base
clock
];
doHaddock = false;
doCheck = false;
description = "A couple functions that probably should be in the 'clock' package";
license = stdenv.lib.licenses.bsd3;

}) {};
"clr-host" = callPackage
({
  mkDerivation
, base
, bytestring
, Cabal
, clr-marshal
, directory
, file-embed
, filepath
, glib
, mono
, stdenv
, text
, transformers
}:
mkDerivation {

pname = "clr-host";
version = "0.2.0.1";
sha256 = "5306ea1368b922d595159f237877f5b76fb9744e082f8c286c4546dc1a6f0e96";
setupHaskellDepends = [
base
Cabal
directory
filepath
transformers
];
libraryHaskellDepends = [
base
bytestring
clr-marshal
file-embed
text
];
librarySystemDepends = [
glib
mono
];
doHaddock = false;
doCheck = false;
homepage = "https://gitlab.com/tim-m89/clr-haskell/tree/master/libs/clr-host";
description = "Hosting the Common Language Runtime";
license = stdenv.lib.licenses.bsd3;

}) {inherit (pkgs) glib; inherit (pkgs) mono;};
"clr-marshal" = callPackage
({
  mkDerivation
, base
, stdenv
, text
}:
mkDerivation {

pname = "clr-marshal";
version = "0.2.0.0";
sha256 = "4113651f3d10de21813b2a44b78ca19f9ab62b6c6d9df0c25a88940fabebdcd6";
libraryHaskellDepends = [
base
text
];
doHaddock = false;
doCheck = false;
homepage = "https://gitlab.com/tim-m89/clr-haskell/tree/master/libs/clr-marshal";
description = "Marshaling for the clr";
license = stdenv.lib.licenses.bsd3;

}) {};
"clumpiness" = callPackage
({
  mkDerivation
, base
, containers
, stdenv
, tree-fun
}:
mkDerivation {

pname = "clumpiness";
version = "0.17.0.0";
sha256 = "fd4b303d206eaf242c779bb65c42256e42220c8497a6bcf3bc59589b9396c495";
libraryHaskellDepends = [
base
containers
tree-fun
];
doHaddock = false;
doCheck = false;
description = "Calculate the clumpiness of leaf properties in a tree";
license = stdenv.lib.licenses.gpl3;

}) {};
"cmark" = callPackage
({
  mkDerivation
, base
, bytestring
, stdenv
, text
}:
mkDerivation {

pname = "cmark";
version = "0.5.6";
sha256 = "855c4b7aca6d4e9eb076beb6cc6f74e7578fae7aa3625fd3fca5e3b4901a32b0";
libraryHaskellDepends = [
base
bytestring
text
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/jgm/cmark-hs";
description = "Fast, accurate CommonMark (Markdown) parser and renderer";
license = stdenv.lib.licenses.bsd3;

}) {};
"cmark-gfm" = callPackage
({
  mkDerivation
, base
, bytestring
, stdenv
, text
}:
mkDerivation {

pname = "cmark-gfm";
version = "0.1.3";
sha256 = "731cb392e4edfd18d0dae709904791610588e6770934e5112cbdd5e6f3d271ba";
libraryHaskellDepends = [
base
bytestring
text
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/kivikakk/cmark-gfm-hs";
description = "Fast, accurate GitHub Flavored Markdown parser and renderer";
license = stdenv.lib.licenses.bsd3;

}) {};
"cmark-highlight" = callPackage
({
  mkDerivation
, base
, blaze-html
, cmark
, highlighting-kate
, stdenv
, text
}:
mkDerivation {

pname = "cmark-highlight";
version = "0.2.0.0";
sha256 = "de769cd703d3fcd5d69428477184fad57019db55a71b1315a9bbb54317f0812b";
revision = "1";
editedCabalFile = "1zdxr3bfj9bn2yclm5m17aa7wid6zwhvg6mj245wd2y34p696znw";
libraryHaskellDepends = [
base
blaze-html
cmark
highlighting-kate
text
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/aelve/cmark-highlight";
description = "Code highlighting for cmark";
license = stdenv.lib.licenses.bsd3;

}) {};
"cmark-lucid" = callPackage
({
  mkDerivation
, base
, cmark
, lucid
, stdenv
}:
mkDerivation {

pname = "cmark-lucid";
version = "0.1.0.0";
sha256 = "d2927b9fed0e32fe7afc539e7b427e0a95f8c9297bb6bc531101b476ba8a3c03";
revision = "1";
editedCabalFile = "1mizbv18bl8qrgz27wlz7sb6cfhblmp7p7gh7dqq8g0r4djrvqg5";
libraryHaskellDepends = [
base
cmark
lucid
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/aelve/cmark-lucid";
description = "Use cmark with Lucid";
license = stdenv.lib.licenses.bsd3;

}) {};
"cmdargs" = callPackage
({
  mkDerivation
, base
, filepath
, process
, stdenv
, template-haskell
, transformers
}:
mkDerivation {

pname = "cmdargs";
version = "0.10.20";
sha256 = "0e269dc48c3d4c0447c96ffd772a6fe69dfa1260c323f4cd7bf171cbf2ab7331";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
base
filepath
process
template-haskell
transformers
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/ndmitchell/cmdargs#readme";
description = "Command line argument processing";
license = stdenv.lib.licenses.bsd3;

}) {};
"code-builder" = callPackage
({
  mkDerivation
, base
, containers
, stdenv
}:
mkDerivation {

pname = "code-builder";
version = "0.1.3";
sha256 = "559e47a44cec85a8e95df92e5d2693cacc9761503c30be3b83eaebd95360a4ab";
libraryHaskellDepends = [
base
containers
];
doHaddock = false;
doCheck = false;
description = "Simple system for generating code";
license = stdenv.lib.licenses.bsd3;

}) {};
"code-page" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "code-page";
version = "0.1.3";
sha256 = "e65c86600e06d85f2e2c2a9df4b3d68e2dbd3adb2df9e922a4cd744966762191";
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/RyanGlScott/code-page";
description = "Windows code page library for Haskell";
license = stdenv.lib.licenses.bsd3;

}) {};
"codec" = callPackage
({
  mkDerivation
, aeson
, base
, binary
, binary-bits
, bytestring
, mtl
, profunctors
, stdenv
, template-haskell
, text
, transformers
, unordered-containers
, vector
}:
mkDerivation {

pname = "codec";
version = "0.2.1";
sha256 = "ffc261b58108c3d90c0b0b68461857d1148208d1a9645916e63241aaa3c25b28";
libraryHaskellDepends = [
aeson
base
binary
binary-bits
bytestring
mtl
profunctors
template-haskell
text
transformers
unordered-containers
vector
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/chpatrick/codec";
description = "Simple bidirectional serialization";
license = stdenv.lib.licenses.bsd3;

}) {};
"codo-notation" = callPackage
({
  mkDerivation
, base
, comonad
, haskell-src-meta
, parsec
, stdenv
, template-haskell
, uniplate
}:
mkDerivation {

pname = "codo-notation";
version = "0.5.2";
sha256 = "78eb57004541ed29eb4c54196b91ac2dd1028a3315f51cd4dc00debfc0938eaf";
libraryHaskellDepends = [
base
comonad
haskell-src-meta
parsec
template-haskell
uniplate
];
doHaddock = false;
doCheck = false;
description = "A notation for comonads, analogous to the do-notation for monads";
license = stdenv.lib.licenses.bsd3;

}) {};
"colorful-monoids" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "colorful-monoids";
version = "0.2.1.1";
sha256 = "0bf5f8d9632dec436a6744d584003d09b15169e600e9e5c2636e2c3f4d4f2e58";
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/minad/colorful-monoids#readme";
description = "Styled console text output using ANSI escape sequences";
license = stdenv.lib.licenses.mit;

}) {};
"colorize-haskell" = callPackage
({
  mkDerivation
, ansi-terminal
, base
, haskell-lexer
, stdenv
}:
mkDerivation {

pname = "colorize-haskell";
version = "1.0.1";
sha256 = "03764374bd1aed5c63e20517441ccaae7c95cb2fa9e416da952f26be8dba9aec";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
ansi-terminal
base
haskell-lexer
];
executableHaskellDepends = [
ansi-terminal
base
haskell-lexer
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/yav/colorize-haskell";
description = "Highligt Haskell source";
license = stdenv.lib.licenses.bsd3;

}) {};
"colour" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "colour";
version = "2.3.4";
sha256 = "0f439f00b322ce3d551f28a4dd1520aa2c91d699de4cdc6d485b9b04be0dc5eb";
enableSeparateDataOutput = true;
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
homepage = "http://www.haskell.org/haskellwiki/Colour";
description = "A model for human colour/color perception";
license = stdenv.lib.licenses.mit;

}) {};
"colour-accelerate" = callPackage
({
  mkDerivation
, accelerate
, base
, stdenv
}:
mkDerivation {

pname = "colour-accelerate";
version = "0.2.0.0";
sha256 = "ec7f80370e271b7cd87a2b0255cfeee63d73cbc895a346c447efc8e214332780";
libraryHaskellDepends = [
accelerate
base
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/tmcdonell/colour-accelerate";
description = "Working with colours in Accelerate";
license = stdenv.lib.licenses.bsd3;

}) {};
"combinatorial" = callPackage
({
  mkDerivation
, array
, base
, containers
, stdenv
, transformers
, utility-ht
}:
mkDerivation {

pname = "combinatorial";
version = "0.1";
sha256 = "096e6dacd9f99c7ce63e95b991df33b74645f71f7df2dd90627843d96324b4a8";
revision = "1";
editedCabalFile = "1bqcg04w48dqk4n1n36j9ykajrmwqdd4qpcjjjfhzvm83z5ypsh7";
libraryHaskellDepends = [
array
base
containers
transformers
utility-ht
];
doHaddock = false;
doCheck = false;
homepage = "http://hub.darcs.net/thielema/combinatorial/";
description = "Count, enumerate, rank and unrank combinatorial objects";
license = stdenv.lib.licenses.bsd3;

}) {};
"comfort-graph" = callPackage
({
  mkDerivation
, base
, containers
, QuickCheck
, semigroups
, stdenv
, transformers
, utility-ht
}:
mkDerivation {

pname = "comfort-graph";
version = "0.0.3";
sha256 = "b9d67c0f19e34c27fe759c149939c37d655a170482760389de07cca9cb534387";
libraryHaskellDepends = [
base
containers
QuickCheck
semigroups
transformers
utility-ht
];
doHaddock = false;
doCheck = false;
homepage = "http://hub.darcs.net/thielema/comfort-graph";
description = "Graph structure with type parameters for nodes and edges";
license = stdenv.lib.licenses.bsd3;

}) {};
"commutative" = callPackage
({
  mkDerivation
, base
, random
, semigroups
, stdenv
}:
mkDerivation {

pname = "commutative";
version = "0.0.1.4";
sha256 = "0de746012c73543b5dcf649434046e36d5e158e0967e8e2ae122e85d5457c9cf";
libraryHaskellDepends = [
base
random
semigroups
];
doHaddock = false;
doCheck = false;
description = "Commutative binary operations";
license = stdenv.lib.licenses.mit;

}) {};
"comonad" = callPackage
({
  mkDerivation
, base
, Cabal
, cabal-doctest
, containers
, contravariant
, distributive
, semigroups
, stdenv
, tagged
, transformers
, transformers-compat
}:
mkDerivation {

pname = "comonad";
version = "5.0.3";
sha256 = "a7f4584d634051123c547f0d10f88eaf23d99229dbd01dfdcd98cddd41e54df6";
revision = "3";
editedCabalFile = "062482gwrjc9njqsb239p391bk0s8j39a5xqv5k7rl9ijaxxlfmv";
setupHaskellDepends = [
base
Cabal
cabal-doctest
];
libraryHaskellDepends = [
base
containers
contravariant
distributive
semigroups
tagged
transformers
transformers-compat
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/ekmett/comonad/";
description = "Comonads";
license = stdenv.lib.licenses.bsd3;

}) {};
"compact" = callPackage
({
  mkDerivation
, base
, binary
, bytestring
, ghc-compact
, stdenv
}:
mkDerivation {

pname = "compact";
version = "0.1.0.1";
sha256 = "ee8533e16b94bbbf3519ccad26f3e569d60d33a5a9d2e3636e0764aff7b2d653";
revision = "1";
editedCabalFile = "0bdp226gx3gr1hg68xydxhkfr0h469ay60h0s1ywar19y3m8dn1p";
libraryHaskellDepends = [
base
binary
bytestring
ghc-compact
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/ezyang/compact";
description = "Non-GC'd, contiguous storage for immutable data structures";
license = stdenv.lib.licenses.bsd3;

}) {};
"compactmap" = callPackage
({
  mkDerivation
, base
, stdenv
, vector
}:
mkDerivation {

pname = "compactmap";
version = "0.1.4.2.1";
sha256 = "22166e0a2a78bf2b7cff49448ed9fcb145dece4f034de9afc8ce5b692fd0f774";
libraryHaskellDepends = [
base
vector
];
doHaddock = false;
doCheck = false;
description = "A read-only memory-efficient key-value store";
license = stdenv.lib.licenses.bsd3;

}) {};
"compensated" = callPackage
({
  mkDerivation
, base
, bifunctors
, binary
, bytes
, Cabal
, cabal-doctest
, cereal
, comonad
, deepseq
, distributive
, hashable
, lens
, log-domain
, safecopy
, semigroupoids
, semigroups
, stdenv
, vector
}:
mkDerivation {

pname = "compensated";
version = "0.7.2";
sha256 = "c7f9bf47a586720deda33b82ddc633d3507c8bc199eb5555c80931f6c323cae2";
setupHaskellDepends = [
base
Cabal
cabal-doctest
];
libraryHaskellDepends = [
base
bifunctors
binary
bytes
cereal
comonad
deepseq
distributive
hashable
lens
log-domain
safecopy
semigroupoids
semigroups
vector
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/analytics/compensated/";
description = "Compensated floating-point arithmetic";
license = stdenv.lib.licenses.bsd3;

}) {};
"compiler-warnings" = callPackage
({
  mkDerivation
, base
, binary
, parsec
, stdenv
, text
}:
mkDerivation {

pname = "compiler-warnings";
version = "0.1.0";
sha256 = "8cf4c57e1b4d61b1163969faa6e9f2cb8f22073fa75bf982d9b8a328225f5ce3";
libraryHaskellDepends = [
base
binary
parsec
text
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/yi-editor/compiler-warnings#readme";
description = "Parser for common compiler warning formats";
license = stdenv.lib.licenses.bsd2;

}) {};
"composable-associations" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "composable-associations";
version = "0.1.0.0";
sha256 = "9d1a10bc7ee1b514221bd8d0fc71f43f8d2338b1faebe6722f1d4db3bc29800e";
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/SamProtas/composable-associations#readme";
description = "Types and helpers for composing types into a single larger key-value type";
license = stdenv.lib.licenses.bsd3;

}) {};
"composable-associations-aeson" = callPackage
({
  mkDerivation
, aeson
, base
, composable-associations
, stdenv
, text
, unordered-containers
}:
mkDerivation {

pname = "composable-associations-aeson";
version = "0.1.0.0";
sha256 = "dbd754ed6d624469f16c4cd2ad51c441eeb8c62d6af66673f76034c7517c2a4f";
libraryHaskellDepends = [
aeson
base
composable-associations
text
unordered-containers
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/SamProtas/composable-associations#readme";
description = "Aeson ToJSON/FromJSON implementation for the types of composable-associations";
license = stdenv.lib.licenses.bsd3;

}) {};
"composition" = callPackage
({
  mkDerivation
, stdenv
}:
mkDerivation {

pname = "composition";
version = "1.0.2.1";
sha256 = "7123300f5eca5a7cec4eb731dc0e9c2c44aabe26b37e6579582a7267d9f7ad6a";
doHaddock = false;
doCheck = false;
description = "Combinators for unorthodox function composition";
license = stdenv.lib.licenses.bsd3;

}) {};
"composition-extra" = callPackage
({
  mkDerivation
, base
, composition
, contravariant
, stdenv
}:
mkDerivation {

pname = "composition-extra";
version = "2.0.0";
sha256 = "c998244a8fd160af3dd7ee93c417f665af51a46a04ce6b7d4623f46596ba7129";
libraryHaskellDepends = [
base
composition
contravariant
];
doHaddock = false;
doCheck = false;
description = "Combinators for unorthodox structure composition";
license = stdenv.lib.licenses.bsd3;

}) {};
"composition-prelude" = callPackage
({
  mkDerivation
, base
, cpphs
, stdenv
}:
mkDerivation {

pname = "composition-prelude";
version = "1.3.0.8";
sha256 = "621d728b615ea41e9fd6afa0e9cd395bf84e240bc8db332db79cdeb3e7e6309e";
libraryHaskellDepends = [
base
];
libraryToolDepends = [
cpphs
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/vmchale/composition-prelude#readme";
description = "Higher-order function combinators";
license = stdenv.lib.licenses.bsd3;

}) {};
"compressed" = callPackage
({
  mkDerivation
, base
, comonad
, containers
, fingertree
, hashable
, keys
, pointed
, reducers
, semigroupoids
, semigroups
, stdenv
, unordered-containers
}:
mkDerivation {

pname = "compressed";
version = "3.11";
sha256 = "d77bbf2f445d32f138dfde9e860e68db5de8ae04c52ffda23941ddf7bdabdd3d";
libraryHaskellDepends = [
base
comonad
containers
fingertree
hashable
keys
pointed
reducers
semigroupoids
semigroups
unordered-containers
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/ekmett/compressed/";
description = "Compressed containers and reducers";
license = stdenv.lib.licenses.bsd3;

}) {};
"concise" = callPackage
({
  mkDerivation
, base
, bytestring
, lens
, stdenv
, text
}:
mkDerivation {

pname = "concise";
version = "0.1.0.1";
sha256 = "5c27df5a3e1fe820548e90abc4a0e326b6d0fb286218619aa22d3af90c7b9925";
libraryHaskellDepends = [
base
bytestring
lens
text
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/frasertweedale/hs-concise";
description = "Utilities for Control.Lens.Cons";
license = stdenv.lib.licenses.bsd3;

}) {};
"concurrency" = callPackage
({
  mkDerivation
, array
, atomic-primops
, base
, exceptions
, monad-control
, mtl
, stdenv
, stm
, transformers
}:
mkDerivation {

pname = "concurrency";
version = "1.4.0.2";
sha256 = "32769a27569da5abd676db18f7b923992cf0d6dd19373d3b86c0e74a6d11921f";
libraryHaskellDepends = [
array
atomic-primops
base
exceptions
monad-control
mtl
stm
transformers
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/barrucadu/dejafu";
description = "Typeclasses, functions, and data types for concurrency and STM";
license = stdenv.lib.licenses.mit;

}) {};
"concurrent-extra" = callPackage
({
  mkDerivation
, base
, stdenv
, stm
, unbounded-delays
}:
mkDerivation {

pname = "concurrent-extra";
version = "0.7.0.12";
sha256 = "040e6db9e0147de9929661759930f1566a7250add4c7f65b04dc6e070c991df9";
libraryHaskellDepends = [
base
stm
unbounded-delays
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/basvandijk/concurrent-extra";
description = "Extra concurrency primitives";
license = stdenv.lib.licenses.bsd3;

}) {};
"concurrent-output" = callPackage
({
  mkDerivation
, ansi-terminal
, async
, base
, directory
, exceptions
, process
, stdenv
, stm
, terminal-size
, text
, transformers
, unix
}:
mkDerivation {

pname = "concurrent-output";
version = "1.10.5";
sha256 = "98c096228664d591eb2c352080955a202e883cdab8452efae3cae407e30fa5c3";
libraryHaskellDepends = [
ansi-terminal
async
base
directory
exceptions
process
stm
terminal-size
text
transformers
unix
];
doHaddock = false;
doCheck = false;
description = "Ungarble output from several threads or commands";
license = stdenv.lib.licenses.bsd2;

}) {};
"concurrent-split" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "concurrent-split";
version = "0.0.1";
sha256 = "60793c8eeff1fa0fe03910951d1925f3c66aec61ead64bf3f98dd6110a05b8e7";
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
description = "MVars and Channels with distinguished input and output side";
license = stdenv.lib.licenses.bsd3;

}) {};
"concurrent-supply" = callPackage
({
  mkDerivation
, base
, ghc-prim
, hashable
, stdenv
}:
mkDerivation {

pname = "concurrent-supply";
version = "0.1.8";
sha256 = "ccf827dcd221298ae93fad6021c63a06707456de0671706b44f1f2fed867f21f";
libraryHaskellDepends = [
base
ghc-prim
hashable
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/ekmett/concurrent-supply/";
description = "A fast concurrent unique identifier supply with a pure API";
license = stdenv.lib.licenses.bsd3;

}) {};
"cond" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "cond";
version = "0.4.1.1";
sha256 = "039c76e43b5484bdc78627f50740106ae2844b3c877d92b5228de9106997ac8b";
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/kallisti-dev/cond";
description = "Basic conditional and boolean operators with monadic variants";
license = stdenv.lib.licenses.bsd3;

}) {};
"conduit" = callPackage
({
  mkDerivation
, base
, bytestring
, directory
, exceptions
, filepath
, mono-traversable
, mtl
, primitive
, resourcet
, stdenv
, text
, transformers
, unix
, unliftio-core
, vector
}:
mkDerivation {

pname = "conduit";
version = "1.3.0.2";
sha256 = "c0f099d242504e65a78e1cbb54c18afad45fe2c9297d1d918ce28ae7dc4a1e5b";
libraryHaskellDepends = [
base
bytestring
directory
exceptions
filepath
mono-traversable
mtl
primitive
resourcet
text
transformers
unix
unliftio-core
vector
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/snoyberg/conduit";
description = "Streaming data processing library";
license = stdenv.lib.licenses.mit;

}) {};
"conduit-algorithms" = callPackage
({
  mkDerivation
, async
, base
, bytestring
, bzlib-conduit
, conduit
, conduit-combinators
, conduit-extra
, containers
, deepseq
, exceptions
, lzma-conduit
, monad-control
, mtl
, resourcet
, stdenv
, stm
, stm-conduit
, streaming-commons
, transformers
, unliftio-core
, vector
}:
mkDerivation {

pname = "conduit-algorithms";
version = "0.0.8.0";
sha256 = "28a68c5ad5f95100d845fb654099e281d60904f3cae98922c58e5f37609e1145";
libraryHaskellDepends = [
async
base
bytestring
bzlib-conduit
conduit
conduit-combinators
conduit-extra
containers
deepseq
exceptions
lzma-conduit
monad-control
mtl
resourcet
stm
stm-conduit
streaming-commons
transformers
unliftio-core
vector
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/luispedro/conduit-algorithms#readme";
description = "Conduit-based algorithms";
license = stdenv.lib.licenses.mit;

}) {};
"conduit-combinators" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "conduit-combinators";
version = "1.3.0";
sha256 = "9717d916a0422a7fb7cc262302333269607530d40cd0bea3be947872f906e7d3";
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/snoyberg/mono-traversable#readme";
description = "DEPRECATED Functionality merged into the conduit package itself";
license = stdenv.lib.licenses.mit;

}) {};
"conduit-connection" = callPackage
({
  mkDerivation
, base
, bytestring
, conduit
, connection
, resourcet
, stdenv
, transformers
}:
mkDerivation {

pname = "conduit-connection";
version = "0.1.0.4";
sha256 = "5e784117f3698dc653b286fbb53d530068d0cdadbe130ec02abf42e3f2c821fc";
libraryHaskellDepends = [
base
bytestring
conduit
connection
resourcet
transformers
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/sdroege/conduit-connection";
description = "Conduit source and sink for Network.Connection.";
license = stdenv.lib.licenses.bsd3;

}) {};
"conduit-extra" = callPackage
({
  mkDerivation
, async
, attoparsec
, base
, bytestring
, conduit
, directory
, filepath
, network
, primitive
, process
, resourcet
, stdenv
, stm
, streaming-commons
, text
, transformers
, typed-process
, unliftio-core
}:
mkDerivation {

pname = "conduit-extra";
version = "1.3.0";
sha256 = "2c41c925fc53d9ba2e640c7cdca72c492b28c0d45f1a82e94baef8dfa65922ae";
libraryHaskellDepends = [
async
attoparsec
base
bytestring
conduit
directory
filepath
network
primitive
process
resourcet
stm
streaming-commons
text
transformers
typed-process
unliftio-core
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/snoyberg/conduit";
description = "Batteries included conduit: adapters for common libraries";
license = stdenv.lib.licenses.mit;

}) {};
"conduit-iconv" = callPackage
({
  mkDerivation
, base
, bytestring
, conduit
, stdenv
}:
mkDerivation {

pname = "conduit-iconv";
version = "0.1.1.3";
sha256 = "1c71304782e4599a2987321028b50356c4982b45d9096d954e0b7c0b7ad3acb6";
libraryHaskellDepends = [
base
bytestring
conduit
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/sdroege/conduit-iconv";
description = "Conduit for character encoding conversion";
license = stdenv.lib.licenses.bsd3;

}) {};
"conduit-throttle" = callPackage
({
  mkDerivation
, async
, base
, conduit
, conduit-combinators
, conduit-extra
, monad-control
, resourcet
, stdenv
, stm
, stm-chans
, throttle-io-stream
, unliftio
, unliftio-core
}:
mkDerivation {

pname = "conduit-throttle";
version = "0.3.1.0";
sha256 = "8dd6d616f5ddce25668bb34069bfdcdfe2a866c8d708b725a9b2e450a95aa329";
libraryHaskellDepends = [
async
base
conduit
conduit-combinators
conduit-extra
monad-control
resourcet
stm
stm-chans
throttle-io-stream
unliftio
unliftio-core
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/mtesseract/conduit-throttle#readme";
description = "Throttle Conduit Producers";
license = stdenv.lib.licenses.bsd3;

}) {};
"config-ini" = callPackage
({
  mkDerivation
, base
, containers
, megaparsec
, stdenv
, text
, transformers
, unordered-containers
}:
mkDerivation {

pname = "config-ini";
version = "0.2.2.0";
sha256 = "364d67b876abf867d97eaacac630e920521ff96478fe9869a41983893ce140a0";
libraryHaskellDepends = [
base
containers
megaparsec
text
transformers
unordered-containers
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/aisamanra/config-ini";
description = "A library for simple INI-based configuration files";
license = stdenv.lib.licenses.bsd3;

}) {};
"configuration-tools" = callPackage
({
  mkDerivation
, aeson
, ansi-wl-pprint
, attoparsec
, base
, base-unicode-symbols
, base64-bytestring
, bytestring
, Cabal
, case-insensitive
, connection
, data-default
, deepseq
, directory
, dlist
, enclosed-exceptions
, filepath
, http-client
, http-client-tls
, http-types
, monad-control
, mtl
, network-uri
, optparse-applicative
, process
, profunctors
, semigroups
, stdenv
, text
, tls
, transformers
, unordered-containers
, x509
, x509-system
, x509-validation
, yaml
}:
mkDerivation {

pname = "configuration-tools";
version = "0.3.1";
sha256 = "e0df7e71b084c1bd831cd9887584f06e016e359291dc4f71b72d2027f7f86e47";
libraryHaskellDepends = [
aeson
ansi-wl-pprint
attoparsec
base
base-unicode-symbols
base64-bytestring
bytestring
Cabal
case-insensitive
connection
data-default
deepseq
directory
dlist
enclosed-exceptions
filepath
http-client
http-client-tls
http-types
monad-control
mtl
network-uri
optparse-applicative
process
profunctors
semigroups
text
tls
transformers
unordered-containers
x509
x509-system
x509-validation
yaml
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/alephcloud/hs-configuration-tools";
description = "Tools for specifying and parsing configurations";
license = stdenv.lib.licenses.mit;

}) {};
"configurator" = callPackage
({
  mkDerivation
, attoparsec
, base
, bytestring
, directory
, hashable
, stdenv
, text
, unix-compat
, unordered-containers
}:
mkDerivation {

pname = "configurator";
version = "0.3.0.0";
sha256 = "6eb9996b672e9f7112ca23482c42fa533553312c3c13f38a8a06476e67c031b4";
enableSeparateDataOutput = true;
libraryHaskellDepends = [
attoparsec
base
bytestring
directory
hashable
text
unix-compat
unordered-containers
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/bos/configurator";
description = "Configuration management";
license = stdenv.lib.licenses.bsd3;

}) {};
"configurator-export" = callPackage
({
  mkDerivation
, base
, base-compat
, configurator
, pretty
, semigroups
, stdenv
, text
, unordered-containers
}:
mkDerivation {

pname = "configurator-export";
version = "0.1.0.1";
sha256 = "9dbd62ef29c97792ccdfdb1b3b79aedfa527dce49a9ac5054f21b29a7f9b824c";
libraryHaskellDepends = [
base
base-compat
configurator
pretty
semigroups
text
unordered-containers
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/mstksg/configurator-export";
description = "Pretty printer and exporter for configurations from the \"configurator\" library";
license = stdenv.lib.licenses.bsd3;

}) {};
"connection" = callPackage
({
  mkDerivation
, base
, byteable
, bytestring
, containers
, data-default-class
, network
, socks
, stdenv
, tls
, x509
, x509-store
, x509-system
, x509-validation
}:
mkDerivation {

pname = "connection";
version = "0.2.8";
sha256 = "70b1f44e8786320c18b26fc5d4ec115fc8ac016ba1f852fa8137f55d785a93eb";
libraryHaskellDepends = [
base
byteable
bytestring
containers
data-default-class
network
socks
tls
x509
x509-store
x509-system
x509-validation
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/vincenthz/hs-connection";
description = "Simple and easy network connections API";
license = stdenv.lib.licenses.bsd3;

}) {};
"connection-pool" = callPackage
({
  mkDerivation
, base
, between
, data-default-class
, monad-control
, network
, resource-pool
, stdenv
, streaming-commons
, time
, transformers-base
}:
mkDerivation {

pname = "connection-pool";
version = "0.2.2";
sha256 = "f2cf43b7698b719b05467b3625884d00c748de2b3eb1229d19490b029a667353";
libraryHaskellDepends = [
base
between
data-default-class
monad-control
network
resource-pool
streaming-commons
time
transformers-base
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/trskop/connection-pool";
description = "Connection pool built on top of resource-pool and streaming-commons";
license = stdenv.lib.licenses.bsd3;

}) {};
"console-style" = callPackage
({
  mkDerivation
, base
, mtl
, stdenv
, transformers
}:
mkDerivation {

pname = "console-style";
version = "0.0.2.1";
sha256 = "6d818ea841d7acfe6c42cc3fc7751e324656abfd0509ce470bc8bdbf52d1bd7f";
libraryHaskellDepends = [
base
mtl
transformers
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/minad/console-style#readme";
description = "Styled console text output using ANSI escape sequences";
license = stdenv.lib.licenses.mit;

}) {};
"constraints" = callPackage
({
  mkDerivation
, base
, binary
, deepseq
, ghc-prim
, hashable
, mtl
, semigroups
, stdenv
, transformers
, transformers-compat
}:
mkDerivation {

pname = "constraints";
version = "0.10";
sha256 = "c224b82e53c21791083c83fed2f2c938bd715a63c8efa90a5abcc3d8859126c6";
libraryHaskellDepends = [
base
binary
deepseq
ghc-prim
hashable
mtl
semigroups
transformers
transformers-compat
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/ekmett/constraints/";
description = "Constraint manipulation";
license = stdenv.lib.licenses.bsd2;

}) {};
"consul-haskell" = callPackage
({
  mkDerivation
, aeson
, base
, base64-bytestring
, bytestring
, connection
, either
, exceptions
, http-client
, http-client-tls
, http-types
, lifted-async
, lifted-base
, monad-control
, network
, retry
, stdenv
, stm
, text
, transformers
, unordered-containers
, vector
}:
mkDerivation {

pname = "consul-haskell";
version = "0.4.2";
sha256 = "b10812b70dfbce7037f9f23eda71fa2fa6fc97ed309bd63c00f226522d30d80a";
libraryHaskellDepends = [
aeson
base
base64-bytestring
bytestring
connection
either
exceptions
http-client
http-client-tls
http-types
lifted-async
lifted-base
monad-control
network
retry
stm
text
transformers
unordered-containers
vector
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/alphaHeavy/consul-haskell";
description = "A consul client for Haskell";
license = stdenv.lib.licenses.bsd3;

}) {};
"containers" = callPackage
({
  mkDerivation
, array
, base
, deepseq
, ghc-prim
, stdenv
}:
mkDerivation {

pname = "containers";
version = "0.5.11.0";
sha256 = "58cd226ad5a147b12240f854a1fbadf809fd56cb9532123d60c1b23d13e04948";
libraryHaskellDepends = [
array
base
deepseq
ghc-prim
];
doHaddock = false;
doCheck = false;
description = "Assorted concrete container types";
license = stdenv.lib.licenses.bsd3;

}) {};
"containers-unicode-symbols" = callPackage
({
  mkDerivation
, base
, base-unicode-symbols
, containers
, stdenv
}:
mkDerivation {

pname = "containers-unicode-symbols";
version = "0.3.1.1";
sha256 = "4655f286a2d116cb5f2b89f472df54df739bf904ac8e932b2fd34d3f713e9b31";
libraryHaskellDepends = [
base
base-unicode-symbols
containers
];
doHaddock = false;
doCheck = false;
homepage = "http://haskell.org/haskellwiki/Unicode-symbols";
description = "Unicode alternatives for common functions and operators";
license = stdenv.lib.licenses.bsd3;

}) {};
"contravariant" = callPackage
({
  mkDerivation
, base
, StateVar
, stdenv
, transformers
, transformers-compat
}:
mkDerivation {

pname = "contravariant";
version = "1.4.1";
sha256 = "c93d3d619fa378f3fdf92c53bb8b04b8f47963b88aba7cfa54b57656189ad0ed";
revision = "1";
editedCabalFile = "0qj5nymccrb9p0cd6hffsy90jidjng14g9yv95z8v6h4q84sbzvx";
libraryHaskellDepends = [
base
StateVar
transformers
transformers-compat
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/ekmett/contravariant/";
description = "Contravariant functors";
license = stdenv.lib.licenses.bsd3;

}) {};
"contravariant-extras" = callPackage
({
  mkDerivation
, base
, base-prelude
, contravariant
, semigroups
, stdenv
, template-haskell
, tuple-th
}:
mkDerivation {

pname = "contravariant-extras";
version = "0.3.4";
sha256 = "36a9239d5a84bc6a418a3aa1a0df145d76ece24d00b76deb817b92441913e63d";
libraryHaskellDepends = [
base
base-prelude
contravariant
semigroups
template-haskell
tuple-th
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/nikita-volkov/contravariant-extras";
description = "Extras for the \"contravariant\" package";
license = stdenv.lib.licenses.mit;

}) {};
"control-bool" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "control-bool";
version = "0.2.1";
sha256 = "e46a85d2985a65f8d7ecbcdab0cfb12734b4d6e4c558631e6ab01fe742ed5581";
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/fumieval/control-bool";
description = "Useful combinators for boolean expressions";
license = stdenv.lib.licenses.bsd3;

}) {};
"control-monad-free" = callPackage
({
  mkDerivation
, base
, prelude-extras
, stdenv
, transformers
}:
mkDerivation {

pname = "control-monad-free";
version = "0.6.1";
sha256 = "fea9173d3c29729a8e0789d654bf3b16928e0b740465bd8798ac2cfeec492286";
revision = "1";
editedCabalFile = "1901lm2md7flri4ms745lgla18x2k7v0xh51jbjbx6202ppcx3fh";
libraryHaskellDepends = [
base
prelude-extras
transformers
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/pepeiborra/control-monad-free";
description = "Free monads and monad transformers";
license = stdenv.lib.licenses.publicDomain;

}) {};
"control-monad-omega" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "control-monad-omega";
version = "0.3.1";
sha256 = "383b98ecf5db5add42f318672af9eb1c8b9d99ec42d48c240e209a93b5cf1186";
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/luqui/control-monad-omega";
description = "A breadth-first list monad";
license = stdenv.lib.licenses.publicDomain;

}) {};
"convertible" = callPackage
({
  mkDerivation
, base
, bytestring
, containers
, mtl
, old-locale
, old-time
, stdenv
, text
, time
}:
mkDerivation {

pname = "convertible";
version = "1.1.1.0";
sha256 = "e9f9a70904b9995314c2aeb41580d654a2c76293feb955fb6bd63256c355286c";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
base
bytestring
containers
mtl
old-locale
old-time
text
time
];
doHaddock = false;
doCheck = false;
homepage = "http://hackage.haskell.org/package/convertible";
description = "Typeclasses and instances for converting between types";
license = stdenv.lib.licenses.bsd3;

}) {};
"cookie" = callPackage
({
  mkDerivation
, base
, bytestring
, data-default-class
, deepseq
, stdenv
, text
, time
}:
mkDerivation {

pname = "cookie";
version = "0.4.4";
sha256 = "3245ed04ae933cf7becede816d1f76043b851472700abf558ae90b28414cc0e3";
libraryHaskellDepends = [
base
bytestring
data-default-class
deepseq
text
time
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/snoyberg/cookie";
description = "HTTP cookie parsing and rendering";
license = stdenv.lib.licenses.mit;

}) {};
"countable" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "countable";
version = "1.0";
sha256 = "f9a0eb6f697a044bdf72e9c08126d4cb0f2d6de82cce07e55cb87ddbae6a0e6c";
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/AshleyYakeley/countable";
description = "Countable, Searchable, Finite, Empty classes";
license = stdenv.lib.licenses.bsd3;

}) {};
"country" = callPackage
({
  mkDerivation
, aeson
, attoparsec
, base
, bytestring
, ghc-prim
, hashable
, primitive
, scientific
, stdenv
, text
, unordered-containers
}:
mkDerivation {

pname = "country";
version = "0.1.5";
sha256 = "3aa921e12d74d5fc08b67df90600a6c28efae09b0afd4665e66ec585f024176a";
libraryHaskellDepends = [
aeson
attoparsec
base
bytestring
ghc-prim
hashable
primitive
scientific
text
unordered-containers
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/andrewthad/country#readme";
description = "Country data type and functions";
license = stdenv.lib.licenses.bsd3;

}) {};
"courier" = callPackage
({
  mkDerivation
, async
, base
, bytestring
, cereal
, containers
, hslogger
, network
, stdenv
, stm
, text
, uuid
}:
mkDerivation {

pname = "courier";
version = "0.1.1.5";
sha256 = "ac9e674ff33de347b173da2892859b3807a408b341d10d6101d2a7d07ac334d3";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
async
base
bytestring
cereal
containers
hslogger
network
stm
text
uuid
];
executableHaskellDepends = [
base
cereal
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/hargettp/courier";
description = "A message-passing library for simplifying network applications";
license = stdenv.lib.licenses.mit;

}) {};
"cpphs" = callPackage
({
  mkDerivation
, base
, directory
, old-locale
, old-time
, polyparse
, stdenv
}:
mkDerivation {

pname = "cpphs";
version = "1.20.8";
sha256 = "e56d64a7d8058e0fb63f0669397c1c861efb20a0376e0e74d86942ac151105ae";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
base
directory
old-locale
old-time
polyparse
];
executableHaskellDepends = [
base
directory
old-locale
old-time
polyparse
];
doHaddock = false;
doCheck = false;
homepage = "http://projects.haskell.org/cpphs/";
description = "A liberalised re-implementation of cpp, the C pre-processor";
license = "LGPL";

}) {};
"cprng-aes" = callPackage
({
  mkDerivation
, base
, byteable
, bytestring
, cipher-aes
, crypto-random
, stdenv
}:
mkDerivation {

pname = "cprng-aes";
version = "0.6.1";
sha256 = "64592a01de8c6683c5e29f538dceee918887ffe211d87214a2e38559d72c21f3";
enableSeparateDataOutput = true;
libraryHaskellDepends = [
base
byteable
bytestring
cipher-aes
crypto-random
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/vincenthz/hs-cprng-aes";
description = "Crypto Pseudo Random Number Generator using AES in counter mode";
license = stdenv.lib.licenses.bsd3;

}) {};
"cpu" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "cpu";
version = "0.1.2";
sha256 = "5627feb4974a3ff8499c42cc958927e88761a2e004c4000d34e9cd6a15ad2974";
isLibrary = true;
isExecutable = true;
enableSeparateDataOutput = true;
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/vincenthz/hs-cpu";
description = "Cpu information and properties helpers";
license = stdenv.lib.licenses.bsd3;

}) {};
"cpuinfo" = callPackage
({
  mkDerivation
, attoparsec
, base
, bytestring
, deepseq
, stdenv
}:
mkDerivation {

pname = "cpuinfo";
version = "0.1.0.1";
sha256 = "d1b3e3992cc0c82edfb21f30e1684bb66e6a3cb23a26b777a079702362d05655";
libraryHaskellDepends = [
attoparsec
base
bytestring
deepseq
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/TravisWhitaker/cpuinfo";
description = "Haskell Library for Checking CPU Information";
license = stdenv.lib.licenses.mit;

}) {};
"cql" = callPackage
({
  mkDerivation
, base
, bytestring
, cereal
, Decimal
, iproute
, network
, stdenv
, template-haskell
, text
, time
, transformers
, uuid
, vector
}:
mkDerivation {

pname = "cql";
version = "3.1.1";
sha256 = "45b0d9599dfb6b5df02eb17e18d45cef8abd7e175d4eb7f99ab94f9d50866da3";
libraryHaskellDepends = [
base
bytestring
cereal
Decimal
iproute
network
template-haskell
text
time
transformers
uuid
vector
];
doHaddock = false;
doCheck = false;
homepage = "https://gitlab.com/twittner/cql/";
description = "Cassandra CQL binary protocol";
license = "unknown";

}) {};
"cql-io" = callPackage
({
  mkDerivation
, async
, auto-update
, base
, bytestring
, containers
, cql
, cryptohash
, data-default-class
, exceptions
, hashable
, HsOpenSSL
, iproute
, lens
, monad-control
, mtl
, mwc-random
, network
, retry
, semigroups
, stdenv
, stm
, text
, time
, tinylog
, transformers
, transformers-base
, uuid
, vector
}:
mkDerivation {

pname = "cql-io";
version = "0.16.0";
sha256 = "82e5aff9b929fd9dec92760b9d0e75ca509ce2619942628e5c7e3a66f4204004";
revision = "1";
editedCabalFile = "07vrizkarip8ap5hp6ngp7yf8xfdmm3r6zbaxafk48raxyfkl8xd";
libraryHaskellDepends = [
async
auto-update
base
bytestring
containers
cql
cryptohash
data-default-class
exceptions
hashable
HsOpenSSL
iproute
lens
monad-control
mtl
mwc-random
network
retry
semigroups
stm
text
time
tinylog
transformers
transformers-base
uuid
vector
];
doHaddock = false;
doCheck = false;
homepage = "https://gitlab.com/twittner/cql-io/";
description = "Cassandra CQL client";
license = stdenv.lib.licenses.mpl20;

}) {};
"crackNum" = callPackage
({
  mkDerivation
, base
, data-binary-ieee754
, FloatingHex
, ieee754
, stdenv
}:
mkDerivation {

pname = "crackNum";
version = "1.9";
sha256 = "a5a78b774e17837513b7c6048856c375457095898a59b7f3bbb7f49abb1639c5";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
base
data-binary-ieee754
FloatingHex
ieee754
];
executableHaskellDepends = [
base
data-binary-ieee754
FloatingHex
ieee754
];
doHaddock = false;
doCheck = false;
description = "Crack various integer, floating-point data formats";
license = stdenv.lib.licenses.bsd3;

}) {};
"credential-store" = callPackage
({
  mkDerivation
, base
, bytestring
, containers
, cryptonite
, dbus
, memory
, safe-exceptions
, stdenv
}:
mkDerivation {

pname = "credential-store";
version = "0.1.2";
sha256 = "4dadbc219a7187442258608c1d834f4297652fb605fc6bbbb41d751fef6a9284";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
base
bytestring
containers
cryptonite
dbus
memory
safe-exceptions
];
executableHaskellDepends = [
base
bytestring
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/rblaze/credential-store#readme";
description = "Library to access secure credential storage providers";
license = stdenv.lib.licenses.asl20;

}) {};
"criterion" = callPackage
({
  mkDerivation
, aeson
, ansi-wl-pprint
, base
, base-compat
, binary
, bytestring
, cassava
, code-page
, containers
, deepseq
, directory
, exceptions
, filepath
, Glob
, js-flot
, js-jquery
, microstache
, mtl
, mwc-random
, optparse-applicative
, parsec
, semigroups
, statistics
, stdenv
, text
, time
, transformers
, transformers-compat
, vector
, vector-algorithms
}:
mkDerivation {

pname = "criterion";
version = "1.3.0.0";
sha256 = "18b9336ade26d222f360200ba9508729937f9c54178456128a43992cad994f33";
revision = "3";
editedCabalFile = "0bdz45r1mf6ydcs7l333xn7da9p583g9y7n3dzvnry4by0fkcqw6";
isLibrary = true;
isExecutable = true;
enableSeparateDataOutput = true;
libraryHaskellDepends = [
aeson
ansi-wl-pprint
base
base-compat
binary
bytestring
cassava
code-page
containers
deepseq
directory
exceptions
filepath
Glob
js-flot
js-jquery
microstache
mtl
mwc-random
optparse-applicative
parsec
semigroups
statistics
text
time
transformers
transformers-compat
vector
vector-algorithms
];
executableHaskellDepends = [
base
base-compat
optparse-applicative
semigroups
];
doHaddock = false;
doCheck = false;
homepage = "http://www.serpentine.com/criterion";
description = "Robust, reliable performance measurement and analysis";
license = stdenv.lib.licenses.bsd3;

}) {};
"cron" = callPackage
({
  mkDerivation
, attoparsec
, base
, data-default-class
, mtl
, mtl-compat
, old-locale
, semigroups
, stdenv
, text
, time
}:
mkDerivation {

pname = "cron";
version = "0.6.1";
sha256 = "8c1af53bde729026809b722468f6b36c4f96cb532f26a390f32f1c91fb8b3251";
libraryHaskellDepends = [
attoparsec
base
data-default-class
mtl
mtl-compat
old-locale
semigroups
text
time
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/michaelxavier/cron";
description = "Cron datatypes and Attoparsec parser";
license = stdenv.lib.licenses.mit;

}) {};
"crypt-sha512" = callPackage
({
  mkDerivation
, attoparsec
, base
, bytestring
, cryptohash-sha512
, stdenv
}:
mkDerivation {

pname = "crypt-sha512";
version = "0";
sha256 = "c2be6252bf12f38c74950eb778039426c730e9a7cd7f034a4cc3e6965d5255f3";
revision = "1";
editedCabalFile = "0wi8d12i2v76irrv0f16y4sfcn2a9sg92l11499djidmdq50vji9";
libraryHaskellDepends = [
attoparsec
base
bytestring
cryptohash-sha512
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/phadej/crypt-sha512";
description = "Pure Haskell implelementation for GNU SHA512 crypt algorithm";
license = stdenv.lib.licenses.bsd3;

}) {};
"crypto-api" = callPackage
({
  mkDerivation
, base
, bytestring
, cereal
, entropy
, stdenv
, tagged
, transformers
}:
mkDerivation {

pname = "crypto-api";
version = "0.13.3";
sha256 = "298a9ea7ce97c8ccf4bfe46d4864092c3a007a56bede73560070db3bf1ac7aa5";
revision = "1";
editedCabalFile = "1z6n1sa5pn3iqvqjrd8hv4bc2pxzsrhm5sh0l8z7g9lbqp6w0wp5";
libraryHaskellDepends = [
base
bytestring
cereal
entropy
tagged
transformers
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/TomMD/crypto-api";
description = "A generic interface for cryptographic operations";
license = stdenv.lib.licenses.bsd3;

}) {};
"crypto-api-tests" = callPackage
({
  mkDerivation
, base
, bytestring
, cereal
, crypto-api
, directory
, filepath
, HUnit
, QuickCheck
, stdenv
, test-framework
, test-framework-hunit
, test-framework-quickcheck2
}:
mkDerivation {

pname = "crypto-api-tests";
version = "0.3";
sha256 = "f44aecdd4ceb9da9f38330e84d9c17745a82b0611085ebb34442d2dce4207270";
enableSeparateDataOutput = true;
libraryHaskellDepends = [
base
bytestring
cereal
crypto-api
directory
filepath
HUnit
QuickCheck
test-framework
test-framework-hunit
test-framework-quickcheck2
];
doHaddock = false;
doCheck = false;
homepage = "http://trac.haskell.org/crypto-api/wiki";
description = "A test framework and KATs for cryptographic operations";
license = stdenv.lib.licenses.bsd3;

}) {};
"crypto-cipher-tests" = callPackage
({
  mkDerivation
, base
, byteable
, bytestring
, crypto-cipher-types
, HUnit
, mtl
, QuickCheck
, securemem
, stdenv
, test-framework
, test-framework-hunit
, test-framework-quickcheck2
}:
mkDerivation {

pname = "crypto-cipher-tests";
version = "0.0.11";
sha256 = "dfb670b73d4091b8683634d0d4d5a40576d573ad160650d5e518244ced8b98a7";
libraryHaskellDepends = [
base
byteable
bytestring
crypto-cipher-types
HUnit
mtl
QuickCheck
securemem
test-framework
test-framework-hunit
test-framework-quickcheck2
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/vincenthz/hs-crypto-cipher";
description = "Generic cryptography cipher tests";
license = stdenv.lib.licenses.bsd3;

}) {};
"crypto-cipher-types" = callPackage
({
  mkDerivation
, base
, byteable
, bytestring
, securemem
, stdenv
}:
mkDerivation {

pname = "crypto-cipher-types";
version = "0.0.9";
sha256 = "2073f6b70df7916aebe2da49d224497183662d56d19da87b76f70039430c0a0f";
enableSeparateDataOutput = true;
libraryHaskellDepends = [
base
byteable
bytestring
securemem
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/vincenthz/hs-crypto-cipher";
description = "Generic cryptography cipher types";
license = stdenv.lib.licenses.bsd3;

}) {};
"crypto-enigma" = callPackage
({
  mkDerivation
, base
, containers
, MissingH
, mtl
, split
, stdenv
}:
mkDerivation {

pname = "crypto-enigma";
version = "0.0.2.12";
sha256 = "2bb942397a3ca2a099e8c4b59a3810a0fe3a4d255c077e8e0db8e8764fb6b83c";
libraryHaskellDepends = [
base
containers
MissingH
mtl
split
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/orome/crypto-enigma-hs";
description = "An Enigma machine simulator with display";
license = stdenv.lib.licenses.bsd3;

}) {};
"crypto-pubkey-types" = callPackage
({
  mkDerivation
, asn1-encoding
, asn1-types
, base
, stdenv
}:
mkDerivation {

pname = "crypto-pubkey-types";
version = "0.4.3";
sha256 = "7ed9f52281ec4e34021a91818fe45288e33d65bff937f60334a3f45be5a71c60";
libraryHaskellDepends = [
asn1-encoding
asn1-types
base
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/vincenthz/hs-crypto-pubkey-types";
description = "Generic cryptography Public keys algorithm types";
license = stdenv.lib.licenses.bsd3;

}) {};
"crypto-random" = callPackage
({
  mkDerivation
, base
, bytestring
, securemem
, stdenv
, unix
, vector
}:
mkDerivation {

pname = "crypto-random";
version = "0.0.9";
sha256 = "170a7a18441379c2d1c19b502ee5919026a19adc6e78641cd4fb40b1d69a6904";
libraryHaskellDepends = [
base
bytestring
securemem
unix
vector
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/vincenthz/hs-crypto-random";
description = "Simple cryptographic random related types";
license = stdenv.lib.licenses.bsd3;

}) {};
"crypto-random-api" = callPackage
({
  mkDerivation
, base
, bytestring
, entropy
, stdenv
}:
mkDerivation {

pname = "crypto-random-api";
version = "0.2.0";
sha256 = "56e9777061bd9ce553683d097ba3a11fdc371724060b62ca103f1f291f9f897c";
libraryHaskellDepends = [
base
bytestring
entropy
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/vincenthz/hs-crypto-random-api";
description = "Simple random generators API for cryptography related code";
license = stdenv.lib.licenses.bsd3;

}) {};
"cryptocipher" = callPackage
({
  mkDerivation
, base
, cipher-aes
, cipher-blowfish
, cipher-camellia
, cipher-des
, cipher-rc4
, crypto-cipher-types
, stdenv
}:
mkDerivation {

pname = "cryptocipher";
version = "0.6.2";
sha256 = "34b9e62dee36c4019dd0c0e86576295d0bd1bb573eeb24686ec635a09550e346";
libraryHaskellDepends = [
base
cipher-aes
cipher-blowfish
cipher-camellia
cipher-des
cipher-rc4
crypto-cipher-types
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/vincenthz/hs-crypto-cipher";
description = "Symmetrical block and stream ciphers";
license = stdenv.lib.licenses.bsd3;

}) {};
"cryptocompare" = callPackage
({
  mkDerivation
, aeson
, base
, bytestring
, containers
, directory
, exceptions
, http-conduit
, MissingH
, stdenv
, text
, time
, transformers
, unordered-containers
}:
mkDerivation {

pname = "cryptocompare";
version = "0.1.1";
sha256 = "d12e0f6fd133e538852e5700b0a31d81c6885dc8b1e9e88d1b331dcec38316b3";
libraryHaskellDepends = [
aeson
base
bytestring
containers
directory
exceptions
http-conduit
MissingH
text
time
transformers
unordered-containers
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/aviaviavi/cryptocompare";
description = "Haskell wrapper for the cryptocompare API";
license = stdenv.lib.licenses.mit;

}) {};
"cryptohash" = callPackage
({
  mkDerivation
, base
, byteable
, bytestring
, cryptonite
, ghc-prim
, memory
, stdenv
}:
mkDerivation {

pname = "cryptohash";
version = "0.11.9";
sha256 = "c28f847fc1fcd65b6eea2e74a100300af940919f04bb21d391f6a773968f22fb";
libraryHaskellDepends = [
base
byteable
bytestring
cryptonite
ghc-prim
memory
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/vincenthz/hs-cryptohash";
description = "collection of crypto hashes, fast, pure and practical";
license = stdenv.lib.licenses.bsd3;

}) {};
"cryptohash-cryptoapi" = callPackage
({
  mkDerivation
, base
, bytestring
, cereal
, crypto-api
, cryptonite
, memory
, stdenv
, tagged
}:
mkDerivation {

pname = "cryptohash-cryptoapi";
version = "0.1.4";
sha256 = "717a8664ebfaa1c31aaec1d78c9b7c776a5adcfdfc50ad88e21a34566f72058e";
enableSeparateDataOutput = true;
libraryHaskellDepends = [
base
bytestring
cereal
crypto-api
cryptonite
memory
tagged
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/vincenthz/hs-cryptohash-cryptoapi";
description = "Crypto-api interfaces for cryptohash";
license = stdenv.lib.licenses.bsd3;

}) {};
"cryptohash-md5" = callPackage
({
  mkDerivation
, base
, bytestring
, stdenv
}:
mkDerivation {

pname = "cryptohash-md5";
version = "0.11.100.1";
sha256 = "710bd48770fa3e9a3b05428c6dc77fb72c91956d334a1eb89ded11bb843e18f9";
revision = "2";
editedCabalFile = "0vyb9cfvpfxpslxvvhd48gw37i9g8ry5x63xwxd9q7xfiqhs7p3a";
libraryHaskellDepends = [
base
bytestring
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/hvr/cryptohash-md5";
description = "Fast, pure and practical MD5 implementation";
license = stdenv.lib.licenses.bsd3;

}) {};
"cryptohash-sha1" = callPackage
({
  mkDerivation
, base
, bytestring
, stdenv
}:
mkDerivation {

pname = "cryptohash-sha1";
version = "0.11.100.1";
sha256 = "3c79af33542512442f8f87f6abb1faef7cd43bbfb2859260a33251d861eb0dab";
revision = "2";
editedCabalFile = "0xas0nbq9bfdzlj6k565ibizv1cqvzfzsdj6q9pdiiwyxqblqc3m";
libraryHaskellDepends = [
base
bytestring
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/hvr/cryptohash-sha1";
description = "Fast, pure and practical SHA-1 implementation";
license = stdenv.lib.licenses.bsd3;

}) {};
"cryptohash-sha256" = callPackage
({
  mkDerivation
, base
, bytestring
, stdenv
}:
mkDerivation {

pname = "cryptohash-sha256";
version = "0.11.101.0";
sha256 = "52756435dbea248e344fbcbcc5df5307f60dfacf337dfd11ae30f1c7a4da05dd";
revision = "1";
editedCabalFile = "19birnmwga1yh82l4jqc3fygqkqcf5y8dlldnxfswngkzc3rvwp3";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
base
bytestring
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/hvr/cryptohash-sha256";
description = "Fast, pure and practical SHA-256 implementation";
license = stdenv.lib.licenses.bsd3;

}) {};
"cryptohash-sha512" = callPackage
({
  mkDerivation
, base
, bytestring
, stdenv
}:
mkDerivation {

pname = "cryptohash-sha512";
version = "0.11.100.1";
sha256 = "10698bb9575eaa414a65d9644caa9408f9276c63447406e0a4faef91db1071a9";
revision = "2";
editedCabalFile = "1xy1j3bn2w8my0q04s7z460rddmnqfdh43l95m86rpk75xpiryil";
libraryHaskellDepends = [
base
bytestring
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/hvr/cryptohash-sha512";
description = "Fast, pure and practical SHA-512 implementation";
license = stdenv.lib.licenses.bsd3;

}) {};
"cryptonite" = callPackage
({
  mkDerivation
, base
, bytestring
, deepseq
, ghc-prim
, integer-gmp
, memory
, stdenv
}:
mkDerivation {

pname = "cryptonite";
version = "0.22";
sha256 = "4be312a42a12ccd2ca60272ef485664f242c7ed89fa1909ba36a54c5fb6ff5f0";
libraryHaskellDepends = [
base
bytestring
deepseq
ghc-prim
integer-gmp
memory
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/haskell-crypto/cryptonite";
description = "Cryptography Primitives sink";
license = stdenv.lib.licenses.bsd3;

}) {};
"cryptonite-conduit" = callPackage
({
  mkDerivation
, base
, bytestring
, conduit
, conduit-extra
, cryptonite
, exceptions
, memory
, resourcet
, stdenv
, transformers
}:
mkDerivation {

pname = "cryptonite-conduit";
version = "0.2.2";
sha256 = "705d69ab3f79b7b8810c7b9e7da81a1c6686b6a4323b1e78150576a25a658dae";
revision = "1";
editedCabalFile = "1hh2nzfz4qpxgivfilgk4ll416lph8b2fdkzpzrmqfjglivydfmz";
libraryHaskellDepends = [
base
bytestring
conduit
conduit-extra
cryptonite
exceptions
memory
resourcet
transformers
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/haskell-crypto/cryptonite-conduit";
description = "cryptonite conduit";
license = stdenv.lib.licenses.bsd3;

}) {};
"cryptonite-openssl" = callPackage
({
  mkDerivation
, base
, bytestring
, cryptonite
, memory
, openssl
, stdenv
}:
mkDerivation {

pname = "cryptonite-openssl";
version = "0.6";
sha256 = "a8cb97c96bfb3e7b7ff8d59629317882dbf3cea12ba978d8475c96a6c28750a6";
libraryHaskellDepends = [
base
bytestring
cryptonite
memory
];
librarySystemDepends = [
openssl
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/haskell-crypto/cryptonite-openssl";
description = "Crypto stuff using OpenSSL cryptographic library";
license = stdenv.lib.licenses.bsd3;

}) {inherit (pkgs) openssl;};
"csp" = callPackage
({
  mkDerivation
, base
, containers
, mtl
, nondeterminism
, stdenv
}:
mkDerivation {

pname = "csp";
version = "1.3.1";
sha256 = "d83c5e51dd32a796af8cfacac94312cb99691be30d924e159bc1c4b8cef9530b";
libraryHaskellDepends = [
base
containers
mtl
nondeterminism
];
doHaddock = false;
doCheck = false;
description = "Discrete constraint satisfaction problem (CSP) solver";
license = "LGPL";

}) {};
"css-syntax" = callPackage
({
  mkDerivation
, attoparsec
, base
, bytestring
, scientific
, stdenv
, text
}:
mkDerivation {

pname = "css-syntax";
version = "0.0.7";
sha256 = "23fc1d47e94620eee586001c56c4e0c1ba17f5dab9c496245c7cff7ab9cd6064";
libraryHaskellDepends = [
attoparsec
base
bytestring
scientific
text
];
doHaddock = false;
doCheck = false;
description = "This package implments a parser for the CSS syntax";
license = stdenv.lib.licenses.mit;

}) {};
"css-text" = callPackage
({
  mkDerivation
, attoparsec
, base
, stdenv
, text
}:
mkDerivation {

pname = "css-text";
version = "0.1.3.0";
sha256 = "5ff507bf3863219f41e7f2d215e5511fe15ee13d1e28bd3ee64e0b0b894bcd7a";
libraryHaskellDepends = [
attoparsec
base
text
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/yesodweb/css-text.git#readme";
description = "CSS parser and renderer";
license = stdenv.lib.licenses.mit;

}) {};
"csv" = callPackage
({
  mkDerivation
, base
, filepath
, parsec
, stdenv
}:
mkDerivation {

pname = "csv";
version = "0.1.2";
sha256 = "8cf43442325faa1368f9b55ad952beccf677d9980cdffa3d70a7f204a23ae600";
libraryHaskellDepends = [
base
filepath
parsec
];
doHaddock = false;
doCheck = false;
description = "CSV loader and dumper";
license = stdenv.lib.licenses.mit;

}) {};
"csv-conduit" = callPackage
({
  mkDerivation
, array
, attoparsec
, base
, blaze-builder
, bytestring
, conduit
, conduit-extra
, containers
, data-default
, exceptions
, ghc-prim
, mmorph
, monad-control
, mtl
, primitive
, resourcet
, stdenv
, text
, transformers
, unordered-containers
, vector
}:
mkDerivation {

pname = "csv-conduit";
version = "0.6.8.1";
sha256 = "b634639b86506df353785f1d4e644dc85a99e915aa048b9a3c8f9f02c9783048";
libraryHaskellDepends = [
array
attoparsec
base
blaze-builder
bytestring
conduit
conduit-extra
containers
data-default
exceptions
ghc-prim
mmorph
monad-control
mtl
primitive
resourcet
text
transformers
unordered-containers
vector
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/ozataman/csv-conduit";
description = "A flexible, fast, conduit-based CSV parser library for Haskell";
license = stdenv.lib.licenses.bsd3;

}) {};
"ctrie" = callPackage
({
  mkDerivation
, atomic-primops
, base
, hashable
, primitive
, stdenv
}:
mkDerivation {

pname = "ctrie";
version = "0.2";
sha256 = "20e3a6d39f65ed1663ff5ab2c5431dc12b1c601d2133a74bc7bea1596ad9c814";
libraryHaskellDepends = [
atomic-primops
base
hashable
primitive
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/mcschroeder/ctrie";
description = "Non-blocking concurrent map";
license = stdenv.lib.licenses.mit;

}) {};
"cubicspline" = callPackage
({
  mkDerivation
, base
, hmatrix
, safe
, stdenv
}:
mkDerivation {

pname = "cubicspline";
version = "0.1.2";
sha256 = "5b6ced9ca65b0d01ddceaf18605c8f915491d8d4a6aaef73475c4e8d4b1a9b79";
libraryHaskellDepends = [
base
hmatrix
safe
];
doHaddock = false;
doCheck = false;
description = "Natural cubic spline interpolation";
license = stdenv.lib.licenses.bsd3;

}) {};
"cublas" = callPackage
({
  mkDerivation
, base
, c2hs
, Cabal
, cuda
, directory
, filepath
, half
, stdenv
, storable-complex
, template-haskell
}:
mkDerivation {

pname = "cublas";
version = "0.4.0.1";
sha256 = "99bec4304f2ee99466721451e6a0d25af1d7a75d22efe37b2f6865656af6603a";
setupHaskellDepends = [
base
Cabal
cuda
directory
filepath
];
libraryHaskellDepends = [
base
cuda
half
storable-complex
template-haskell
];
libraryToolDepends = [
c2hs
];
doHaddock = false;
doCheck = false;
description = "FFI bindings to the CUDA BLAS library";
license = stdenv.lib.licenses.bsd3;

}) {};
"cuda" = callPackage
({
  mkDerivation
, base
, bytestring
, c2hs
, Cabal
, directory
, filepath
, pretty
, stdenv
, template-haskell
}:
mkDerivation {

pname = "cuda";
version = "0.9.0.3";
sha256 = "989099cc59ac34538e01b2ec05ea876280b8f8b3f79028f14fd4774af390a57a";
isLibrary = true;
isExecutable = true;
setupHaskellDepends = [
base
Cabal
directory
filepath
];
libraryHaskellDepends = [
base
bytestring
filepath
template-haskell
];
libraryToolDepends = [
c2hs
];
executableHaskellDepends = [
base
pretty
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/tmcdonell/cuda";
description = "FFI binding to the CUDA interface for programming NVIDIA GPUs";
license = stdenv.lib.licenses.bsd3;

}) {};
"cue-sheet" = callPackage
({
  mkDerivation
, base
, bytestring
, containers
, data-default-class
, exceptions
, megaparsec
, mtl
, QuickCheck
, stdenv
, text
}:
mkDerivation {

pname = "cue-sheet";
version = "1.0.1";
sha256 = "214a58e87a849c8311eb652ca215b4f5789d724e7499324544b3a01187577f8f";
revision = "2";
editedCabalFile = "09h4phhj0j1m4ab5gbfrz6475jn772x46l21k7l2qlxav6hi9w7x";
enableSeparateDataOutput = true;
libraryHaskellDepends = [
base
bytestring
containers
data-default-class
exceptions
megaparsec
mtl
QuickCheck
text
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/mrkkrp/cue-sheet";
description = "Support for construction, rendering, and parsing of CUE sheets";
license = stdenv.lib.licenses.bsd3;

}) {};
"cufft" = callPackage
({
  mkDerivation
, base
, c2hs
, Cabal
, cuda
, directory
, filepath
, stdenv
, template-haskell
}:
mkDerivation {

pname = "cufft";
version = "0.8.0.0";
sha256 = "f7bdd8117b35baf630ae8b276a2dea0fd47e0cbc5e6e50802e4007d2d201dd58";
setupHaskellDepends = [
base
Cabal
cuda
directory
filepath
template-haskell
];
libraryHaskellDepends = [
base
cuda
];
libraryToolDepends = [
c2hs
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/robeverest/cufft";
description = "Haskell bindings for the CUFFT library";
license = stdenv.lib.licenses.bsd3;

}) {};
"curl" = callPackage
({
  mkDerivation
, base
, bytestring
, containers
, curl
, stdenv
}:
mkDerivation {

pname = "curl";
version = "1.3.8";
sha256 = "9087c936bfcdb865bad3166baa3f12bf37acf076fa76010e3b5f82a1d485446e";
revision = "1";
editedCabalFile = "02sq2bjw5igc2k9f9ssh58k2ivii2xsvk5r00ky3cxh8j61qy86q";
libraryHaskellDepends = [
base
bytestring
containers
];
librarySystemDepends = [
curl
];
doHaddock = false;
doCheck = false;
description = "Haskell binding to libcurl";
license = stdenv.lib.licenses.bsd3;

}) {inherit (pkgs) curl;};
"curl-runnings" = callPackage
({
  mkDerivation
, aeson
, aeson-pretty
, base
, bytestring
, cmdargs
, directory
, hspec
, hspec-expectations
, http-conduit
, stdenv
, text
, unordered-containers
, yaml
}:
mkDerivation {

pname = "curl-runnings";
version = "0.2.0";
sha256 = "76447326883359c1f34b17882716e71ca261f87118b99d051e4aa9346c43496b";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
aeson
aeson-pretty
base
bytestring
directory
hspec
hspec-expectations
http-conduit
text
unordered-containers
yaml
];
executableHaskellDepends = [
base
cmdargs
text
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/aviaviavi/curl-runnings#readme";
description = "A framework for declaratively writing curl based API tests";
license = stdenv.lib.licenses.mit;

}) {};
"currencies" = callPackage
({
  mkDerivation
, base
, stdenv
, text
}:
mkDerivation {

pname = "currencies";
version = "0.1.1.1";
sha256 = "d58e021d319917d70ea5e7069daef67788f4c2081c095d44c511fd392e3f0bf0";
libraryHaskellDepends = [
base
text
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/alx741/currencies#readme";
description = "Currencies representation, pretty printing and conversion";
license = stdenv.lib.licenses.bsd3;

}) {};
"cusolver" = callPackage
({
  mkDerivation
, base
, c2hs
, Cabal
, cublas
, cuda
, cusparse
, directory
, filepath
, half
, stdenv
, storable-complex
}:
mkDerivation {

pname = "cusolver";
version = "0.1.0.1";
sha256 = "f31090ced40cc028e7e495e2747900603e49930eeb6c50f286fbdf503c6c5cf2";
setupHaskellDepends = [
base
Cabal
cuda
directory
filepath
];
libraryHaskellDepends = [
base
cublas
cuda
cusparse
half
storable-complex
];
libraryToolDepends = [
c2hs
];
doHaddock = false;
doCheck = false;
description = "FFI bindings to CUDA Solver, a LAPACK-like library";
license = stdenv.lib.licenses.bsd3;

}) {};
"cusparse" = callPackage
({
  mkDerivation
, base
, c2hs
, Cabal
, cuda
, directory
, filepath
, half
, stdenv
, storable-complex
}:
mkDerivation {

pname = "cusparse";
version = "0.1.0.1";
sha256 = "bc941dfc3ca8d0905728e60c29a86a247c5a479c7425e6ca4190be45e26d54bb";
setupHaskellDepends = [
base
Cabal
cuda
directory
filepath
];
libraryHaskellDepends = [
base
cuda
half
storable-complex
];
libraryToolDepends = [
c2hs
];
doHaddock = false;
doCheck = false;
description = "FFI bindings to the CUDA Sparse BLAS library";
license = stdenv.lib.licenses.bsd3;

}) {};
"cutter" = callPackage
({
  mkDerivation
, base
, bytestring
, explicit-exception
, spreadsheet
, stdenv
, utility-ht
}:
mkDerivation {

pname = "cutter";
version = "0.0";
sha256 = "117319c36a20efea6d9edd0a8d902e37ec0386512f2eb8a6e5563411c00c6ac2";
isLibrary = false;
isExecutable = true;
executableHaskellDepends = [
base
bytestring
explicit-exception
spreadsheet
utility-ht
];
doHaddock = false;
doCheck = false;
description = "Cut files according to a position list";
license = stdenv.lib.licenses.bsd3;

}) {};
"czipwith" = callPackage
({
  mkDerivation
, base
, stdenv
, template-haskell
}:
mkDerivation {

pname = "czipwith";
version = "1.0.0.0";
sha256 = "45a2af0fd73f4cb7968c382465d8c5c6f4807d195d85e5b35bccef8f5e7c2ce1";
revision = "1";
editedCabalFile = "1vz6nrmxhl2rrwcg16dpp09q64pk9z9j0ka97lqhxdzpvqm0fg88";
libraryHaskellDepends = [
base
template-haskell
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/lspitzner/czipwith/";
description = "CZipWith class and deriving via TH";
license = stdenv.lib.licenses.bsd3;

}) {};
"data-accessor" = callPackage
({
  mkDerivation
, array
, base
, containers
, stdenv
, transformers
}:
mkDerivation {

pname = "data-accessor";
version = "0.2.2.7";
sha256 = "3465227ad5f81059a885d354e2f3c108d550287580e6939e18350fa65e78c2ed";
libraryHaskellDepends = [
array
base
containers
transformers
];
doHaddock = false;
doCheck = false;
homepage = "http://www.haskell.org/haskellwiki/Record_access";
description = "Utilities for accessing and manipulating fields of records";
license = stdenv.lib.licenses.bsd3;

}) {};
"data-accessor-mtl" = callPackage
({
  mkDerivation
, base
, data-accessor
, mtl
, stdenv
}:
mkDerivation {

pname = "data-accessor-mtl";
version = "0.2.0.4";
sha256 = "10cf9166e2e046076b7e58987718e57b31408e7cada9f26c8ff111e0379814c5";
libraryHaskellDepends = [
base
data-accessor
mtl
];
doHaddock = false;
doCheck = false;
homepage = "http://www.haskell.org/haskellwiki/Record_access";
description = "Use Accessor to access state in mtl State monad class";
license = stdenv.lib.licenses.bsd3;

}) {};
"data-accessor-template" = callPackage
({
  mkDerivation
, base
, data-accessor
, stdenv
, template-haskell
, utility-ht
}:
mkDerivation {

pname = "data-accessor-template";
version = "0.2.1.15";
sha256 = "802b7f55ef02773b44d42c19175f52b5ef1b122df0e91ad0ef9a8add4d33ba6f";
libraryHaskellDepends = [
base
data-accessor
template-haskell
utility-ht
];
doHaddock = false;
doCheck = false;
homepage = "http://www.haskell.org/haskellwiki/Record_access";
description = "Utilities for accessing and manipulating fields of records";
license = stdenv.lib.licenses.bsd3;

}) {};
"data-accessor-transformers" = callPackage
({
  mkDerivation
, base
, data-accessor
, stdenv
, transformers
}:
mkDerivation {

pname = "data-accessor-transformers";
version = "0.2.1.7";
sha256 = "20c8823dc16c7ca6f55c64eb5564c9aae4b5565406987a046ded2ea73618e07a";
libraryHaskellDepends = [
base
data-accessor
transformers
];
doHaddock = false;
doCheck = false;
homepage = "http://www.haskell.org/haskellwiki/Record_access";
description = "Use Accessor to access state in transformers State monad";
license = stdenv.lib.licenses.bsd3;

}) {};
"data-binary-ieee754" = callPackage
({
  mkDerivation
, base
, binary
, stdenv
}:
mkDerivation {

pname = "data-binary-ieee754";
version = "0.4.4";
sha256 = "59975abed8f4caa602f0780c10a9b2493479e6feb71ad189bb10c3ac5678df0a";
libraryHaskellDepends = [
base
binary
];
doHaddock = false;
doCheck = false;
homepage = "https://john-millikin.com/software/data-binary-ieee754/";
description = "Parser/Serialiser for IEEE-754 floating-point values";
license = stdenv.lib.licenses.mit;

}) {};
"data-bword" = callPackage
({
  mkDerivation
, base
, ghc-prim
, stdenv
}:
mkDerivation {

pname = "data-bword";
version = "0.1.0.1";
sha256 = "70f01f857865edcf1d1d20128b0202320b1635cc03b00954b6d1447cd699db7d";
libraryHaskellDepends = [
base
ghc-prim
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/mvv/data-bword";
description = "Extra operations on binary words of fixed length";
license = stdenv.lib.licenses.bsd3;

}) {};
"data-checked" = callPackage
({
  mkDerivation
, base
, deepseq
, stdenv
}:
mkDerivation {

pname = "data-checked";
version = "0.3";
sha256 = "dc87d09c7c8587c9e6e372166e8de3b42c2cd804a493ff100c253e4d713c5676";
libraryHaskellDepends = [
base
deepseq
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/mvv/data-checked";
description = "Type-indexed runtime-checked properties";
license = stdenv.lib.licenses.bsd3;

}) {};
"data-clist" = callPackage
({
  mkDerivation
, base
, deepseq
, QuickCheck
, stdenv
}:
mkDerivation {

pname = "data-clist";
version = "0.1.2.1";
sha256 = "9a1882e286e2f5428517375e129dc3c6fb12114f360cd4a767e7a699d67c8416";
libraryHaskellDepends = [
base
deepseq
QuickCheck
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/sw17ch/data-clist";
description = "Simple functional ring type";
license = stdenv.lib.licenses.bsd3;

}) {};
"data-default" = callPackage
({
  mkDerivation
, base
, data-default-class
, data-default-instances-containers
, data-default-instances-dlist
, data-default-instances-old-locale
, stdenv
}:
mkDerivation {

pname = "data-default";
version = "0.7.1.1";
sha256 = "b0f95d279cd75cacaa8152a01590dc3460f7134f6840b37052abb3ba3cb2a511";
libraryHaskellDepends = [
base
data-default-class
data-default-instances-containers
data-default-instances-dlist
data-default-instances-old-locale
];
doHaddock = false;
doCheck = false;
description = "A class for types with a default value";
license = stdenv.lib.licenses.bsd3;

}) {};
"data-default-class" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "data-default-class";
version = "0.1.2.0";
sha256 = "4f01b423f000c3e069aaf52a348564a6536797f31498bb85c3db4bd2d0973e56";
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
description = "A class for types with a default value";
license = stdenv.lib.licenses.bsd3;

}) {};
"data-default-instances-containers" = callPackage
({
  mkDerivation
, base
, containers
, data-default-class
, stdenv
}:
mkDerivation {

pname = "data-default-instances-containers";
version = "0.0.1";
sha256 = "a55e07af005c9815d82f3fc95e125db82994377c9f4a769428878701d4ec081a";
libraryHaskellDepends = [
base
containers
data-default-class
];
doHaddock = false;
doCheck = false;
description = "Default instances for types in containers";
license = stdenv.lib.licenses.bsd3;

}) {};
"data-default-instances-dlist" = callPackage
({
  mkDerivation
, base
, data-default-class
, dlist
, stdenv
}:
mkDerivation {

pname = "data-default-instances-dlist";
version = "0.0.1";
sha256 = "7d683711cbf08abd7adcd5ac2be825381308d220397315a5570fe61b719b5959";
libraryHaskellDepends = [
base
data-default-class
dlist
];
doHaddock = false;
doCheck = false;
description = "Default instances for types in dlist";
license = stdenv.lib.licenses.bsd3;

}) {};
"data-default-instances-old-locale" = callPackage
({
  mkDerivation
, base
, data-default-class
, old-locale
, stdenv
}:
mkDerivation {

pname = "data-default-instances-old-locale";
version = "0.0.1";
sha256 = "60d3b02922958c4908d7bf2b24ddf61511665745f784227d206745784b0c0802";
libraryHaskellDepends = [
base
data-default-class
old-locale
];
doHaddock = false;
doCheck = false;
description = "Default instances for types in old-locale";
license = stdenv.lib.licenses.bsd3;

}) {};
"data-diverse" = callPackage
({
  mkDerivation
, base
, containers
, deepseq
, ghc-prim
, stdenv
, tagged
}:
mkDerivation {

pname = "data-diverse";
version = "2.0.1.0";
sha256 = "ab801d352521780f39112d642bc8d626fbdf88e0b2e79dc19984baaa80ad2725";
libraryHaskellDepends = [
base
containers
deepseq
ghc-prim
tagged
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/louispan/data-diverse#readme";
description = "Extensible records and polymorphic variants";
license = stdenv.lib.licenses.bsd3;

}) {};
"data-diverse-lens" = callPackage
({
  mkDerivation
, base
, data-diverse
, generic-lens
, lens
, profunctors
, stdenv
, tagged
}:
mkDerivation {

pname = "data-diverse-lens";
version = "2.1.0.0";
sha256 = "47d70a26f948343c0dfd084b8778e5dce1e0ddc566a3cfc2a24ec9a78e71e1c4";
libraryHaskellDepends = [
base
data-diverse
generic-lens
lens
profunctors
tagged
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/louispan/data-diverse-lens#readme";
description = "Isos & Lens for Data.Diverse.Many and Prisms for Data.Diverse.Which";
license = stdenv.lib.licenses.bsd3;

}) {};
"data-dword" = callPackage
({
  mkDerivation
, base
, data-bword
, ghc-prim
, hashable
, stdenv
, template-haskell
}:
mkDerivation {

pname = "data-dword";
version = "0.3.1.2";
sha256 = "6b677600221de86eaee21dd2d4c23c04320370c594a56f7bb3477ef4e4b69120";
libraryHaskellDepends = [
base
data-bword
ghc-prim
hashable
template-haskell
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/mvv/data-dword";
description = "Stick two binary words together to get a bigger one";
license = stdenv.lib.licenses.bsd3;

}) {};
"data-endian" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "data-endian";
version = "0.1.1";
sha256 = "8c1d4f30374f8331d31f4d7c6b39284331b6b9436e7b50f86547417bd05f2ac0";
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/mvv/data-endian";
description = "Endian-sensitive data";
license = stdenv.lib.licenses.bsd3;

}) {};
"data-fix" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "data-fix";
version = "0.2.0";
sha256 = "7e5718055cb27ccac1e0bf25be70ba9bfe2b0d021cfe0a57a163355830341392";
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/anton-k/data-fix";
description = "Fixpoint data types";
license = stdenv.lib.licenses.bsd3;

}) {};
"data-has" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "data-has";
version = "0.3.0.0";
sha256 = "3c25d403605ecb196df53c8c8fb7829cd7b6a88e0ea04b88038602ba7faa7379";
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/winterland1989/data-has";
description = "Simple extensible product";
license = stdenv.lib.licenses.bsd3;

}) {};
"data-hash" = callPackage
({
  mkDerivation
, array
, base
, containers
, stdenv
}:
mkDerivation {

pname = "data-hash";
version = "0.2.0.1";
sha256 = "9117dd49013ca28ff188fc71c3595ac3af23d56d301c1f39bac93d44d8c60bbe";
libraryHaskellDepends = [
array
base
containers
];
doHaddock = false;
doCheck = false;
description = "Combinators for building fast hashing functions";
license = stdenv.lib.licenses.bsd3;

}) {};
"data-inttrie" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "data-inttrie";
version = "0.1.4";
sha256 = "6b3a7d8d49b0676c09486ac08107b0e5a6dfd66d9627443be440e9fd11e7bd54";
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/luqui/data-inttrie";
description = "A simple lazy, infinite trie from integers";
license = stdenv.lib.licenses.bsd3;

}) {};
"data-lens-light" = callPackage
({
  mkDerivation
, base
, mtl
, stdenv
, template-haskell
}:
mkDerivation {

pname = "data-lens-light";
version = "0.1.2.2";
sha256 = "72d3e6a73bde4a32eccd2024eb58ca96da962d4b659d76baed4ab37f28dcb36e";
libraryHaskellDepends = [
base
mtl
template-haskell
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/feuerbach/data-lens-light";
description = "Simple lenses, minimum dependencies";
license = stdenv.lib.licenses.mit;

}) {};
"data-memocombinators" = callPackage
({
  mkDerivation
, array
, base
, data-inttrie
, stdenv
}:
mkDerivation {

pname = "data-memocombinators";
version = "0.5.1";
sha256 = "b4341d2024b84a43f92edc39f6d6766bf4f0f00a40fd834b9f6f8e987b606ed7";
libraryHaskellDepends = [
array
base
data-inttrie
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/luqui/data-memocombinators";
description = "Combinators for building memo tables";
license = stdenv.lib.licenses.bsd3;

}) {};
"data-msgpack" = callPackage
({
  mkDerivation
, base
, binary
, bytestring
, data-binary-ieee754
, data-msgpack-types
, groom
, stdenv
, text
}:
mkDerivation {

pname = "data-msgpack";
version = "0.0.11";
sha256 = "2904fc96617dc7885d0ebdac75149ed969f223af8a18628f72927da3832eb885";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
base
binary
bytestring
data-binary-ieee754
data-msgpack-types
text
];
executableHaskellDepends = [
base
bytestring
groom
];
doHaddock = false;
doCheck = false;
homepage = "http://msgpack.org/";
description = "A Haskell implementation of MessagePack";
license = stdenv.lib.licenses.bsd3;

}) {};
"data-msgpack-types" = callPackage
({
  mkDerivation
, base
, bytestring
, containers
, deepseq
, hashable
, QuickCheck
, stdenv
, text
, unordered-containers
, vector
, void
}:
mkDerivation {

pname = "data-msgpack-types";
version = "0.0.1";
sha256 = "529f139f089643a240c6e139b76c4ca1f18bce24dd352615584ebf041e94a898";
libraryHaskellDepends = [
base
bytestring
containers
deepseq
hashable
QuickCheck
text
unordered-containers
vector
void
];
doHaddock = false;
doCheck = false;
homepage = "http://msgpack.org/";
description = "A Haskell implementation of MessagePack";
license = stdenv.lib.licenses.bsd3;

}) {};
"data-or" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "data-or";
version = "1.0.0.5";
sha256 = "9defb64f1c7210460a940beb7f32ba1c79f363fbf3a5bd126feb876930c6e672";
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
homepage = "http://code.haskell.org/~wren/";
description = "A data type for non-exclusive disjunction";
license = stdenv.lib.licenses.bsd3;

}) {};
"data-ordlist" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "data-ordlist";
version = "0.4.7.0";
sha256 = "6f6c1e7a9a9155ad78ca78cb9abd6f7e2e1c78b3e549b179dc0874e6428f490d";
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
description = "Set and bag operations on ordered lists";
license = stdenv.lib.licenses.bsd3;

}) {};
"data-ref" = callPackage
({
  mkDerivation
, base
, stdenv
, stm
, transformers
}:
mkDerivation {

pname = "data-ref";
version = "0.0.1.1";
sha256 = "a4dabee83c7419199791d0ebf7870f926b1ca834a361ecfeb3c134f7fa64f268";
libraryHaskellDepends = [
base
stm
transformers
];
doHaddock = false;
doCheck = false;
homepage = "http://wiki.haskell.org/Mutable_variable";
description = "Unify STRef and IORef in plain Haskell 98";
license = stdenv.lib.licenses.bsd3;

}) {};
"data-reify" = callPackage
({
  mkDerivation
, base
, containers
, stdenv
}:
mkDerivation {

pname = "data-reify";
version = "0.6.1";
sha256 = "61350a1e96cb1276c2b6b8b13fa1bade5d4e63c702509a3f5e90bbc19ad9b202";
revision = "1";
editedCabalFile = "0ixlibqrz7fd4bg9vnnd431a9kqvz4ajx8sbgyvpx9l2yjrabwzp";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
base
containers
];
doHaddock = false;
doCheck = false;
homepage = "http://ku-fpg.github.io/software/data-reify/";
description = "Reify a recursive data structure into an explicit graph";
license = stdenv.lib.licenses.bsd3;

}) {};
"data-serializer" = callPackage
({
  mkDerivation
, base
, binary
, bytestring
, cereal
, data-endian
, parsers
, semigroups
, split
, stdenv
}:
mkDerivation {

pname = "data-serializer";
version = "0.3.4";
sha256 = "e793156aa2262ca294183a9d045f37e6ff2070825b40d2ffe5a8d64e0b455ec6";
libraryHaskellDepends = [
base
binary
bytestring
cereal
data-endian
parsers
semigroups
split
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/mvv/data-serializer";
description = "Common API for serialization libraries";
license = stdenv.lib.licenses.bsd3;

}) {};
"data-textual" = callPackage
({
  mkDerivation
, base
, bytestring
, parsers
, stdenv
, text
, text-latin1
, text-printer
}:
mkDerivation {

pname = "data-textual";
version = "0.3.0.2";
sha256 = "44c530b081a486c50d668004637814223d1f1890716d39f7b692c83644d29830";
libraryHaskellDepends = [
base
bytestring
parsers
text
text-latin1
text-printer
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/mvv/data-textual";
description = "Human-friendly textual representations";
license = stdenv.lib.licenses.bsd3;

}) {};
"data-tree-print" = callPackage
({
  mkDerivation
, base
, pretty
, stdenv
, syb
}:
mkDerivation {

pname = "data-tree-print";
version = "0.1.0.1";
sha256 = "cec8c278e1033695ce97e2d7bf5db2b1b45a764976e59d06c67a6fe4fc5401fe";
libraryHaskellDepends = [
base
pretty
syb
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/lspitzner/data-tree-print";
description = "Print Data instances as a nested tree";
license = stdenv.lib.licenses.bsd3;

}) {};
"datadog" = callPackage
({
  mkDerivation
, aeson
, auto-update
, base
, buffer-builder
, bytestring
, dlist
, http-client
, http-client-tls
, http-types
, lens
, lifted-base
, monad-control
, network
, old-locale
, stdenv
, text
, time
, transformers-base
, unordered-containers
, vector
}:
mkDerivation {

pname = "datadog";
version = "0.2.2.0";
sha256 = "450fb6fba21d9739c8269f167ecf084d966e2248084386ab5c04b2748b4b6944";
libraryHaskellDepends = [
aeson
auto-update
base
buffer-builder
bytestring
dlist
http-client
http-client-tls
http-types
lens
lifted-base
monad-control
network
old-locale
text
time
transformers-base
unordered-containers
vector
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/iand675/datadog";
description = "Datadog client for Haskell. Supports both the HTTP API and StatsD.";
license = stdenv.lib.licenses.mit;

}) {};
"datasets" = callPackage
({
  mkDerivation
, aeson
, attoparsec
, base
, bytestring
, cassava
, directory
, file-embed
, filepath
, hashable
, microlens
, stdenv
, stringsearch
, text
, time
, vector
, wreq
}:
mkDerivation {

pname = "datasets";
version = "0.2.5";
sha256 = "9a9139130936102bbfa60324e1ed7f9fd5b9a68db096917f589e8bb07999fdba";
libraryHaskellDepends = [
aeson
attoparsec
base
bytestring
cassava
directory
file-embed
filepath
hashable
microlens
stringsearch
text
time
vector
wreq
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/diffusionkinetics/open/datasets";
description = "Classical data sets for statistics and machine learning";
license = stdenv.lib.licenses.mit;

}) {};
"dataurl" = callPackage
({
  mkDerivation
, attoparsec
, base
, base64-bytestring
, bytestring
, stdenv
, text
}:
mkDerivation {

pname = "dataurl";
version = "0.1.0.0";
sha256 = "b1e72b48dbe72520f0b43b06ae75cb025e9750213982583f527e16b605660fb2";
libraryHaskellDepends = [
attoparsec
base
base64-bytestring
bytestring
text
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/agrafix/dataurl#readme";
description = "Handle data-urls";
license = stdenv.lib.licenses.mit;

}) {};
"dawg-ord" = callPackage
({
  mkDerivation
, base
, containers
, mtl
, stdenv
, transformers
, vector
}:
mkDerivation {

pname = "dawg-ord";
version = "0.5.1.0";
sha256 = "d9129acfb71ce41b6994d2c72a040319fc85af408226122d3958d5617e8922e9";
libraryHaskellDepends = [
base
containers
mtl
transformers
vector
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/kawu/dawg-ord";
description = "Directed acyclic word graphs";
license = stdenv.lib.licenses.bsd3;

}) {};
"dbcleaner" = callPackage
({
  mkDerivation
, base
, postgresql-simple
, stdenv
, text
}:
mkDerivation {

pname = "dbcleaner";
version = "0.1.3";
sha256 = "0817b0e1698d8d48ac58d631f51dc6e34663f4e97af7bac3fd03e31349830f35";
libraryHaskellDepends = [
base
postgresql-simple
text
];
doHaddock = false;
doCheck = false;
description = "Clean database tables automatically around hspec tests";
license = stdenv.lib.licenses.mit;

}) {};
"dbus" = callPackage
({
  mkDerivation
, base
, bytestring
, cereal
, containers
, deepseq
, libxml-sax
, network
, parsec
, random
, stdenv
, text
, transformers
, unix
, vector
, xml-types
}:
mkDerivation {

pname = "dbus";
version = "0.10.15";
sha256 = "6455659dc4e2b3078887506099039dc06fdda559a9cddb3ff9df5584b792baa8";
libraryHaskellDepends = [
base
bytestring
cereal
containers
deepseq
libxml-sax
network
parsec
random
text
transformers
unix
vector
xml-types
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/rblaze/haskell-dbus#readme";
description = "A client library for the D-Bus IPC system";
license = stdenv.lib.licenses.gpl3;

}) {};
"debian-build" = callPackage
({
  mkDerivation
, base
, directory
, filepath
, process
, split
, stdenv
, transformers
}:
mkDerivation {

pname = "debian-build";
version = "0.10.1.1";
sha256 = "d3e6a924367ddd7087f00ac448afb3f12cb5a70392194f1bcd15a33b81766537";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
base
directory
filepath
process
split
transformers
];
executableHaskellDepends = [
base
filepath
transformers
];
doHaddock = false;
doCheck = false;
homepage = "http://twitter.com/khibino/";
description = "Debian package build sequence tools";
license = stdenv.lib.licenses.bsd3;

}) {};
"debug" = callPackage
({
  mkDerivation
, aeson
, base
, bytestring
, clock
, containers
, deepseq
, directory
, extra
, filepath
, ghc-prim
, hashable
, Hoed
, libgraph
, open-browser
, prettyprinter
, prettyprinter-compat-ansi-wl-pprint
, stdenv
, template-haskell
, text
, uniplate
, unordered-containers
, vector
, yaml
}:
mkDerivation {

pname = "debug";
version = "0.1.1";
sha256 = "330f44c6341833c5e0cccf08fa7674dd54f14a843a2b5703e25ce08ffed49248";
isLibrary = true;
isExecutable = true;
enableSeparateDataOutput = true;
libraryHaskellDepends = [
aeson
base
bytestring
clock
containers
deepseq
directory
extra
ghc-prim
hashable
Hoed
libgraph
open-browser
prettyprinter
prettyprinter-compat-ansi-wl-pprint
template-haskell
text
uniplate
unordered-containers
vector
];
executableHaskellDepends = [
aeson
base
directory
filepath
yaml
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/ndmitchell/debug";
description = "Simple trace-based debugger";
license = stdenv.lib.licenses.bsd3;

}) {};
"declarative" = callPackage
({
  mkDerivation
, base
, hasty-hamiltonian
, kan-extensions
, lens
, mcmc-types
, mighty-metropolis
, mwc-probability
, pipes
, primitive
, speedy-slice
, stdenv
, transformers
}:
mkDerivation {

pname = "declarative";
version = "0.5.2";
sha256 = "1ea8cf5eb0283ed9d9a7e1d46e5386960587c1671f7ce568d6eaf1d1b8ba9a04";
libraryHaskellDepends = [
base
hasty-hamiltonian
kan-extensions
lens
mcmc-types
mighty-metropolis
mwc-probability
pipes
primitive
speedy-slice
transformers
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/jtobin/declarative";
description = "DIY Markov Chains";
license = stdenv.lib.licenses.mit;

}) {};
"deepseq-generics" = callPackage
({
  mkDerivation
, base
, deepseq
, ghc-prim
, stdenv
}:
mkDerivation {

pname = "deepseq-generics";
version = "0.2.0.0";
sha256 = "b0b3ef5546c0768ef9194519a90c629f8f2ba0348487e620bb89d512187c7c9d";
revision = "2";
editedCabalFile = "1pnidf8w8x0w5fsqgv8hhrw07slmhxwy5x4fikgk0bd6k76aqicb";
libraryHaskellDepends = [
base
deepseq
ghc-prim
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/hvr/deepseq-generics";
description = "GHC.Generics-based Control.DeepSeq.rnf implementation";
license = stdenv.lib.licenses.bsd3;

}) {};
"dejafu" = callPackage
({
  mkDerivation
, base
, concurrency
, containers
, deepseq
, exceptions
, leancheck
, profunctors
, random
, ref-fd
, stdenv
, transformers
}:
mkDerivation {

pname = "dejafu";
version = "1.3.2.0";
sha256 = "c951b31e7ebc5a10d9f1bc1fd18822aa840616d747933b969a2b641bbd77bcbf";
libraryHaskellDepends = [
base
concurrency
containers
deepseq
exceptions
leancheck
profunctors
random
ref-fd
transformers
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/barrucadu/dejafu";
description = "A library for unit-testing concurrent programs";
license = stdenv.lib.licenses.mit;

}) {};
"dependent-map" = callPackage
({
  mkDerivation
, base
, containers
, dependent-sum
, stdenv
}:
mkDerivation {

pname = "dependent-map";
version = "0.2.4.0";
sha256 = "5db396bdb5d156434af920c074316c3b84b4d39ba8e1cd349c7bb6679cb28246";
libraryHaskellDepends = [
base
containers
dependent-sum
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/mokus0/dependent-map";
description = "Dependent finite maps (partial dependent products)";
license = "unknown";

}) {};
"dependent-sum" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "dependent-sum";
version = "0.4";
sha256 = "a8deecb4153a1878173f8d0a18de0378ab068bc15e5035b9e4cb478e8e4e1a1e";
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/mokus0/dependent-sum";
description = "Dependent sum type";
license = stdenv.lib.licenses.publicDomain;

}) {};
"dependent-sum-template" = callPackage
({
  mkDerivation
, base
, dependent-sum
, stdenv
, template-haskell
, th-extras
}:
mkDerivation {

pname = "dependent-sum-template";
version = "0.0.0.6";
sha256 = "994cb4891949cad1b9ca268052377c58c174f77a469cae44742ac83727be91ad";
libraryHaskellDepends = [
base
dependent-sum
template-haskell
th-extras
];
doHaddock = false;
doCheck = false;
homepage = "/dev/null";
description = "Template Haskell code to generate instances of classes in dependent-sum package";
license = stdenv.lib.licenses.publicDomain;

}) {};
"deque" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "deque";
version = "0.2.1";
sha256 = "019d197e306724f1a09ad53ab9309cee1cfbbf5456f2956d3ab52a59fe523264";
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/nikita-volkov/deque";
description = "Double-ended queue";
license = stdenv.lib.licenses.mit;

}) {};
"deriving-compat" = callPackage
({
  mkDerivation
, base
, containers
, ghc-boot-th
, ghc-prim
, stdenv
, template-haskell
, th-abstraction
, transformers
, transformers-compat
}:
mkDerivation {

pname = "deriving-compat";
version = "0.4.2";
sha256 = "7f3f4e1aca70c07a00a8885eaaf4153a60cf334c0f0f446bc9a083a64b8e976f";
libraryHaskellDepends = [
base
containers
ghc-boot-th
ghc-prim
template-haskell
th-abstraction
transformers
transformers-compat
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/haskell-compat/deriving-compat";
description = "Backports of GHC deriving extensions";
license = stdenv.lib.licenses.bsd3;

}) {};
"descriptive" = callPackage
({
  mkDerivation
, aeson
, base
, bifunctors
, containers
, mtl
, scientific
, stdenv
, text
, transformers
, vector
}:
mkDerivation {

pname = "descriptive";
version = "0.9.4";
sha256 = "795ec65756bf87ec6ea4c92d85a25d0eb0d8cfa1df40685ddcf74b83099bba2f";
libraryHaskellDepends = [
aeson
base
bifunctors
containers
mtl
scientific
text
transformers
vector
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/chrisdone/descriptive";
description = "Self-describing consumers/parsers; forms, cmd-line args, JSON, etc";
license = stdenv.lib.licenses.bsd3;

}) {};
"dhall" = callPackage
({
  mkDerivation
, ansi-terminal
, ansi-wl-pprint
, base
, base16-bytestring
, bytestring
, case-insensitive
, containers
, contravariant
, cryptonite
, directory
, exceptions
, filepath
, haskeline
, http-client
, http-client-tls
, insert-ordered-containers
, lens-family-core
, memory
, mtl
, optparse-generic
, parsers
, prettyprinter
, prettyprinter-ansi-terminal
, repline
, scientific
, stdenv
, text
, text-format
, transformers
, trifecta
, unordered-containers
, vector
}:
mkDerivation {

pname = "dhall";
version = "1.11.1";
sha256 = "443db8677ed59da1af5d4714576963d586d44441a8fb6e3ef2d927144b7d4fed";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
ansi-wl-pprint
base
base16-bytestring
bytestring
case-insensitive
containers
contravariant
cryptonite
directory
exceptions
filepath
http-client
http-client-tls
insert-ordered-containers
lens-family-core
memory
parsers
prettyprinter
prettyprinter-ansi-terminal
scientific
text
text-format
transformers
trifecta
unordered-containers
vector
];
executableHaskellDepends = [
ansi-terminal
base
haskeline
mtl
optparse-generic
prettyprinter
prettyprinter-ansi-terminal
repline
text
trifecta
];
doHaddock = false;
doCheck = false;
description = "A configuration language guaranteed to terminate";
license = stdenv.lib.licenses.bsd3;

}) {};
"dhall-json" = callPackage
({
  mkDerivation
, aeson
, aeson-pretty
, base
, bytestring
, dhall
, optparse-generic
, stdenv
, text
, trifecta
, unordered-containers
, yaml
}:
mkDerivation {

pname = "dhall-json";
version = "1.0.13";
sha256 = "3a256300d29feb19181280272fd7df79aecbb82e3429084e9255bdae59fa570f";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
aeson
base
bytestring
dhall
text
trifecta
unordered-containers
];
executableHaskellDepends = [
aeson
aeson-pretty
base
bytestring
dhall
optparse-generic
text
yaml
];
doHaddock = false;
doCheck = false;
description = "Compile Dhall to JSON or YAML";
license = stdenv.lib.licenses.bsd3;

}) {};
"dice" = callPackage
({
  mkDerivation
, base
, parsec
, random-fu
, stdenv
, transformers
}:
mkDerivation {

pname = "dice";
version = "0.1";
sha256 = "e13fe7dec8394aeddb71fb0e0ac68d8750096bfcc198a80d7bc30d94e01edde5";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
base
parsec
random-fu
transformers
];
doHaddock = false;
doCheck = false;
description = "Simplistic D&D style dice-rolling system";
license = stdenv.lib.licenses.publicDomain;

}) {};
"dictionaries" = callPackage
({
  mkDerivation
, attoparsec
, base
, binary
, bytestring
, containers
, criterion
, data-default
, deepseq
, directory
, exceptions
, filepath
, random
, random-shuffle
, stdenv
, tagged
, text
, time
, transformers
, zlib
}:
mkDerivation {

pname = "dictionaries";
version = "0.2.0.4";
sha256 = "fde3c3d716af4eac7fd427c07a553473bafe0d97fd393f317f2fadea000fa8d4";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
attoparsec
base
binary
bytestring
containers
data-default
deepseq
directory
exceptions
filepath
tagged
text
time
transformers
zlib
];
executableHaskellDepends = [
base
bytestring
containers
criterion
deepseq
directory
exceptions
filepath
random
random-shuffle
tagged
text
transformers
];
doHaddock = false;
doCheck = false;
description = "Tools to handle StarDict dictionaries";
license = stdenv.lib.licenses.bsd3;

}) {};
"diff3" = callPackage
({
  mkDerivation
, base
, Diff
, stdenv
}:
mkDerivation {

pname = "diff3";
version = "0.3.1";
sha256 = "a36b9614974c5989928e238db5d4e52936c4e56a9f67ed786bdbec68e095ca57";
libraryHaskellDepends = [
base
Diff
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/ocharles/diff3.git";
description = "Perform a 3-way difference of documents";
license = stdenv.lib.licenses.bsd3;

}) {};
"digest" = callPackage
({
  mkDerivation
, base
, bytestring
, stdenv
, zlib
}:
mkDerivation {

pname = "digest";
version = "0.0.1.2";
sha256 = "641717eb16392abf8965986a9e8dc21eebf1d97775bbb6923c7b7f8fee17fe11";
libraryHaskellDepends = [
base
bytestring
];
librarySystemDepends = [
zlib
];
doHaddock = false;
doCheck = false;
description = "Various cryptographic hashes for bytestrings; CRC32 and Adler32 for now";
license = stdenv.lib.licenses.bsd3;

}) {inherit (pkgs) zlib;};
"digits" = callPackage
({
  mkDerivation
, base
, QuickCheck
, stdenv
}:
mkDerivation {

pname = "digits";
version = "0.3.1";
sha256 = "a8499c9745dcf8a4e6c48594f555e6c6276e8d91c457dcc562a370ccadcd6a2c";
libraryHaskellDepends = [
base
QuickCheck
];
doHaddock = false;
doCheck = false;
description = "Converts integers to lists of digits and back";
license = stdenv.lib.licenses.bsd3;

}) {};
"dimensional" = callPackage
({
  mkDerivation
, base
, deepseq
, exact-pi
, ieee754
, numtype-dk
, semigroups
, stdenv
, vector
}:
mkDerivation {

pname = "dimensional";
version = "1.1";
sha256 = "3a25889c1c67966a2739a9c1ccd040278c89e10823a1b2463fbf571b74075e16";
libraryHaskellDepends = [
base
deepseq
exact-pi
ieee754
numtype-dk
semigroups
vector
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/bjornbm/dimensional/";
description = "Statically checked physical dimensions, using Type Families and Data Kinds";
license = stdenv.lib.licenses.bsd3;

}) {};
"direct-rocksdb" = callPackage
({
  mkDerivation
, base
, bytestring
, Cabal
, cabal-toolkit
, directory
, filepath
, safe-exceptions
, stdenv
}:
mkDerivation {

pname = "direct-rocksdb";
version = "0.0.3";
sha256 = "84358de7e6b6202336ccb038123f0b95c4e57fab6d2fd8e98ba3deb3b582058a";
setupHaskellDepends = [
base
Cabal
cabal-toolkit
directory
filepath
];
libraryHaskellDepends = [
base
bytestring
safe-exceptions
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/TerrorJack/direct-rocksdb#readme";
description = "Bindings to RocksDB";
license = stdenv.lib.licenses.bsd3;

}) {};
"direct-sqlite" = callPackage
({
  mkDerivation
, base
, bytestring
, semigroups
, stdenv
, text
}:
mkDerivation {

pname = "direct-sqlite";
version = "2.3.23";
sha256 = "1fdb6f6ea34ac978e72f61a845786e4b4b945014ccc64ddb07ddcafa1254937b";
libraryHaskellDepends = [
base
bytestring
semigroups
text
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/IreneKnapp/direct-sqlite";
description = "Low-level binding to SQLite3. Includes UTF8 and BLOB support.";
license = stdenv.lib.licenses.bsd3;

}) {};
"directory-tree" = callPackage
({
  mkDerivation
, base
, directory
, filepath
, stdenv
}:
mkDerivation {

pname = "directory-tree";
version = "0.12.1";
sha256 = "e2084495b3a226cf54d949635c86fc14e89daa09d86cce39e3c3cf898ae6e517";
libraryHaskellDepends = [
base
directory
filepath
];
doHaddock = false;
doCheck = false;
homepage = "http://brandon.si/code/directory-tree-module-released/";
description = "A simple directory-like tree datatype, with useful IO functions";
license = stdenv.lib.licenses.bsd3;

}) {};
"discount" = callPackage
({
  mkDerivation
, base
, bytestring
, markdown
, stdenv
, text
}:
mkDerivation {

pname = "discount";
version = "0.1.1";
sha256 = "e99cb7fdd1896dd1e525616597f936c1305a657cea1ef82cc0b3dcfe5afa34e0";
libraryHaskellDepends = [
base
bytestring
text
];
librarySystemDepends = [
markdown
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/lightquake/discount";
description = "Haskell bindings to the discount Markdown library";
license = stdenv.lib.licenses.mit;

}) {inherit (pkgs) markdown;};
"discrimination" = callPackage
({
  mkDerivation
, array
, base
, containers
, contravariant
, deepseq
, ghc-prim
, hashable
, primitive
, profunctors
, promises
, semigroups
, stdenv
, transformers
, transformers-compat
, vector
, void
}:
mkDerivation {

pname = "discrimination";
version = "0.3";
sha256 = "d6d4b285783e66446a8f798b3a440b1020bdc681285b05794d3ec84d96dc4ca3";
libraryHaskellDepends = [
array
base
containers
contravariant
deepseq
ghc-prim
hashable
primitive
profunctors
promises
semigroups
transformers
transformers-compat
vector
void
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/ekmett/discrimination/";
description = "Fast generic linear-time sorting, joins and container construction";
license = stdenv.lib.licenses.bsd3;

}) {};
"disk-free-space" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "disk-free-space";
version = "0.1.0.1";
sha256 = "f17a4f9c3b41083ccbb6c11b2debdbc705f86097b7459ff0f46cc01d2692381f";
revision = "3";
editedCabalFile = "0x0wjycr3rhw9vcq51b4sz8cf7mcvx7whhywv72y25r9385lxb3i";
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/redneb/disk-free-space";
description = "Retrieve information about disk space usage";
license = stdenv.lib.licenses.bsd3;

}) {};
"disposable" = callPackage
({
  mkDerivation
, base
, dlist
, ghcjs-base-stub
, stdenv
}:
mkDerivation {

pname = "disposable";
version = "0.2.0.4";
sha256 = "c23fe12dce0aef49bcd52206fe927ac6ae1aa4af5c32028d6ceb4bc52b1fc96a";
libraryHaskellDepends = [
base
dlist
ghcjs-base-stub
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/louispan/disposable#readme";
description = "Allows storing different resource-releasing actions together";
license = stdenv.lib.licenses.bsd3;

}) {};
"distance" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "distance";
version = "0.1.0.0";
sha256 = "007cfb1c56ff8e8f905dad7c1630630162ffb8520925f028cf82e93ba7cd4a58";
revision = "1";
editedCabalFile = "0iysmnl4p1fsb4zd0mmr6q7zc7w90jrwcxxm7vi38658x19r8qmq";
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/agrafix/distance#readme";
description = "Useful distance datatype and functions";
license = stdenv.lib.licenses.mit;

}) {};
"distributed-closure" = callPackage
({
  mkDerivation
, base
, binary
, bytestring
, constraints
, stdenv
, syb
, template-haskell
}:
mkDerivation {

pname = "distributed-closure";
version = "0.4.0";
sha256 = "d56abae0390d30ca6adf9a2e84e770aa92e5b147e547d245fa3a56506dad5ee4";
libraryHaskellDepends = [
base
binary
bytestring
constraints
syb
template-haskell
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/tweag/distributed-closure";
description = "Serializable closures for distributed programming";
license = stdenv.lib.licenses.bsd3;

}) {};
"distributed-process" = callPackage
({
  mkDerivation
, base
, binary
, bytestring
, containers
, data-accessor
, deepseq
, distributed-static
, exceptions
, hashable
, mtl
, network-transport
, random
, rank1dynamic
, stdenv
, stm
, syb
, template-haskell
, time
, transformers
}:
mkDerivation {

pname = "distributed-process";
version = "0.7.3";
sha256 = "e5e9185f37a112534bdc9e03140dde7c986f338e83f63b626079b7b1a30ee7d4";
revision = "1";
editedCabalFile = "0vrk3lrrsc7rrzrkfqcc5q36clr8cy51v6dv4hpmi89fyngx6lz5";
libraryHaskellDepends = [
base
binary
bytestring
containers
data-accessor
deepseq
distributed-static
exceptions
hashable
mtl
network-transport
random
rank1dynamic
stm
syb
template-haskell
time
transformers
];
doHaddock = false;
doCheck = false;
homepage = "http://haskell-distributed.github.com/";
description = "Cloud Haskell: Erlang-style concurrency in Haskell";
license = stdenv.lib.licenses.bsd3;

}) {};
"distributed-process-lifted" = callPackage
({
  mkDerivation
, base
, deepseq
, distributed-process
, distributed-process-monad-control
, lifted-base
, monad-control
, mtl
, network-transport
, stdenv
, transformers
, transformers-base
}:
mkDerivation {

pname = "distributed-process-lifted";
version = "0.3.0.1";
sha256 = "33f7d59a12a294c5bd9c0037f822ba4341e1ae1dbad1356142bd6aba7870e480";
libraryHaskellDepends = [
base
deepseq
distributed-process
distributed-process-monad-control
lifted-base
monad-control
mtl
network-transport
transformers
transformers-base
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/jeremyjh/distributed-process-lifted";
description = "monad-control style typeclass and transformer instances for Process monad";
license = stdenv.lib.licenses.bsd3;

}) {};
"distributed-process-monad-control" = callPackage
({
  mkDerivation
, base
, distributed-process
, monad-control
, stdenv
, transformers
, transformers-base
}:
mkDerivation {

pname = "distributed-process-monad-control";
version = "0.5.1.3";
sha256 = "a1ff561dacf4cf5fee863469ce17804f703f63812acdee16c188655126e5f49b";
libraryHaskellDepends = [
base
distributed-process
monad-control
transformers
transformers-base
];
doHaddock = false;
doCheck = false;
homepage = "http://haskell-distributed.github.io";
description = "Orphan instances for MonadBase and MonadBaseControl";
license = stdenv.lib.licenses.bsd3;

}) {};
"distributed-process-simplelocalnet" = callPackage
({
  mkDerivation
, base
, binary
, bytestring
, containers
, data-accessor
, distributed-process
, network
, network-multicast
, network-transport
, network-transport-tcp
, stdenv
, transformers
}:
mkDerivation {

pname = "distributed-process-simplelocalnet";
version = "0.2.4";
sha256 = "2eea8b33398f06c5edd94dadabfb1a39e76a95a1ac385ff9597a4d8f0815df2b";
revision = "2";
editedCabalFile = "1msya8gyk48yngw5znyr68f5ygvmiz6yjyhwkgxzjj56h4zh0jh4";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
base
binary
bytestring
containers
data-accessor
distributed-process
network
network-multicast
network-transport
network-transport-tcp
transformers
];
doHaddock = false;
doCheck = false;
homepage = "http://haskell-distributed.github.com";
description = "Simple zero-configuration backend for Cloud Haskell";
license = stdenv.lib.licenses.bsd3;

}) {};
"distributed-process-tests" = callPackage
({
  mkDerivation
, ansi-terminal
, base
, binary
, bytestring
, distributed-process
, distributed-static
, HUnit
, network
, network-transport
, random
, rematch
, setenv
, stdenv
, stm
, test-framework
, test-framework-hunit
}:
mkDerivation {

pname = "distributed-process-tests";
version = "0.4.11";
sha256 = "07c255bc16f7ead7ee29dc389351cb6a438ee229739af7020e86aa35a8aff566";
libraryHaskellDepends = [
ansi-terminal
base
binary
bytestring
distributed-process
distributed-static
HUnit
network
network-transport
random
rematch
setenv
stm
test-framework
test-framework-hunit
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/haskell-distributed/distributed-process/tree/master/distributed-process-tests";
description = "Tests and test support tools for distributed-process";
license = stdenv.lib.licenses.bsd3;

}) {};
"distributed-static" = callPackage
({
  mkDerivation
, base
, binary
, bytestring
, containers
, deepseq
, rank1dynamic
, stdenv
}:
mkDerivation {

pname = "distributed-static";
version = "0.3.8";
sha256 = "954bf65722b662794990c81ba31a7fdbccd9d233af9212896443aa5ab9d4ffc2";
libraryHaskellDepends = [
base
binary
bytestring
containers
deepseq
rank1dynamic
];
doHaddock = false;
doCheck = false;
homepage = "http://haskell-distributed.github.com";
description = "Compositional, type-safe, polymorphic static values and closures";
license = stdenv.lib.licenses.bsd3;

}) {};
"distribution" = callPackage
({
  mkDerivation
, array
, base
, containers
, MonadRandom
, random
, stdenv
}:
mkDerivation {

pname = "distribution";
version = "1.1.1.0";
sha256 = "fdd2f8eef65580e2248adab5a35e441180b0737ac14cb1307351a205043081b1";
libraryHaskellDepends = [
array
base
containers
MonadRandom
random
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/redelmann/haskell-distribution";
description = "Finite discrete probability distributions";
license = stdenv.lib.licenses.asl20;

}) {};
"distribution-nixpkgs" = callPackage
({
  mkDerivation
, aeson
, base
, bytestring
, Cabal
, containers
, deepseq
, language-nix
, lens
, pretty
, process
, split
, stdenv
}:
mkDerivation {

pname = "distribution-nixpkgs";
version = "1.1";
sha256 = "1d072e1918a494bd476f666d9665b4e14a7551f5c57cd9640f0f5f986b40a896";
revision = "1";
editedCabalFile = "08slqjvkji3lhn2aai07046vfbbrrgqv3nbkfb7wpiqr84x1q8cv";
libraryHaskellDepends = [
aeson
base
bytestring
Cabal
containers
deepseq
language-nix
lens
pretty
process
split
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/peti/distribution-nixpkgs#readme";
description = "Types and functions to manipulate the Nixpkgs distribution";
license = stdenv.lib.licenses.bsd3;

}) {};
"distributive" = callPackage
({
  mkDerivation
, base
, base-orphans
, Cabal
, cabal-doctest
, stdenv
, tagged
, transformers
, transformers-compat
}:
mkDerivation {

pname = "distributive";
version = "0.5.3";
sha256 = "9173805b9c941bda1f37e5aeb68ae30f57a12df9b17bd2aa86db3b7d5236a678";
revision = "6";
editedCabalFile = "06bd38rf31yrvvy989r44pm0id3dsxwcp6nxg7wk6ccj3n2b8rzk";
setupHaskellDepends = [
base
Cabal
cabal-doctest
];
libraryHaskellDepends = [
base
base-orphans
tagged
transformers
transformers-compat
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/ekmett/distributive/";
description = "Distributive functors -- Dual to Traversable";
license = stdenv.lib.licenses.bsd3;

}) {};
"diversity" = callPackage
({
  mkDerivation
, base
, containers
, data-ordlist
, fasta
, math-functions
, MonadRandom
, optparse-applicative
, parsec
, pipes
, random-shuffle
, scientific
, semigroups
, split
, stdenv
}:
mkDerivation {

pname = "diversity";
version = "0.8.1.0";
sha256 = "1bfb127ebd5c8cc9d5929222c7337d2eeecd66857875811ea9d9411227312832";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
base
containers
data-ordlist
fasta
math-functions
MonadRandom
parsec
random-shuffle
scientific
split
];
executableHaskellDepends = [
base
containers
fasta
optparse-applicative
pipes
semigroups
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/GregorySchwartz/diversity";
description = "Quantify the diversity of a population";
license = stdenv.lib.licenses.gpl3;

}) {};
"djinn-ghc" = callPackage
({
  mkDerivation
, async
, base
, containers
, djinn-lib
, ghc
, mtl
, stdenv
, transformers
}:
mkDerivation {

pname = "djinn-ghc";
version = "0.0.2.3";
sha256 = "cb956aed69bc5c342b45ef1b1142b6555fd2865dde1a80ac6ab3ef86aca314a4";
libraryHaskellDepends = [
async
base
containers
djinn-lib
ghc
mtl
transformers
];
doHaddock = false;
doCheck = false;
description = "Generate Haskell code from a type. Bridge from Djinn to GHC API.";
license = stdenv.lib.licenses.bsd3;

}) {};
"djinn-lib" = callPackage
({
  mkDerivation
, base
, containers
, mtl
, pretty
, stdenv
}:
mkDerivation {

pname = "djinn-lib";
version = "0.0.1.3";
sha256 = "3b35a6d89050249172519f90d6b166c1483d30c0259f10e48ffe52778c5f3364";
libraryHaskellDepends = [
base
containers
mtl
pretty
];
doHaddock = false;
doCheck = false;
homepage = "http://www.augustsson.net/Darcs/Djinn/";
description = "Generate Haskell code from a type. Library extracted from djinn package.";
license = stdenv.lib.licenses.bsd3;

}) {};
"dlist" = callPackage
({
  mkDerivation
, base
, deepseq
, stdenv
}:
mkDerivation {

pname = "dlist";
version = "0.8.0.4";
sha256 = "acf1867b80cdd618b8d904e89eea33be60d3c4c3aeb80d61f29229a301cc397a";
libraryHaskellDepends = [
base
deepseq
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/spl/dlist";
description = "Difference lists";
license = stdenv.lib.licenses.bsd3;

}) {};
"dlist-instances" = callPackage
({
  mkDerivation
, base
, dlist
, semigroups
, stdenv
}:
mkDerivation {

pname = "dlist-instances";
version = "0.1.1.1";
sha256 = "d14a10c06f52fb412b2c1066d729f5534aa43204221e7ba7d81d935c44ce4f5b";
libraryHaskellDepends = [
base
dlist
semigroups
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/gregwebs/dlist-instances";
description = "Difference lists instances";
license = stdenv.lib.licenses.bsd3;

}) {};
"dlist-nonempty" = callPackage
({
  mkDerivation
, base
, base-compat
, deepseq
, dlist
, semigroupoids
, stdenv
}:
mkDerivation {

pname = "dlist-nonempty";
version = "0.1.1";
sha256 = "40e8a64c979ca07b4f67a38878d1d13c1127fe2d1ad6b2b4daff0ee2dbd54b33";
revision = "2";
editedCabalFile = "1968b6i0azv0bi3x6cw85ga89md1dh1wdmly3ivvvyb6i9mgwrn6";
libraryHaskellDepends = [
base
base-compat
deepseq
dlist
semigroupoids
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/phadej/dlist-nonempty";
description = "Non-empty difference lists";
license = stdenv.lib.licenses.bsd3;

}) {};
"dns" = callPackage
({
  mkDerivation
, async
, attoparsec
, auto-update
, base
, base64-bytestring
, binary
, bytestring
, containers
, cryptonite
, iproute
, mtl
, network
, psqueues
, safe
, stdenv
, time
}:
mkDerivation {

pname = "dns";
version = "3.0.3";
sha256 = "db51eab95ff90a6d565242609b7be82f523a3adc1ea29d7d917dc0b78b7bfd54";
libraryHaskellDepends = [
async
attoparsec
auto-update
base
base64-bytestring
binary
bytestring
containers
cryptonite
iproute
mtl
network
psqueues
safe
time
];
doHaddock = false;
doCheck = false;
testTarget = "spec";
description = "DNS library in Haskell";
license = stdenv.lib.licenses.bsd3;

}) {};
"do-list" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "do-list";
version = "1.0.1";
sha256 = "b377193461b0ad7a81f9e66bcf10f8838b6f1e39f4a5de3b2e2f45c749c5b694";
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/tserduke/do-list#readme";
description = "Do notation for free";
license = stdenv.lib.licenses.bsd3;

}) {};
"docker" = callPackage
({
  mkDerivation
, aeson
, base
, blaze-builder
, bytestring
, conduit
, conduit-combinators
, conduit-extra
, containers
, data-default-class
, directory
, exceptions
, filemanip
, filepath
, http-client
, http-conduit
, http-types
, monad-control
, mtl
, network
, resourcet
, scientific
, stdenv
, tar
, temporary
, text
, time
, tls
, transformers
, transformers-base
, unliftio-core
, unordered-containers
, uuid
, vector
, x509
, x509-store
, x509-system
, zlib
}:
mkDerivation {

pname = "docker";
version = "0.5.1.1";
sha256 = "8a1c09da751d0e0d4baa57a1eef5d2e499df18d4bcf775c95dcf3ab2859a9a26";
libraryHaskellDepends = [
aeson
base
blaze-builder
bytestring
conduit
conduit-combinators
conduit-extra
containers
data-default-class
directory
exceptions
filemanip
filepath
http-client
http-conduit
http-types
monad-control
mtl
network
resourcet
scientific
tar
temporary
text
time
tls
transformers
transformers-base
unliftio-core
unordered-containers
uuid
vector
x509
x509-store
x509-system
zlib
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/denibertovic/docker-hs";
description = "An API client for docker written in Haskell";
license = stdenv.lib.licenses.bsd3;

}) {};
"docker-build-cacher" = callPackage
({
  mkDerivation
, base
, containers
, foldl
, language-docker
, stdenv
, system-filepath
, text
, turtle
}:
mkDerivation {

pname = "docker-build-cacher";
version = "1.9.2";
sha256 = "67a3c38fd1e1f3002ea56c52ffdc68f2d9154131b9d0c4c300d0ead8f60e6986";
isLibrary = false;
isExecutable = true;
executableHaskellDepends = [
base
containers
foldl
language-docker
system-filepath
text
turtle
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/seatgeek/docker-build-cacher#readme";
description = "Builds a services with docker and caches all of its intermediate stages";
license = stdenv.lib.licenses.bsd3;

}) {};
"dockerfile" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "dockerfile";
version = "0.1.0.1";
sha256 = "294ac0b6c0546da15bf5453d6006979aeb6f6b36f0566be75767f5021de00025";
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
description = "A simple DSL for describing and generating Dockerfile containers in Haskell";
license = stdenv.lib.licenses.mit;

}) {};
"docopt" = callPackage
({
  mkDerivation
, base
, containers
, parsec
, stdenv
, template-haskell
, th-lift
}:
mkDerivation {

pname = "docopt";
version = "0.7.0.5";
sha256 = "15790808a4896bbf0748c1c0f3ab63c07aea4621d95b93a39886813f829d05ee";
enableSeparateDataOutput = true;
libraryHaskellDepends = [
base
containers
parsec
template-haskell
th-lift
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/docopt/docopt.hs";
description = "A command-line interface parser that will make you smile";
license = stdenv.lib.licenses.mit;

}) {};
"doctemplates" = callPackage
({
  mkDerivation
, aeson
, base
, blaze-html
, blaze-markup
, bytestring
, containers
, parsec
, scientific
, stdenv
, text
, unordered-containers
, vector
}:
mkDerivation {

pname = "doctemplates";
version = "0.2.2.1";
sha256 = "6b0cfb565fc7fa90d71ac56b83aedecf670678e6f1441278877fbf399e9bccbf";
enableSeparateDataOutput = true;
libraryHaskellDepends = [
aeson
base
blaze-html
blaze-markup
bytestring
containers
parsec
scientific
text
unordered-containers
vector
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/jgm/doctemplates#readme";
description = "Pandoc-style document templates";
license = stdenv.lib.licenses.bsd3;

}) {};
"doctest" = callPackage
({
  mkDerivation
, base
, base-compat
, code-page
, deepseq
, directory
, filepath
, ghc
, ghc-paths
, process
, stdenv
, syb
, transformers
}:
mkDerivation {

pname = "doctest";
version = "0.13.0";
sha256 = "4bd80a88bd569091ada73b149c31085df1a51c9cb0985612eb73d9856fb5e321";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
base
base-compat
code-page
deepseq
directory
filepath
ghc
ghc-paths
process
syb
transformers
];
executableHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/sol/doctest#readme";
description = "Test interactive Haskell examples";
license = stdenv.lib.licenses.mit;

}) {};
"doctest-discover" = callPackage
({
  mkDerivation
, aeson
, base
, bytestring
, directory
, doctest
, filepath
, stdenv
}:
mkDerivation {

pname = "doctest-discover";
version = "0.1.0.7";
sha256 = "ac6a65da517db7f264e65607a50b080b54f008ba592746ac11b7bb40107fbd70";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
aeson
base
bytestring
directory
doctest
filepath
];
executableHaskellDepends = [
aeson
base
bytestring
directory
doctest
filepath
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/karun012/doctest-discover";
description = "Easy way to run doctests via cabal";
license = stdenv.lib.licenses.publicDomain;

}) {};
"doctest-driver-gen" = callPackage
({
  mkDerivation
, base
, doctest
, stdenv
}:
mkDerivation {

pname = "doctest-driver-gen";
version = "0.2.0.2";
sha256 = "b477668037144711e47f51ef01b823a5fa01424a869bffcde501138ad44e347a";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
base
doctest
];
executableHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/Hexirp/doctest-driver-gen#readme";
description = "Generate driver file for doctest's cabal integration";
license = stdenv.lib.licenses.bsd3;

}) {};
"dom-parser" = callPackage
({
  mkDerivation
, base
, case-insensitive
, containers
, lens
, mtl
, scientific
, semigroups
, stdenv
, text
, transformers
, xml-conduit
, xml-lens
}:
mkDerivation {

pname = "dom-parser";
version = "3.0.0";
sha256 = "49d19767bafbf208380a7f1de6e5b266aa910ce40712a5801bb2b6103adb7490";
libraryHaskellDepends = [
base
case-insensitive
containers
lens
mtl
scientific
semigroups
text
transformers
xml-conduit
xml-lens
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/typeable/dom-parser";
description = "Simple monadic DOM parser";
license = stdenv.lib.licenses.mit;

}) {};
"dotenv" = callPackage
({
  mkDerivation
, base
, base-compat
, directory
, exceptions
, megaparsec
, optparse-applicative
, process
, stdenv
, text
, transformers
, yaml
}:
mkDerivation {

pname = "dotenv";
version = "0.5.2.5";
sha256 = "a197bf60643fc4dea5acd71b03b71cb89e8df91d55cc400b2ada5e79b4b6f4e1";
isLibrary = true;
isExecutable = true;
enableSeparateDataOutput = true;
libraryHaskellDepends = [
base
base-compat
directory
exceptions
megaparsec
process
text
transformers
yaml
];
executableHaskellDepends = [
base
base-compat
megaparsec
optparse-applicative
process
text
transformers
yaml
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/stackbuilders/dotenv-hs";
description = "Loads environment variables from dotenv files";
license = stdenv.lib.licenses.mit;

}) {};
"dotnet-timespan" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "dotnet-timespan";
version = "0.0.1.0";
sha256 = "d8ca8dffbc916ff5139d6f0df4a22c947ab5f996c376f1ab8c2e120789209ac3";
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/YoEight/dotnet-timespan";
description = ".NET TimeSpan";
license = stdenv.lib.licenses.bsd3;

}) {};
"double-conversion" = callPackage
({
  mkDerivation
, base
, bytestring
, ghc-prim
, stdenv
, text
}:
mkDerivation {

pname = "double-conversion";
version = "2.0.2.0";
sha256 = "44cde172395401169e844d6791b6eb0ef2c2e55a08de8dda96551cfe029ba26b";
libraryHaskellDepends = [
base
bytestring
ghc-prim
text
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/bos/double-conversion";
description = "Fast conversion between double precision floating point and text";
license = stdenv.lib.licenses.bsd3;

}) {};
"download" = callPackage
({
  mkDerivation
, base
, bytestring
, feed
, stdenv
, tagsoup
, xml
}:
mkDerivation {

pname = "download";
version = "0.3.2.6";
sha256 = "a06d401a2ca58b6ee494ce462c753939ef0a2d11b4d475ae40848884fb44eef2";
libraryHaskellDepends = [
base
bytestring
feed
tagsoup
xml
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/psibi/download";
description = "High-level file download based on URLs";
license = stdenv.lib.licenses.bsd3;

}) {};
"drawille" = callPackage
({
  mkDerivation
, base
, containers
, stdenv
}:
mkDerivation {

pname = "drawille";
version = "0.1.2.0";
sha256 = "b8188ee87a06c168974c9655188450eb86c331c556decb31cf084efa846237df";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
base
containers
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/yamadapc/haskell-drawille#readme";
description = "A port of asciimoo's drawille to haskell";
license = stdenv.lib.licenses.gpl3;

}) {};
"drifter" = callPackage
({
  mkDerivation
, base
, containers
, fgl
, stdenv
, text
}:
mkDerivation {

pname = "drifter";
version = "0.2.3";
sha256 = "df539d47e47a6064997619079cde28cc0ae039cbda1915cec447380736d92638";
libraryHaskellDepends = [
base
containers
fgl
text
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/AndrewRademacher/drifter";
description = "Simple schema management for arbitrary databases";
license = stdenv.lib.licenses.mit;

}) {};
"drifter-postgresql" = callPackage
({
  mkDerivation
, base
, containers
, drifter
, mtl
, postgresql-simple
, stdenv
, time
, transformers
, transformers-compat
}:
mkDerivation {

pname = "drifter-postgresql";
version = "0.2.1";
sha256 = "93320177ec9aab96799623ccc274f5b069500587f002f5f415c24159dd6eed5c";
libraryHaskellDepends = [
base
containers
drifter
mtl
postgresql-simple
time
transformers
transformers-compat
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/michaelxavier/drifter-postgresql";
description = "PostgreSQL support for the drifter schema migration tool";
license = stdenv.lib.licenses.mit;

}) {};
"dsp" = callPackage
({
  mkDerivation
, array
, base
, containers
, random
, stdenv
}:
mkDerivation {

pname = "dsp";
version = "0.2.4";
sha256 = "fee4dff51d372ae9fd7ceaa0b885b1dfdf396ebddbc56076a529ecdf95589b2f";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
array
base
containers
random
];
doHaddock = false;
doCheck = false;
homepage = "http://www.haskell.org/haskellwiki/DSP";
description = "Haskell Digital Signal Processing";
license = "GPL";

}) {};
"dublincore-xml-conduit" = callPackage
({
  mkDerivation
, base
, conduit
, conduit-combinators
, safe-exceptions
, stdenv
, text
, time
, timerep
, uri-bytestring
, xml-conduit
, xml-types
}:
mkDerivation {

pname = "dublincore-xml-conduit";
version = "0.1.0.2";
sha256 = "d47a8dcb21d1866f0229168d11d1da136da3028a2f4252bee61d219988f45f9e";
libraryHaskellDepends = [
base
conduit
conduit-combinators
safe-exceptions
text
time
timerep
uri-bytestring
xml-conduit
xml-types
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/k0ral/dublincore-xml-conduit";
description = "XML streaming parser/renderer for the Dublin Core standard elements";
license = stdenv.lib.licenses.publicDomain;

}) {};
"dvorak" = callPackage
({
  mkDerivation
, base
, containers
, stdenv
}:
mkDerivation {

pname = "dvorak";
version = "0.1.0.0";
sha256 = "afc8ba89415a01039ccdc719b875826b6b12befb4a6a97bcd7544f22eaffb6cf";
libraryHaskellDepends = [
base
containers
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/kvanberendonck/codec-dvorak";
description = "Dvorak encoding for Haskell";
license = stdenv.lib.licenses.bsd3;

}) {};
"dynamic-state" = callPackage
({
  mkDerivation
, base
, binary
, bytestring
, hashable
, stdenv
, unordered-containers
}:
mkDerivation {

pname = "dynamic-state";
version = "0.3";
sha256 = "bb62799b08f981a1c8ddcbb349a2b87381439d574a9669cf0bbc829bb63f4929";
libraryHaskellDepends = [
base
binary
bytestring
hashable
unordered-containers
];
doHaddock = false;
doCheck = false;
description = "Optionally serializable dynamic state keyed by type";
license = stdenv.lib.licenses.gpl2;

}) {};
"dyre" = callPackage
({
  mkDerivation
, base
, binary
, directory
, executable-path
, filepath
, ghc-paths
, io-storage
, process
, stdenv
, time
, unix
, xdg-basedir
}:
mkDerivation {

pname = "dyre";
version = "0.8.12";
sha256 = "e224305cc6b38b4143f49489931c2ea94b326915206d34eddf5b2ee2b5a71682";
libraryHaskellDepends = [
base
binary
directory
executable-path
filepath
ghc-paths
io-storage
process
time
unix
xdg-basedir
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/willdonnelly/dyre";
description = "Dynamic reconfiguration in Haskell";
license = stdenv.lib.licenses.bsd3;

}) {};
"easy-file" = callPackage
({
  mkDerivation
, base
, directory
, filepath
, stdenv
, time
, unix
}:
mkDerivation {

pname = "easy-file";
version = "0.2.2";
sha256 = "52f52e72ba48d60935932401c233a72bf45c582871238aecc5a18021ce67b47e";
libraryHaskellDepends = [
base
directory
filepath
time
unix
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/kazu-yamamoto/easy-file";
description = "Cross-platform File handling";
license = stdenv.lib.licenses.bsd3;

}) {};
"echo" = callPackage
({
  mkDerivation
, base
, process
, stdenv
}:
mkDerivation {

pname = "echo";
version = "0.1.3";
sha256 = "704f07310f8272d170f8ab7fb2a2c13f15d8501ef8310801e36964c8eff485ef";
revision = "1";
editedCabalFile = "0br8wfiybcw5hand4imiw0i5hacdmrax1dv8g95f35gazffbx42l";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
base
process
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/RyanGlScott/echo";
description = "A cross-platform, cross-console way to handle echoing terminal input";
license = stdenv.lib.licenses.bsd3;

}) {};
"ed25519" = callPackage
({
  mkDerivation
, base
, bytestring
, ghc-prim
, stdenv
}:
mkDerivation {

pname = "ed25519";
version = "0.0.5.0";
sha256 = "d8a5958ebfa9309790efade64275dc5c441b568645c45ceed1b0c6ff36d6156d";
revision = "2";
editedCabalFile = "1cq6h3jqkb1kvd9fjfhsllg5gq78sdiyf2gy9862xhlbv6wil19f";
libraryHaskellDepends = [
base
bytestring
ghc-prim
];
doHaddock = false;
doCheck = false;
homepage = "http://thoughtpolice.github.com/hs-ed25519";
description = "Ed25519 cryptographic signatures";
license = stdenv.lib.licenses.mit;

}) {};
"edit-distance" = callPackage
({
  mkDerivation
, array
, base
, containers
, random
, stdenv
}:
mkDerivation {

pname = "edit-distance";
version = "0.2.2.1";
sha256 = "3e8885ee2f56ad4da940f043ae8f981ee2fe336b5e8e4ba3f7436cff4f526c4a";
revision = "1";
editedCabalFile = "1vjn4ryzdilz7l1ad7czh11nw48h5mj8if7ij3q0mmc3sffa8csd";
libraryHaskellDepends = [
array
base
containers
random
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/phadej/edit-distance";
description = "Levenshtein and restricted Damerau-Levenshtein edit distances";
license = stdenv.lib.licenses.bsd3;

}) {};
"edit-distance-vector" = callPackage
({
  mkDerivation
, base
, stdenv
, vector
}:
mkDerivation {

pname = "edit-distance-vector";
version = "1.0.0.4";
sha256 = "b7dfddd86d315ef1b0c86415f321efc04b4a1b47a7b13edafc73a6e81b620f1f";
libraryHaskellDepends = [
base
vector
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/thsutton/edit-distance-vector";
description = "Calculate edit distances and edit scripts between vectors";
license = stdenv.lib.licenses.bsd3;

}) {};
"editor-open" = callPackage
({
  mkDerivation
, base
, bytestring
, conduit
, conduit-extra
, directory
, process
, resourcet
, stdenv
, temporary
, transformers
, unix
}:
mkDerivation {

pname = "editor-open";
version = "0.6.0.0";
sha256 = "2fc5d19bce2d477935202a5a4522671529d0352a0ee28be1307f8ab391065265";
isLibrary = true;
isExecutable = true;
enableSeparateDataOutput = true;
libraryHaskellDepends = [
base
bytestring
conduit
conduit-extra
directory
process
resourcet
temporary
transformers
unix
];
executableHaskellDepends = [
base
bytestring
conduit
conduit-extra
resourcet
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/pharpend/editor-open";
description = "Open the user's $VISUAL or $EDITOR for text input";
license = stdenv.lib.licenses.asl20;

}) {};
"either" = callPackage
({
  mkDerivation
, base
, bifunctors
, mtl
, profunctors
, semigroupoids
, semigroups
, stdenv
}:
mkDerivation {

pname = "either";
version = "5";
sha256 = "75cee27641a34f80e6c71f82469a76c7f51d23a522e792e2733269ebf7cbf420";
libraryHaskellDepends = [
base
bifunctors
mtl
profunctors
semigroupoids
semigroups
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/ekmett/either/";
description = "Combinators for working with sums";
license = stdenv.lib.licenses.bsd3;

}) {};
"either-unwrap" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "either-unwrap";
version = "1.1";
sha256 = "ccabd6f87118abc8dcba481b316c76b8195ac9e8a8f3ddb478de5eb64e2d2e3c";
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/gcross/either-unwrap";
description = "Functions for probing and unwrapping values inside of Either";
license = stdenv.lib.licenses.bsd3;

}) {};
"ekg" = callPackage
({
  mkDerivation
, aeson
, base
, bytestring
, ekg-core
, ekg-json
, filepath
, network
, snap-core
, snap-server
, stdenv
, text
, time
, transformers
, unordered-containers
}:
mkDerivation {

pname = "ekg";
version = "0.4.0.15";
sha256 = "482ae3be495cfe4f03332ad1c79ce8b5ad4f9c8eec824980c664808ae32c6dcc";
revision = "2";
editedCabalFile = "0dn8xysffy7pgz88h4h6lpjpl5n978dm3yxlzyxbk2k1byhzzx7d";
enableSeparateDataOutput = true;
libraryHaskellDepends = [
aeson
base
bytestring
ekg-core
ekg-json
filepath
network
snap-core
snap-server
text
time
transformers
unordered-containers
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/tibbe/ekg";
description = "Remote monitoring of processes";
license = stdenv.lib.licenses.bsd3;

}) {};
"ekg-core" = callPackage
({
  mkDerivation
, base
, containers
, ghc-prim
, stdenv
, text
, unordered-containers
}:
mkDerivation {

pname = "ekg-core";
version = "0.1.1.4";
sha256 = "66d89acca05c1c91dc57a9c4b3f62d25ccd0c04bb2bfd46d5947f9b8cd8ee937";
revision = "1";
editedCabalFile = "01hp42jjp1cg8z692xahbwlv4x521pdxhyd8d89fjdkvccf8gvnk";
libraryHaskellDepends = [
base
containers
ghc-prim
text
unordered-containers
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/tibbe/ekg-core";
description = "Tracking of system metrics";
license = stdenv.lib.licenses.bsd3;

}) {};
"ekg-json" = callPackage
({
  mkDerivation
, aeson
, base
, ekg-core
, stdenv
, text
, unordered-containers
}:
mkDerivation {

pname = "ekg-json";
version = "0.1.0.6";
sha256 = "1e6a80aa0a28bbf41c9c6364cbb5731160d14fa54145f27a82d0b3467a04dd47";
revision = "2";
editedCabalFile = "02lx17l8dch793n83dgalv2r77nrlcj6k4xgpxaxzwr3nyprk2vj";
libraryHaskellDepends = [
aeson
base
ekg-core
text
unordered-containers
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/tibbe/ekg-json";
description = "JSON encoding of ekg metrics";
license = stdenv.lib.licenses.bsd3;

}) {};
"ekg-statsd" = callPackage
({
  mkDerivation
, base
, bytestring
, ekg-core
, network
, stdenv
, text
, time
, unordered-containers
}:
mkDerivation {

pname = "ekg-statsd";
version = "0.2.3.0";
sha256 = "aeead4a98b467a5fcdbd0646db583843ec14a8985f1a1fbf45cf5c0d969f8a16";
revision = "1";
editedCabalFile = "1k4sndkjg1prvzhiii9gcgkx8zfkk9c4nf548x0hrbmj1laj8d62";
libraryHaskellDepends = [
base
bytestring
ekg-core
network
text
time
unordered-containers
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/tibbe/ekg-statsd";
description = "Push metrics to statsd";
license = stdenv.lib.licenses.bsd3;

}) {};
"ekg-wai" = callPackage
({
  mkDerivation
, aeson
, base
, bytestring
, ekg-core
, ekg-json
, filepath
, http-types
, network
, stdenv
, text
, time
, transformers
, unordered-containers
, wai
, wai-app-static
, warp
}:
mkDerivation {

pname = "ekg-wai";
version = "0.1.0.3";
sha256 = "bfd35917b663da0c1354339dd30837eee6ddf0d42cf57442fd916a42c977a2e9";
revision = "1";
editedCabalFile = "0crcpwrnh1pi5n4dlp9cwminj1gls9ywm4fgvisafh480097b100";
enableSeparateDataOutput = true;
libraryHaskellDepends = [
aeson
base
bytestring
ekg-core
ekg-json
filepath
http-types
network
text
time
transformers
unordered-containers
wai
wai-app-static
warp
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/tvh/ekg-wai";
description = "Remote monitoring of processes";
license = stdenv.lib.licenses.bsd3;

}) {};
"elerea" = callPackage
({
  mkDerivation
, base
, containers
, stdenv
, transformers
, transformers-base
}:
mkDerivation {

pname = "elerea";
version = "2.9.0";
sha256 = "901221660b32597803b20fe2e78bb6f1f60f064d04671fb3f0baa05c87446681";
libraryHaskellDepends = [
base
containers
transformers
transformers-base
];
doHaddock = false;
doCheck = false;
description = "A minimalistic FRP library";
license = stdenv.lib.licenses.bsd3;

}) {};
"eliminators" = callPackage
({
  mkDerivation
, base
, extra
, singleton-nats
, singletons
, stdenv
, template-haskell
, th-abstraction
, th-desugar
}:
mkDerivation {

pname = "eliminators";
version = "0.3";
sha256 = "b6a2352a9a0d388618c220b627484385535b6a6a8fcdabc0a785028cdba8a2f4";
libraryHaskellDepends = [
base
extra
singleton-nats
singletons
template-haskell
th-abstraction
th-desugar
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/RyanGlScott/eliminators";
description = "Dependently typed elimination functions using singletons";
license = stdenv.lib.licenses.bsd3;

}) {};
"elm-core-sources" = callPackage
({
  mkDerivation
, base
, bytestring
, containers
, file-embed
, stdenv
, template-haskell
}:
mkDerivation {

pname = "elm-core-sources";
version = "1.0.0";
sha256 = "a403505d50cd6ff0d21243db55c6decc6dde14b88a6a393e2b6243f09f6620fb";
libraryHaskellDepends = [
base
bytestring
containers
file-embed
template-haskell
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/JoeyEremondi/elm-build-lib";
description = "Source files for the Elm runtime and standard libraries";
license = stdenv.lib.licenses.bsd3;

}) {};
"elm-export" = callPackage
({
  mkDerivation
, base
, bytestring
, containers
, directory
, formatting
, mtl
, stdenv
, text
, time
, wl-pprint-text
}:
mkDerivation {

pname = "elm-export";
version = "0.6.0.1";
sha256 = "bf9862015918c72b54b421efcd9d858969dcd94ef0a3d0cb92d9bc0c4363f9d5";
libraryHaskellDepends = [
base
bytestring
containers
directory
formatting
mtl
text
time
wl-pprint-text
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/krisajenkins/elm-export";
description = "A library to generate Elm types from Haskell source";
license = "unknown";

}) {};
"elm-export-persistent" = callPackage
({
  mkDerivation
, aeson
, base
, elm-export
, persistent
, scientific
, stdenv
, text
, unordered-containers
}:
mkDerivation {

pname = "elm-export-persistent";
version = "0.2.0";
sha256 = "2cc7ab8a55465ff476b97aea0ffaaba384ccbe282d7e9f13c228dcb2d5397e25";
libraryHaskellDepends = [
aeson
base
elm-export
persistent
scientific
text
unordered-containers
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/jb55/elm-export-persistent";
description = "elm-export persistent entities";
license = stdenv.lib.licenses.mit;

}) {};
"email-validate" = callPackage
({
  mkDerivation
, attoparsec
, base
, bytestring
, stdenv
, template-haskell
}:
mkDerivation {

pname = "email-validate";
version = "2.3.2.5";
sha256 = "7b4ff4e89eccc073df2f51e9d20d507ba1a6d4f5746130c712844c7cf8674e4c";
libraryHaskellDepends = [
attoparsec
base
bytestring
template-haskell
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/Porges/email-validate-hs";
description = "Email address validation";
license = stdenv.lib.licenses.bsd3;

}) {};
"emailaddress" = callPackage
({
  mkDerivation
, aeson
, base
, bifunctors
, bytestring
, email-validate
, http-api-data
, opaleye
, path-pieces
, persistent
, postgresql-simple
, product-profunctors
, profunctors
, stdenv
, text
}:
mkDerivation {

pname = "emailaddress";
version = "0.2.0.0";
sha256 = "390b0aaf8fa2d3a694b812ad83fc0f26ed5c7172cc318a7d46c1fc3456d9c15c";
libraryHaskellDepends = [
aeson
base
bifunctors
bytestring
email-validate
http-api-data
opaleye
path-pieces
persistent
postgresql-simple
product-profunctors
profunctors
text
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/cdepillabout/emailaddress#readme";
description = "Wrapper around email-validate library adding instances for common type classes";
license = stdenv.lib.licenses.bsd3;

}) {};
"enclosed-exceptions" = callPackage
({
  mkDerivation
, base
, deepseq
, lifted-base
, monad-control
, stdenv
, transformers
, transformers-base
}:
mkDerivation {

pname = "enclosed-exceptions";
version = "1.0.2";
sha256 = "7b9beab82d219c0dd879dfdef70fb74a4a7595b4dbd0baf7adb12cdbbe8189f1";
revision = "1";
editedCabalFile = "0rjm8g2bm9a7qzklkp0rh5az4qh8nsl0hl119gjik671knygkdj0";
libraryHaskellDepends = [
base
deepseq
lifted-base
monad-control
transformers
transformers-base
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/jcristovao/enclosed-exceptions";
description = "Catching all exceptions from within an enclosed computation";
license = stdenv.lib.licenses.mit;

}) {};
"entropy" = callPackage
({
  mkDerivation
, base
, bytestring
, Cabal
, directory
, filepath
, process
, stdenv
, unix
}:
mkDerivation {

pname = "entropy";
version = "0.3.8";
sha256 = "743a49d5e17ae9d6118ff077f2cd2d5944c0ea6cff501efeec95b68d5f7474d0";
setupHaskellDepends = [
base
Cabal
directory
filepath
process
];
libraryHaskellDepends = [
base
bytestring
unix
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/TomMD/entropy";
description = "A platform independent entropy source";
license = stdenv.lib.licenses.bsd3;

}) {};
"enummapset" = callPackage
({
  mkDerivation
, base
, containers
, deepseq
, semigroups
, stdenv
}:
mkDerivation {

pname = "enummapset";
version = "0.5.2.2";
sha256 = "792fdbdf387de02580accb3ad49a6f5191b24eb2283ef141355eacfd328cce74";
libraryHaskellDepends = [
base
containers
deepseq
semigroups
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/michalt/enummapset";
description = "IntMap and IntSet with Enum keys/elements";
license = stdenv.lib.licenses.bsd3;

}) {};
"enumset" = callPackage
({
  mkDerivation
, base
, data-accessor
, semigroups
, stdenv
, storable-record
}:
mkDerivation {

pname = "enumset";
version = "0.0.4.1";
sha256 = "5f9d115f7f2b2d4dba290f9d62cd7e9f52f6f6f8235ac5ed9bbf6e982a51d054";
libraryHaskellDepends = [
base
data-accessor
semigroups
storable-record
];
doHaddock = false;
doCheck = false;
description = "Sets of enumeration values represented by machine words";
license = stdenv.lib.licenses.bsd3;

}) {};
"envelope" = callPackage
({
  mkDerivation
, aeson
, base
, http-api-data
, mtl
, stdenv
, text
}:
mkDerivation {

pname = "envelope";
version = "0.2.2.0";
sha256 = "cf4d6fe3f906e859ec3c16684a8dafb349e77f0fa4f21b7090ca33e707867ef9";
libraryHaskellDepends = [
aeson
base
http-api-data
mtl
text
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/cdepillabout/envelope#readme";
description = "Defines generic 'Envelope' type to wrap reponses from a JSON API";
license = stdenv.lib.licenses.bsd3;

}) {};
"envparse" = callPackage
({
  mkDerivation
, base
, containers
, stdenv
}:
mkDerivation {

pname = "envparse";
version = "0.4";
sha256 = "bf9dd7cd0ed3c38f63ea45cbb496b58ad3d83022b5eab5a66bfeebec5982803d";
libraryHaskellDepends = [
base
containers
];
doHaddock = false;
doCheck = false;
homepage = "https://supki.github.io/envparse";
description = "Parse environment variables";
license = stdenv.lib.licenses.bsd3;

}) {};
"envy" = callPackage
({
  mkDerivation
, base
, bytestring
, containers
, mtl
, stdenv
, text
, time
, transformers
}:
mkDerivation {

pname = "envy";
version = "1.5.0.0";
sha256 = "cdc099b3ae0c61007d07642c8e4811d29dfe3977b49595e21e03a1e29f741fbf";
libraryHaskellDepends = [
base
bytestring
containers
mtl
text
time
transformers
];
doHaddock = false;
doCheck = false;
description = "An environmentally friendly way to deal with environment variables";
license = stdenv.lib.licenses.bsd3;

}) {};
"epub-metadata" = callPackage
({
  mkDerivation
, base
, bytestring
, containers
, directory
, filepath
, hxt
, mtl
, regex-compat-tdfa
, stdenv
, utf8-string
, zip-archive
}:
mkDerivation {

pname = "epub-metadata";
version = "4.5";
sha256 = "19ae3914df5936908c8d7264ae5f1e310262fa06bd7e4390838892840e4c0349";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
base
bytestring
containers
directory
filepath
hxt
mtl
regex-compat-tdfa
utf8-string
zip-archive
];
executableHaskellDepends = [
base
mtl
];
doHaddock = false;
doCheck = false;
homepage = "http://hub.darcs.net/dino/epub-metadata";
description = "Library for parsing epub document metadata";
license = stdenv.lib.licenses.bsd3;

}) {};
"eq" = callPackage
({
  mkDerivation
, base
, semigroupoids
, stdenv
}:
mkDerivation {

pname = "eq";
version = "4.1";
sha256 = "16dc3d9f99f077f0c851abca4efeb454c4c23669586037ab8c861df5b6ed6182";
libraryHaskellDepends = [
base
semigroupoids
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/ekmett/eq/";
description = "Leibnizian equality";
license = stdenv.lib.licenses.bsd3;

}) {};
"equal-files" = callPackage
({
  mkDerivation
, base
, bytestring
, explicit-exception
, filemanip
, stdenv
, transformers
, utility-ht
}:
mkDerivation {

pname = "equal-files";
version = "0.0.5.3";
sha256 = "e5b785c286c557c57dba7107d913b220781aa2549ba4b7685da494b20a0172aa";
isLibrary = false;
isExecutable = true;
executableHaskellDepends = [
base
bytestring
explicit-exception
filemanip
transformers
utility-ht
];
doHaddock = false;
doCheck = false;
homepage = "http://code.haskell.org/~thielema/equal-files/";
description = "Shell command for finding equal files";
license = "GPL";

}) {};
"equivalence" = callPackage
({
  mkDerivation
, base
, containers
, mtl
, stdenv
, STMonadTrans
, transformers
, transformers-compat
}:
mkDerivation {

pname = "equivalence";
version = "0.3.2";
sha256 = "7da21ed5f980caa18c995190dd527c69822050390e4237c92f1acbed7d5b0529";
revision = "1";
editedCabalFile = "010n0gpk2rpninggdnnx0j7fys6hzn80s789b16iw0a55h4z0gn8";
libraryHaskellDepends = [
base
containers
mtl
STMonadTrans
transformers
transformers-compat
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/pa-ba/equivalence";
description = "Maintaining an equivalence relation implemented as union-find using STT";
license = stdenv.lib.licenses.bsd3;

}) {};
"erf" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "erf";
version = "2.0.0.0";
sha256 = "24f0b79c7e1d25cb2cd44c2258d7a464bf6db8079775b50b60b54a254616b337";
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
description = "The error function, erf, and related functions";
license = stdenv.lib.licenses.bsd3;

}) {};
"error-util" = callPackage
({
  mkDerivation
, base
, stdenv
, transformers
}:
mkDerivation {

pname = "error-util";
version = "0.0.1.2";
sha256 = "df1916a2de007697b7b1a9f83eacab4588d8dc472fd0f21395dce83b085e4e06";
libraryHaskellDepends = [
base
transformers
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/pmlodawski/error-util";
description = "Set of utils and operators for error handling";
license = stdenv.lib.licenses.mit;

}) {};
"errors" = callPackage
({
  mkDerivation
, base
, exceptions
, safe
, stdenv
, text
, transformers
, transformers-compat
, unexceptionalio
}:
mkDerivation {

pname = "errors";
version = "2.2.5";
sha256 = "e917ca560c5573d792483677fa5ad30d9d1923d21361ce24879cb51e6fbc735c";
libraryHaskellDepends = [
base
exceptions
safe
text
transformers
transformers-compat
unexceptionalio
];
doHaddock = false;
doCheck = false;
description = "Simplified error-handling";
license = stdenv.lib.licenses.bsd3;

}) {};
"errors-ext" = callPackage
({
  mkDerivation
, base
, errors
, exceptions
, monad-control
, mtl
, stdenv
, transformers
}:
mkDerivation {

pname = "errors-ext";
version = "0.4.1";
sha256 = "b0ac78b09e0d5b856e91bfc59a2d91aef487807a2bbd1f562575e235df459ef6";
libraryHaskellDepends = [
base
errors
exceptions
monad-control
mtl
transformers
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/A1-Triard/errors-ext#readme";
description = "`bracket`-like functions for `ExceptT` over `IO` monad";
license = stdenv.lib.licenses.asl20;

}) {};
"ersatz" = callPackage
({
  mkDerivation
, array
, attoparsec
, base
, bytestring
, Cabal
, cabal-doctest
, containers
, data-default
, lens
, mtl
, parsec
, process
, semigroups
, stdenv
, temporary
, transformers
, unordered-containers
}:
mkDerivation {

pname = "ersatz";
version = "0.4.2";
sha256 = "aecf2d0c0dc413b52b2eadf4f75de76f72367db699086222787f65f0b93224e7";
revision = "1";
editedCabalFile = "098i7593rlc81618y1cz6bmsp2y0vlimz8hnqlzja4m8mclfsbx2";
isLibrary = true;
isExecutable = true;
enableSeparateDataOutput = true;
setupHaskellDepends = [
base
Cabal
cabal-doctest
];
libraryHaskellDepends = [
array
attoparsec
base
bytestring
containers
data-default
lens
mtl
process
semigroups
temporary
transformers
unordered-containers
];
executableHaskellDepends = [
array
base
containers
lens
mtl
parsec
semigroups
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/ekmett/ersatz";
description = "A monad for expressing SAT or QSAT problems using observable sharing";
license = stdenv.lib.licenses.bsd3;

}) {};
"ether" = callPackage
({
  mkDerivation
, base
, exceptions
, mmorph
, monad-control
, mtl
, reflection
, stdenv
, tagged
, template-haskell
, transformers
, transformers-base
, transformers-lift
, writer-cps-mtl
}:
mkDerivation {

pname = "ether";
version = "0.5.1.0";
sha256 = "36980c9598c5e8e804695da3b966416a2221296022b39be437ec35263ea10085";
revision = "1";
editedCabalFile = "01q86w79xswdkq08m375xwfqjgix6bzbc4lpxz4phqvzf38lc8i5";
libraryHaskellDepends = [
base
exceptions
mmorph
monad-control
mtl
reflection
tagged
template-haskell
transformers
transformers-base
transformers-lift
writer-cps-mtl
];
doHaddock = false;
doCheck = false;
homepage = "https://int-index.github.io/ether/";
description = "Monad transformers and classes";
license = stdenv.lib.licenses.bsd3;

}) {};
"euler-tour-tree" = callPackage
({
  mkDerivation
, base
, containers
, fingertree
, mtl
, parser-combinators
, stdenv
, transformers
, Unique
}:
mkDerivation {

pname = "euler-tour-tree";
version = "0.1.0.1";
sha256 = "e42feac8cc982454ddfc3c82c124936cfa2d2a545ac0de437a8e669152d1dd89";
libraryHaskellDepends = [
base
containers
fingertree
mtl
parser-combinators
transformers
Unique
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/k0ral/euler-tour-tree";
description = "Euler tour trees";
license = stdenv.lib.licenses.publicDomain;

}) {};
"event" = callPackage
({
  mkDerivation
, base
, containers
, semigroups
, stdenv
, transformers
}:
mkDerivation {

pname = "event";
version = "0.1.4";
sha256 = "6791d1402b4d77a11407ab592f65cb61ee60c5a80b99751c5d775afcc9d1824a";
libraryHaskellDepends = [
base
containers
semigroups
transformers
];
doHaddock = false;
doCheck = false;
description = "Monoidal, monadic and first-class events";
license = stdenv.lib.licenses.bsd3;

}) {};
"event-list" = callPackage
({
  mkDerivation
, base
, non-negative
, QuickCheck
, semigroups
, stdenv
, transformers
, utility-ht
}:
mkDerivation {

pname = "event-list";
version = "0.1.2";
sha256 = "624e30b876e0acdaea895efbb2000bbbec2d5be0743ecac9805655ae634af89c";
libraryHaskellDepends = [
base
non-negative
QuickCheck
semigroups
transformers
utility-ht
];
doHaddock = false;
doCheck = false;
homepage = "http://code.haskell.org/~thielema/event-list/";
description = "Event lists with relative or absolute time stamps";
license = "GPL";

}) {};
"eventful-core" = callPackage
({
  mkDerivation
, aeson
, base
, containers
, contravariant
, http-api-data
, path-pieces
, stdenv
, sum-type-boilerplate
, template-haskell
, text
, transformers
, uuid
}:
mkDerivation {

pname = "eventful-core";
version = "0.2.0";
sha256 = "e0f55e7498d8e48232ce2d5194c69f635beaeb322cb64753766076d7b35c9019";
libraryHaskellDepends = [
aeson
base
containers
contravariant
http-api-data
path-pieces
sum-type-boilerplate
template-haskell
text
transformers
uuid
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/jdreaver/eventful#readme";
description = "Core module for eventful";
license = stdenv.lib.licenses.mit;

}) {};
"eventful-memory" = callPackage
({
  mkDerivation
, base
, containers
, eventful-core
, mtl
, safe
, stdenv
, stm
}:
mkDerivation {

pname = "eventful-memory";
version = "0.2.0";
sha256 = "6a7c3e0a12e3c4e572927929020ad92075933e5d3c66ea61ff615a3ac217adb9";
libraryHaskellDepends = [
base
containers
eventful-core
mtl
safe
stm
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/jdreaver/eventful#readme";
description = "In-memory implementations for eventful";
license = stdenv.lib.licenses.mit;

}) {};
"eventful-postgresql" = callPackage
({
  mkDerivation
, aeson
, base
, bytestring
, eventful-core
, eventful-sql-common
, mtl
, persistent
, stdenv
, text
}:
mkDerivation {

pname = "eventful-postgresql";
version = "0.2.0";
sha256 = "6be868f5b2aabd02c33ae90e463c1a5c938b2db14e0d1c30a1de32c83c725e17";
libraryHaskellDepends = [
aeson
base
bytestring
eventful-core
eventful-sql-common
mtl
persistent
text
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/jdreaver/eventful#readme";
description = "Postgres implementations for eventful";
license = stdenv.lib.licenses.mit;

}) {};
"eventful-sql-common" = callPackage
({
  mkDerivation
, aeson
, base
, bytestring
, eventful-core
, mtl
, persistent
, persistent-template
, stdenv
, text
, uuid
}:
mkDerivation {

pname = "eventful-sql-common";
version = "0.2.0";
sha256 = "a46ea18cbbb5bd04b3a6846273e8161b7e4208660d0abf5a401192b07636aebc";
libraryHaskellDepends = [
aeson
base
bytestring
eventful-core
mtl
persistent
persistent-template
text
uuid
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/jdreaver/eventful#readme";
description = "Common library for SQL event stores";
license = stdenv.lib.licenses.mit;

}) {};
"eventful-sqlite" = callPackage
({
  mkDerivation
, aeson
, base
, bytestring
, eventful-core
, eventful-sql-common
, mtl
, persistent
, stdenv
, text
, uuid
}:
mkDerivation {

pname = "eventful-sqlite";
version = "0.2.0";
sha256 = "c0bbea0ebd1f0a4891a74b190f499caf85ac026f49b9401fc76f181b0041dfef";
libraryHaskellDepends = [
aeson
base
bytestring
eventful-core
eventful-sql-common
mtl
persistent
text
uuid
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/jdreaver/eventful#readme";
description = "SQLite implementations for eventful";
license = stdenv.lib.licenses.mit;

}) {};
"eventful-test-helpers" = callPackage
({
  mkDerivation
, aeson
, aeson-casing
, base
, eventful-core
, extra
, hspec
, monad-logger
, stdenv
, text
}:
mkDerivation {

pname = "eventful-test-helpers";
version = "0.2.0";
sha256 = "a99f9d0cde3926add542c4fc59e079da7d71f2b40e2251b7d79777585c4ebfe0";
libraryHaskellDepends = [
aeson
aeson-casing
base
eventful-core
extra
hspec
monad-logger
text
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/jdreaver/eventful#readme";
description = "Common module used for eventful tests";
license = stdenv.lib.licenses.mit;

}) {};
"eventsource-api" = callPackage
({
  mkDerivation
, aeson
, base
, bytestring
, containers
, enclosed-exceptions
, lifted-async
, lifted-base
, monad-control
, monad-loops
, mtl
, stdenv
, stm
, stm-chans
, string-conversions
, text
, transformers-base
, unordered-containers
, uuid
}:
mkDerivation {

pname = "eventsource-api";
version = "1.3.0";
sha256 = "7d8d4635e0ba35f2bbeb7c4bd6007cc3cb5310a29ef9114a0a83aeed1b9061f7";
libraryHaskellDepends = [
aeson
base
bytestring
containers
enclosed-exceptions
lifted-async
lifted-base
monad-control
monad-loops
mtl
stm
stm-chans
string-conversions
text
transformers-base
unordered-containers
uuid
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/YoEight/eventsource-api#readme";
description = "Provides an eventsourcing high level API";
license = stdenv.lib.licenses.bsd3;

}) {};
"eventsource-geteventstore-store" = callPackage
({
  mkDerivation
, aeson
, base
, eventsource-api
, eventstore
, mtl
, stdenv
, string-conversions
, transformers-base
}:
mkDerivation {

pname = "eventsource-geteventstore-store";
version = "1.1.0";
sha256 = "2336d8e3dd3585d62c015d0c9f16f5cc61b1be5e63258adbac3eb23d4c535103";
libraryHaskellDepends = [
aeson
base
eventsource-api
eventstore
mtl
string-conversions
transformers-base
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/YoEight/eventsource-api#readme";
description = "GetEventStore store implementation";
license = stdenv.lib.licenses.bsd3;

}) {};
"eventsource-store-specs" = callPackage
({
  mkDerivation
, aeson
, async
, base
, eventsource-api
, mtl
, stdenv
, tasty
, tasty-hspec
, text
, transformers-base
, uuid
}:
mkDerivation {

pname = "eventsource-store-specs";
version = "1.1.1";
sha256 = "9158dc5915ca75880a17beffd70397e4bebca1d50685eb7f536a3f967cd244dd";
libraryHaskellDepends = [
aeson
async
base
eventsource-api
mtl
tasty
tasty-hspec
text
transformers-base
uuid
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/YoEight/eventsource-api#readme";
description = "Provides common test specification for Store implementation";
license = stdenv.lib.licenses.bsd3;

}) {};
"eventsource-stub-store" = callPackage
({
  mkDerivation
, async
, base
, containers
, eventsource-api
, mtl
, stdenv
, stm
, transformers-base
}:
mkDerivation {

pname = "eventsource-stub-store";
version = "1.0.3";
sha256 = "5cc05008be4ad90a7d849f5e1e494070480a520fd76871b57e6b4051c5b07a8b";
libraryHaskellDepends = [
async
base
containers
eventsource-api
mtl
stm
transformers-base
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/YoEight/eventsource-api#readme";
description = "An in-memory stub store implementation";
license = stdenv.lib.licenses.bsd3;

}) {};
"eventstore" = callPackage
({
  mkDerivation
, aeson
, array
, base
, bifunctors
, bytestring
, cereal
, clock
, connection
, containers
, dns
, dotnet-timespan
, ekg-core
, exceptions
, fast-logger
, hashable
, http-client
, interpolate
, lifted-async
, lifted-base
, machines
, monad-control
, monad-logger
, mono-traversable
, mtl
, protobuf
, random
, safe-exceptions
, semigroups
, stdenv
, stm
, stm-chans
, text
, time
, transformers-base
, unordered-containers
, uuid
}:
mkDerivation {

pname = "eventstore";
version = "1.1.3";
sha256 = "bf3bc69f5631b5c0f1946a5bf4050da0640b22de57c185719c846faa95efd71c";
libraryHaskellDepends = [
aeson
array
base
bifunctors
bytestring
cereal
clock
connection
containers
dns
dotnet-timespan
ekg-core
exceptions
fast-logger
hashable
http-client
interpolate
lifted-async
lifted-base
machines
monad-control
monad-logger
mono-traversable
mtl
protobuf
random
safe-exceptions
semigroups
stm
stm-chans
text
time
transformers-base
unordered-containers
uuid
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/YoEight/eventstore#readme";
description = "EventStore TCP Client";
license = stdenv.lib.licenses.bsd3;
platforms = [
"x86_64-darwin"
"x86_64-linux"
];

}) {};
"every" = callPackage
({
  mkDerivation
, async
, base
, stdenv
, stm
}:
mkDerivation {

pname = "every";
version = "0.0.1";
sha256 = "5d0ff0e4cefb094c44b55defa283146b16b925722a2eb244a5ef4364737980e5";
libraryHaskellDepends = [
async
base
stm
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/athanclark/every#readme";
description = "Run a process every so often";
license = stdenv.lib.licenses.bsd3;

}) {};
"exact-combinatorics" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "exact-combinatorics";
version = "0.2.0.8";
sha256 = "32a822b109ab6e9f62fe23d76bd5af593c20ba0e589005d3985ccda00dd4475e";
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
homepage = "http://code.haskell.org/~wren/";
description = "Efficient exact computation of combinatoric functions";
license = stdenv.lib.licenses.bsd3;

}) {};
"exact-pi" = callPackage
({
  mkDerivation
, base
, numtype-dk
, semigroups
, stdenv
}:
mkDerivation {

pname = "exact-pi";
version = "0.4.1.3";
sha256 = "4e9e87c653aa619b92e0f7c8e7d737cdc2610f0804bf619b47786165be972ce4";
libraryHaskellDepends = [
base
numtype-dk
semigroups
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/dmcclean/exact-pi/";
description = "Exact rational multiples of pi (and integer powers of pi)";
license = stdenv.lib.licenses.mit;

}) {};
"exception-mtl" = callPackage
({
  mkDerivation
, base
, exception-transformers
, mtl
, stdenv
, transformers
}:
mkDerivation {

pname = "exception-mtl";
version = "0.4.0.1";
sha256 = "ec13bcbae6cdde218a7118a2bd3058493af09a330b86e28469a278c9b2cea134";
libraryHaskellDepends = [
base
exception-transformers
mtl
transformers
];
doHaddock = false;
doCheck = false;
description = "Exception monad transformer instances for mtl classes";
license = stdenv.lib.licenses.bsd3;

}) {};
"exception-transformers" = callPackage
({
  mkDerivation
, base
, stdenv
, stm
, transformers
, transformers-compat
}:
mkDerivation {

pname = "exception-transformers";
version = "0.4.0.7";
sha256 = "925b61eb3d19148a521e79f8b4c8ac097f6e0dea6a09cc2f533279f3abf1f2ef";
libraryHaskellDepends = [
base
stm
transformers
transformers-compat
];
doHaddock = false;
doCheck = false;
description = "Type classes and monads for unchecked extensible exceptions";
license = stdenv.lib.licenses.bsd3;

}) {};
"exceptional" = callPackage
({
  mkDerivation
, base
, exceptions
, stdenv
}:
mkDerivation {

pname = "exceptional";
version = "0.3.0.0";
sha256 = "da866ed28ea14d245cc065271f4ddd6da0a91b83e8d83daddcd1ef0623e99f06";
libraryHaskellDepends = [
base
exceptions
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/";
description = "Essentially the Maybe type with error messages";
license = stdenv.lib.licenses.bsd2;

}) {};
"exceptions" = callPackage
({
  mkDerivation
, base
, mtl
, stdenv
, stm
, template-haskell
, transformers
, transformers-compat
}:
mkDerivation {

pname = "exceptions";
version = "0.8.3";
sha256 = "4d6ad97e8e3d5dc6ce9ae68a469dc2fd3f66e9d312bc6faa7ab162eddcef87be";
revision = "5";
editedCabalFile = "1kfgp41i6mfz9gjczp3flvqxfhnznd81rwldv8j05807n6mnqqii";
libraryHaskellDepends = [
base
mtl
stm
template-haskell
transformers
transformers-compat
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/ekmett/exceptions/";
description = "Extensible optionally-pure exceptions";
license = stdenv.lib.licenses.bsd3;

}) {};
"executable-hash" = callPackage
({
  mkDerivation
, base
, bytestring
, Cabal
, cryptohash
, directory
, executable-path
, file-embed
, filepath
, stdenv
, template-haskell
}:
mkDerivation {

pname = "executable-hash";
version = "0.2.0.4";
sha256 = "34eaf5662d90d3b7841f66b322ac5bc54900b0e3cb06792852b08b3c05a42ba4";
isLibrary = true;
isExecutable = true;
setupHaskellDepends = [
base
bytestring
Cabal
cryptohash
directory
file-embed
filepath
template-haskell
];
libraryHaskellDepends = [
base
bytestring
cryptohash
directory
executable-path
file-embed
template-haskell
];
executableHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/fpco/executable-hash";
description = "Provides the SHA1 hash of the program executable";
license = stdenv.lib.licenses.mit;

}) {};
"executable-path" = callPackage
({
  mkDerivation
, base
, directory
, filepath
, stdenv
, unix
}:
mkDerivation {

pname = "executable-path";
version = "0.0.3.1";
sha256 = "9cc742b6d40a487b3af38dca6852ca3b50a0db94d42fe819576c84beb5adbc6f";
libraryHaskellDepends = [
base
directory
filepath
unix
];
doHaddock = false;
doCheck = false;
homepage = "http://code.haskell.org/~bkomuves/";
description = "Finding out the full path of the executable";
license = stdenv.lib.licenses.publicDomain;

}) {};
"exhaustive" = callPackage
({
  mkDerivation
, base
, generics-sop
, stdenv
, template-haskell
, transformers
}:
mkDerivation {

pname = "exhaustive";
version = "1.1.6";
sha256 = "731fae74c06e79f3c7bdbcfe2c455684b92da9534486d1b126c17fdc537eed01";
libraryHaskellDepends = [
base
generics-sop
template-haskell
transformers
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/ocharles/exhaustive";
description = "Compile time checks that a computation considers producing data through all possible constructors";
license = stdenv.lib.licenses.bsd3;

}) {};
"exp-pairs" = callPackage
({
  mkDerivation
, base
, containers
, deepseq
, ghc-prim
, prettyprinter
, stdenv
}:
mkDerivation {

pname = "exp-pairs";
version = "0.1.6.0";
sha256 = "e63ad90fcd292a9a31bd42b94408930c7cdf06700c9879453e61423a89a75be3";
libraryHaskellDepends = [
base
containers
deepseq
ghc-prim
prettyprinter
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/Bodigrim/exp-pairs";
description = "Linear programming over exponent pairs";
license = stdenv.lib.licenses.gpl3;

}) {};
"expiring-cache-map" = callPackage
({
  mkDerivation
, base
, containers
, hashable
, stdenv
, unordered-containers
}:
mkDerivation {

pname = "expiring-cache-map";
version = "0.0.6.1";
sha256 = "0e3bc294978b46ee59bf0b4a7e7a5bd7ed5da7bc261ffebdb0cb1b60353c64b9";
libraryHaskellDepends = [
base
containers
hashable
unordered-containers
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/elblake/expiring-cache-map";
description = "General purpose simple caching";
license = stdenv.lib.licenses.bsd3;

}) {};
"explicit-exception" = callPackage
({
  mkDerivation
, base
, deepseq
, semigroups
, stdenv
, transformers
}:
mkDerivation {

pname = "explicit-exception";
version = "0.1.9.2";
sha256 = "60f6029777f80ec958e28cef19a15723242987a01f09f6bfef252f24207649f6";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
base
deepseq
semigroups
transformers
];
doHaddock = false;
doCheck = false;
homepage = "http://www.haskell.org/haskellwiki/Exception";
description = "Exceptions which are explicit in the type signature";
license = stdenv.lib.licenses.bsd3;

}) {};
"extensible" = callPackage
({
  mkDerivation
, aeson
, base
, bytestring
, cassava
, comonad
, constraints
, deepseq
, ghc-prim
, hashable
, monad-skeleton
, mtl
, prettyprinter
, primitive
, profunctors
, QuickCheck
, semigroups
, StateVar
, stdenv
, tagged
, template-haskell
, text
, th-lift
, transformers
, unordered-containers
, vector
}:
mkDerivation {

pname = "extensible";
version = "0.4.9";
sha256 = "b752ea6f45ff57e2994e12af911c92977b54246756c5181e376e09fd28f93e86";
libraryHaskellDepends = [
aeson
base
bytestring
cassava
comonad
constraints
deepseq
ghc-prim
hashable
monad-skeleton
mtl
prettyprinter
primitive
profunctors
QuickCheck
semigroups
StateVar
tagged
template-haskell
text
th-lift
transformers
unordered-containers
vector
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/fumieval/extensible";
description = "Extensible, efficient, optics-friendly data types and effects";
license = stdenv.lib.licenses.bsd3;

}) {};
"extensible-effects" = callPackage
({
  mkDerivation
, base
, stdenv
, transformers
, transformers-base
}:
mkDerivation {

pname = "extensible-effects";
version = "2.4.0.0";
sha256 = "cc1a6f713e6533f0b025da1b15a88d267af5577a6e59ee84aab6d6b2b7318508";
libraryHaskellDepends = [
base
transformers
transformers-base
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/suhailshergill/extensible-effects";
description = "An Alternative to Monad Transformers";
license = stdenv.lib.licenses.mit;

}) {};
"extensible-exceptions" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "extensible-exceptions";
version = "0.1.1.4";
sha256 = "6ce5e8801760385a408dab71b53550f87629e661b260bdc2cd41c6a439b6e388";
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
description = "Extensible exceptions";
license = stdenv.lib.licenses.bsd3;

}) {};
"extra" = callPackage
({
  mkDerivation
, base
, clock
, directory
, filepath
, process
, stdenv
, time
, unix
}:
mkDerivation {

pname = "extra";
version = "1.6.6";
sha256 = "79996e6a8add465b9ae6253249199afc7fb2e4df475744dbe32b3c0b4573a09d";
libraryHaskellDepends = [
base
clock
directory
filepath
process
time
unix
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/ndmitchell/extra#readme";
description = "Extra functions I use";
license = stdenv.lib.licenses.bsd3;

}) {};
"extractable-singleton" = callPackage
({
  mkDerivation
, base
, stdenv
, transformers
}:
mkDerivation {

pname = "extractable-singleton";
version = "0.0.1";
sha256 = "e8da1928d98c57ef3d1bab7deb1378f51fa496721495777233663dd0b1b2c0ad";
libraryHaskellDepends = [
base
transformers
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/athanclark/extractable-singleton#readme";
description = "A functor, where the \"stored\" value is isomorphic to Identity";
license = stdenv.lib.licenses.bsd3;

}) {};
"extrapolate" = callPackage
({
  mkDerivation
, base
, leancheck
, speculate
, stdenv
, template-haskell
}:
mkDerivation {

pname = "extrapolate";
version = "0.3.1";
sha256 = "c4aea5df7abd2d267e012e8e4fde00eb0e7fc3aa18670ff196c433ad5a1de0c3";
libraryHaskellDepends = [
base
leancheck
speculate
template-haskell
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/rudymatela/extrapolate#readme";
description = "generalize counter-examples of test properties";
license = stdenv.lib.licenses.bsd3;

}) {};
"fail" = callPackage
({
  mkDerivation
, stdenv
}:
mkDerivation {

pname = "fail";
version = "4.9.0.0";
sha256 = "6d5cdb1a5c539425a9665f740e364722e1d9d6ae37fbc55f30fe3dbbbb91d4a2";
doHaddock = false;
doCheck = false;
homepage = "https://prime.haskell.org/wiki/Libraries/Proposals/MonadFail";
description = "Forward-compatible MonadFail class";
license = stdenv.lib.licenses.bsd3;

}) {};
"farmhash" = callPackage
({
  mkDerivation
, base
, bytestring
, stdenv
}:
mkDerivation {

pname = "farmhash";
version = "0.1.0.5";
sha256 = "0e685a5445f7bce88682d209bccb47d03f06065a627475df44a8e2af8bc20fa1";
libraryHaskellDepends = [
base
bytestring
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/abhinav/farmhash";
description = "Fast hash functions";
license = stdenv.lib.licenses.bsd3;

}) {};
"fast-builder" = callPackage
({
  mkDerivation
, base
, bytestring
, ghc-prim
, stdenv
}:
mkDerivation {

pname = "fast-builder";
version = "0.0.1.0";
sha256 = "c18abb40d416e46e7f69e609188c99f1f0646b2db62bc7df6208b2b0a3974027";
libraryHaskellDepends = [
base
bytestring
ghc-prim
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/takano-akio/fast-builder";
description = "Fast ByteString Builder";
license = stdenv.lib.licenses.publicDomain;

}) {};
"fast-digits" = callPackage
({
  mkDerivation
, base
, integer-gmp
, stdenv
}:
mkDerivation {

pname = "fast-digits";
version = "0.2.1.0";
sha256 = "ec84576e479202de8257c7c499b66e91bcf18444f7683475d74b575e166dd83b";
libraryHaskellDepends = [
base
integer-gmp
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/Bodigrim/fast-digits";
description = "The fast library for integer-to-digits conversion";
license = stdenv.lib.licenses.gpl3;

}) {};
"fast-logger" = callPackage
({
  mkDerivation
, array
, auto-update
, base
, bytestring
, directory
, easy-file
, filepath
, stdenv
, text
, unix
, unix-time
}:
mkDerivation {

pname = "fast-logger";
version = "2.4.11";
sha256 = "bbe5deab58f435754dbe938cf0ddf26fc21f317c35fb3431d4bdb96809dea2a9";
libraryHaskellDepends = [
array
auto-update
base
bytestring
directory
easy-file
filepath
text
unix
unix-time
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/kazu-yamamoto/logger";
description = "A fast logging system";
license = stdenv.lib.licenses.bsd3;

}) {};
"fasta" = callPackage
({
  mkDerivation
, attoparsec
, base
, bytestring
, containers
, foldl
, lens
, parsec
, pipes
, pipes-attoparsec
, pipes-bytestring
, pipes-group
, pipes-text
, split
, stdenv
, text
}:
mkDerivation {

pname = "fasta";
version = "0.10.4.2";
sha256 = "2b760dfd5029dee94d56010f8125f4317d6fa675a84817c352311d308d1897be";
libraryHaskellDepends = [
attoparsec
base
bytestring
containers
foldl
lens
parsec
pipes
pipes-attoparsec
pipes-bytestring
pipes-group
pipes-text
split
text
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/GregorySchwartz/fasta";
description = "A simple, mindless parser for fasta files";
license = stdenv.lib.licenses.gpl3;

}) {};
"fb" = callPackage
({
  mkDerivation
, aeson
, attoparsec
, base
, base16-bytestring
, base64-bytestring
, bytestring
, cereal
, conduit
, conduit-extra
, crypto-api
, cryptohash
, cryptohash-cryptoapi
, data-default
, http-client
, http-conduit
, http-types
, monad-logger
, old-locale
, resourcet
, stdenv
, text
, time
, transformers
, transformers-base
, unliftio
, unliftio-core
, unordered-containers
}:
mkDerivation {

pname = "fb";
version = "1.2.0";
sha256 = "d474ff3155163032a2f47736b32177b620b7c19dfeecac8c2c7ca40a7178f712";
libraryHaskellDepends = [
aeson
attoparsec
base
base16-bytestring
base64-bytestring
bytestring
cereal
conduit
conduit-extra
crypto-api
cryptohash
cryptohash-cryptoapi
data-default
http-client
http-conduit
http-types
monad-logger
old-locale
resourcet
text
time
transformers
transformers-base
unliftio
unliftio-core
unordered-containers
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/psibi/fb";
description = "Bindings to Facebook's API";
license = stdenv.lib.licenses.bsd3;

}) {};
"fclabels" = callPackage
({
  mkDerivation
, base
, mtl
, stdenv
, template-haskell
, transformers
}:
mkDerivation {

pname = "fclabels";
version = "2.0.3.3";
sha256 = "9a9472a46dc23b5acc0545d345ecd708f7b003f72ab212e2d12125b902b9c2e0";
revision = "1";
editedCabalFile = "0fs17vv85ybl3ws8k25sg758vq49l19vhn4asm8r6q5j9xic2kvl";
libraryHaskellDepends = [
base
mtl
template-haskell
transformers
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/sebastiaanvisser/fclabels";
description = "First class accessor labels implemented as lenses";
license = stdenv.lib.licenses.bsd3;

}) {};
"feature-flags" = callPackage
({
  mkDerivation
, base
, stdenv
, text
}:
mkDerivation {

pname = "feature-flags";
version = "0.1.0.1";
sha256 = "0e4cf7db6791b0875975dfa001d71bf31797b2edbfd2424f6b6202ace7935ad3";
libraryHaskellDepends = [
base
text
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/iand675/feature-flags";
description = "A simple library for dynamically enabling and disabling functionality";
license = stdenv.lib.licenses.mit;

}) {};
"fedora-haskell-tools" = callPackage
({
  mkDerivation
, base
, directory
, filepath
, process
, stdenv
, time
, unix
}:
mkDerivation {

pname = "fedora-haskell-tools";
version = "0.5.1";
sha256 = "b9a9119aace941ff5860c02462bf340c6f3cce29f7bdcb42af98dedfa9888394";
isLibrary = false;
isExecutable = true;
executableHaskellDepends = [
base
directory
filepath
process
time
unix
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/fedora-haskell/fedora-haskell-tools";
description = "Building and managing tools for Fedora Haskell";
license = stdenv.lib.licenses.gpl3;

}) {};
"feed" = callPackage
({
  mkDerivation
, base
, base-compat
, bytestring
, old-locale
, old-time
, safe
, stdenv
, text
, time
, time-locale-compat
, utf8-string
, xml-conduit
, xml-types
}:
mkDerivation {

pname = "feed";
version = "1.0.0.0";
sha256 = "9359a12d3da138ba50fecfc31eed7f92438a6417e9fc3aa17b95a014fa792f17";
revision = "4";
editedCabalFile = "0baavcavm3ywykcr9cm07aqr7sna98jba2n68lyn3kany8ri214d";
enableSeparateDataOutput = true;
libraryHaskellDepends = [
base
base-compat
bytestring
old-locale
old-time
safe
text
time
time-locale-compat
utf8-string
xml-conduit
xml-types
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/bergmark/feed";
description = "Interfacing with RSS (v 0.9x, 2.x, 1.0) + Atom feeds.";
license = stdenv.lib.licenses.bsd3;

}) {};
"fft" = callPackage
({
  mkDerivation
, array
, base
, carray
, fftw
, fftwFloat
, ix-shapable
, stdenv
, storable-complex
, syb
, transformers
}:
mkDerivation {

pname = "fft";
version = "0.1.8.6";
sha256 = "2ed8d8301903283c9a62eda1f1cf49db0c471c4c128fbfdef562d598401e5b42";
libraryHaskellDepends = [
array
base
carray
ix-shapable
storable-complex
syb
transformers
];
libraryPkgconfigDepends = [
fftw
fftwFloat
];
doHaddock = false;
doCheck = false;
description = "Bindings to the FFTW library";
license = stdenv.lib.licenses.bsd3;

}) {inherit (pkgs) fftw; inherit (pkgs) fftwFloat;};
"fgl" = callPackage
({
  mkDerivation
, array
, base
, containers
, deepseq
, stdenv
, transformers
}:
mkDerivation {

pname = "fgl";
version = "5.6.0.0";
sha256 = "94722e1eb3dca66069e26a2d4b072c558bc896816ee016fc99521f3e16b9ccc4";
libraryHaskellDepends = [
array
base
containers
deepseq
transformers
];
doHaddock = false;
doCheck = false;
description = "Martin Erwig's Functional Graph Library";
license = stdenv.lib.licenses.bsd3;

}) {};
"file-embed" = callPackage
({
  mkDerivation
, base
, bytestring
, directory
, filepath
, stdenv
, template-haskell
}:
mkDerivation {

pname = "file-embed";
version = "0.0.10.1";
sha256 = "33cdeb44e8fa1ca8ade64e2b8d0924ea8c70b2b521455a0f22cde36f19314152";
libraryHaskellDepends = [
base
bytestring
directory
filepath
template-haskell
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/snoyberg/file-embed";
description = "Use Template Haskell to embed file contents directly";
license = stdenv.lib.licenses.bsd3;

}) {};
"file-modules" = callPackage
({
  mkDerivation
, async
, base
, directory
, filepath
, haskell-src-exts
, MissingH
, regex-compat
, regex-pcre
, stdenv
}:
mkDerivation {

pname = "file-modules";
version = "0.1.2.4";
sha256 = "ffea2dbd51f77ed76f8559d8519674a1210611a35e2dbea72dfb41d7d5f0f235";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
async
base
directory
filepath
haskell-src-exts
MissingH
regex-compat
regex-pcre
];
executableHaskellDepends = [
async
base
directory
filepath
haskell-src-exts
MissingH
regex-compat
regex-pcre
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/yamadapc/stack-run-auto";
description = "Takes a Haskell source-code file and outputs its modules";
license = stdenv.lib.licenses.mit;

}) {};
"filecache" = callPackage
({
  mkDerivation
, base
, containers
, directory
, exceptions
, filepath
, fsnotify
, mtl
, stdenv
, stm
, strict-base-types
, time
}:
mkDerivation {

pname = "filecache";
version = "0.3.2";
sha256 = "82e4aff8b774c5256514bdb897cfd2d239986f20ebd0970f87198e244694b7b5";
libraryHaskellDepends = [
base
containers
directory
exceptions
filepath
fsnotify
mtl
stm
strict-base-types
time
];
doHaddock = false;
doCheck = false;
homepage = "http://lpuppet.banquise.net/";
description = "A cache system associating values to files";
license = stdenv.lib.licenses.bsd3;

}) {};
"filelock" = callPackage
({
  mkDerivation
, base
, stdenv
, unix
}:
mkDerivation {

pname = "filelock";
version = "0.1.1.2";
sha256 = "0ff1dcb13ec619f72496035e2a1298ef9dc6a814ba304d882cd9b145eae3203d";
libraryHaskellDepends = [
base
unix
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/takano-akio/filelock";
description = "Portable interface to file locking (flock / LockFileEx)";
license = stdenv.lib.licenses.publicDomain;

}) {};
"filemanip" = callPackage
({
  mkDerivation
, base
, bytestring
, directory
, filepath
, mtl
, stdenv
, unix-compat
}:
mkDerivation {

pname = "filemanip";
version = "0.3.6.3";
sha256 = "8836da17baaaf02ca080c9990ece4e0b0c8d6a128f458f8b64fd07b225ca9846";
libraryHaskellDepends = [
base
bytestring
directory
filepath
mtl
unix-compat
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/bos/filemanip";
description = "Expressive file and directory manipulation for Haskell";
license = stdenv.lib.licenses.bsd3;

}) {};
"fileplow" = callPackage
({
  mkDerivation
, base
, binary-search
, bytestring
, stdenv
, vector
}:
mkDerivation {

pname = "fileplow";
version = "0.1.0.0";
sha256 = "9ddc7db62c97fa4413ff2435c96aac9f6f716e2f6bc7a71aa4db25c3871bee04";
libraryHaskellDepends = [
base
binary-search
bytestring
vector
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/agrafix/fileplow#readme";
description = "Library to process and search large files or a collection of files";
license = stdenv.lib.licenses.bsd3;

}) {};
"filter-logger" = callPackage
({
  mkDerivation
, aeson
, aeson-pretty
, ansi-terminal
, base
, bytestring
, data-default
, fast-logger
, http-types
, scotty
, semigroups
, stdenv
, time
, wai
, wai-extra
, wai-logger
}:
mkDerivation {

pname = "filter-logger";
version = "0.6.0.0";
sha256 = "7884124056950a7f7ff393ebb7d1622695f9b66f898c60aeb8bc991c73642f21";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
aeson
aeson-pretty
ansi-terminal
base
bytestring
data-default
fast-logger
http-types
semigroups
time
wai
wai-extra
wai-logger
];
executableHaskellDepends = [
aeson
base
bytestring
scotty
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/caneroj1/filter-logger#readme";
description = "Filterable request logging wai middleware. Change how data is logged and when.";
license = stdenv.lib.licenses.mit;

}) {};
"find-clumpiness" = callPackage
({
  mkDerivation
, aeson
, base
, BiobaseNewick
, bytestring
, clumpiness
, containers
, hierarchical-clustering
, listsafe
, mtl
, optparse-applicative
, stdenv
, text
, text-show
, tree-fun
, unordered-containers
, vector
}:
mkDerivation {

pname = "find-clumpiness";
version = "0.2.3.1";
sha256 = "089e55641eedd12ab16ae5e81cbd2c6c0375801c01fc17fb2ce23354a0ec2c2a";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
aeson
base
BiobaseNewick
bytestring
clumpiness
containers
hierarchical-clustering
listsafe
mtl
text
text-show
tree-fun
unordered-containers
vector
];
executableHaskellDepends = [
aeson
base
BiobaseNewick
bytestring
clumpiness
containers
optparse-applicative
text
tree-fun
unordered-containers
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/GregorySchwartz/find-clumpiness#readme";
description = "Find the clumpiness of labels in a tree";
license = stdenv.lib.licenses.gpl3;

}) {};
"fingertree" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "fingertree";
version = "0.1.4.1";
sha256 = "9778dc162963c376f02239183e782673729d01a2e1e1dbf81924d80bf6f74ea4";
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
description = "Generic finger-tree structure, with example instances";
license = stdenv.lib.licenses.bsd3;

}) {};
"fingertree-psqueue" = callPackage
({
  mkDerivation
, base
, fingertree
, stdenv
}:
mkDerivation {

pname = "fingertree-psqueue";
version = "0.3";
sha256 = "9f8c2f1965ea7a618d969db6506c8f373c95e09072b2182de40713d265046c92";
libraryHaskellDepends = [
base
fingertree
];
doHaddock = false;
doCheck = false;
description = "Implementation of priority search queues as finger trees";
license = stdenv.lib.licenses.bsd3;

}) {};
"finite-typelits" = callPackage
({
  mkDerivation
, base
, deepseq
, stdenv
}:
mkDerivation {

pname = "finite-typelits";
version = "0.1.3.0";
sha256 = "db733336de7ba5a2650f33f0b6a82dfe6699124f673b4506ffedaa4b6513489d";
libraryHaskellDepends = [
base
deepseq
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/mniip/finite-typelits";
description = "A type inhabited by finitely many values, indexed by type-level naturals";
license = stdenv.lib.licenses.bsd3;

}) {};
"fitspec" = callPackage
({
  mkDerivation
, base
, cmdargs
, leancheck
, stdenv
, template-haskell
}:
mkDerivation {

pname = "fitspec";
version = "0.4.4";
sha256 = "d9f3b682edb7c12f2a1cbd9e522e093e2e092070dc07263ae9e6dfc16f6c7597";
libraryHaskellDepends = [
base
cmdargs
leancheck
template-haskell
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/rudymatela/fitspec#readme";
description = "refining property sets for testing Haskell programs";
license = stdenv.lib.licenses.bsd3;

}) {};
"fixed" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "fixed";
version = "0.2.1.1";
sha256 = "24a9e1e251998c9d06037bb771d9eab2980a91132de59a19d0166a1c51e715e2";
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/ekmett/fixed";
description = "Signed 15.16 precision fixed point arithmetic";
license = stdenv.lib.licenses.bsd3;

}) {};
"fixed-length" = callPackage
({
  mkDerivation
, base
, non-empty
, stdenv
, tfp
, utility-ht
}:
mkDerivation {

pname = "fixed-length";
version = "0.2";
sha256 = "3171f2d443171a8e92733b3935805c7d5b54eae1f39f9fd729a766f887a6389b";
libraryHaskellDepends = [
base
non-empty
tfp
utility-ht
];
doHaddock = false;
doCheck = false;
homepage = "http://hub.darcs.net/thielema/fixed-length/";
description = "Lists with statically known length based on non-empty package";
license = stdenv.lib.licenses.bsd3;

}) {};
"fixed-vector" = callPackage
({
  mkDerivation
, base
, deepseq
, primitive
, stdenv
}:
mkDerivation {

pname = "fixed-vector";
version = "1.1.0.0";
sha256 = "1ed0bef94b0fead859ad2aea0b73bf1bd3686a6c1faafc75e321fbd9c3ae94c5";
libraryHaskellDepends = [
base
deepseq
primitive
];
doHaddock = false;
doCheck = false;
description = "Generic vectors with statically known size";
license = stdenv.lib.licenses.bsd3;

}) {};
"fixed-vector-hetero" = callPackage
({
  mkDerivation
, base
, deepseq
, fixed-vector
, primitive
, stdenv
}:
mkDerivation {

pname = "fixed-vector-hetero";
version = "0.4.0.0";
sha256 = "36b6487551dc4c93e22c8f5e6e38de75ed0b12884b677b2a92bda47c781f26f4";
revision = "1";
editedCabalFile = "0gc12lyp07yjs1xhdbfwllbw2ccdr131w0naxv5cn09bh9iay5xs";
libraryHaskellDepends = [
base
deepseq
fixed-vector
primitive
];
doHaddock = false;
doCheck = false;
homepage = "http://github.org/Shimuuar/fixed-vector-hetero";
description = "Generic heterogeneous vectors";
license = stdenv.lib.licenses.bsd3;

}) {};
"flac" = callPackage
({
  mkDerivation
, base
, bytestring
, containers
, data-default-class
, directory
, exceptions
, filepath
, FLAC
, mtl
, stdenv
, text
, transformers
, vector
, wave
}:
mkDerivation {

pname = "flac";
version = "0.1.2";
sha256 = "5692b3dfc561cbeed25b1cf9280705f58eadd8c400aa2e6a725fd5562042ac29";
revision = "3";
editedCabalFile = "09xml5mv63q0wzw09s0ssjdzgnq041gr6gjhk63dr252rydnn4zh";
enableSeparateDataOutput = true;
libraryHaskellDepends = [
base
bytestring
containers
data-default-class
directory
exceptions
filepath
mtl
text
transformers
vector
wave
];
librarySystemDepends = [
FLAC
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/mrkkrp/flac";
description = "Complete high-level binding to libFLAC";
license = stdenv.lib.licenses.bsd3;

}) {inherit (pkgs) FLAC;};
"flac-picture" = callPackage
({
  mkDerivation
, base
, bytestring
, flac
, JuicyPixels
, stdenv
}:
mkDerivation {

pname = "flac-picture";
version = "0.1.1";
sha256 = "3c1cf80c48521370ce6351d4b544c14891442bfe47c65e5bf436fe58f6fec1ce";
revision = "1";
editedCabalFile = "02vdh61nzig0yrv6ja6fjlgfcznj5k4iqh3i5f9g5p078ycqb17w";
enableSeparateDataOutput = true;
libraryHaskellDepends = [
base
bytestring
flac
JuicyPixels
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/mrkkrp/flac-picture";
description = "Support for writing picture to FLAC metadata blocks with JuicyPixels";
license = stdenv.lib.licenses.bsd3;

}) {};
"flat-mcmc" = callPackage
({
  mkDerivation
, base
, formatting
, mcmc-types
, monad-par
, monad-par-extras
, mwc-probability
, pipes
, primitive
, stdenv
, text
, transformers
, vector
}:
mkDerivation {

pname = "flat-mcmc";
version = "1.5.0";
sha256 = "87cea9deac6e2d32d9984741ba222ccb2fb0d5f8c58e843684476bfe7632f1fd";
revision = "1";
editedCabalFile = "1pjkyvs4c6yx6jva08zw2b1qfhhv9q71sy806f5lddjsknnym2fn";
libraryHaskellDepends = [
base
formatting
mcmc-types
monad-par
monad-par-extras
mwc-probability
pipes
primitive
text
transformers
vector
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/jtobin/flat-mcmc";
description = "Painless general-purpose sampling";
license = stdenv.lib.licenses.mit;

}) {};
"flexible-defaults" = callPackage
({
  mkDerivation
, base
, containers
, stdenv
, template-haskell
, th-extras
, transformers
}:
mkDerivation {

pname = "flexible-defaults";
version = "0.0.1.2";
sha256 = "827032cecf5e937d673f3a0b84fbbaba7c03fce6a567c15faf36865da9b76dc2";
libraryHaskellDepends = [
base
containers
template-haskell
th-extras
transformers
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/mokus0/flexible-defaults";
description = "Generate default function implementations for complex type classes";
license = stdenv.lib.licenses.publicDomain;

}) {};
"floatshow" = callPackage
({
  mkDerivation
, array
, base
, integer-gmp
, stdenv
}:
mkDerivation {

pname = "floatshow";
version = "0.2.4";
sha256 = "0c4e9494df46120942b2078db53c16200b46eff603fca5ab85775a541f975dff";
libraryHaskellDepends = [
array
base
integer-gmp
];
doHaddock = false;
doCheck = false;
homepage = "https://bitbucket.org/dafis/floatshow";
description = "Alternative faster String representations for Double and Float, String representations for more general numeric types";
license = stdenv.lib.licenses.bsd3;

}) {};
"flow" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "flow";
version = "1.0.12";
sha256 = "77d88b7724c4108ae5bb07820b8b79685dcde0beec4dda356067e7899a793531";
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/tfausak/flow#readme";
description = "Write more understandable Haskell";
license = stdenv.lib.licenses.mit;

}) {};
"fmlist" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "fmlist";
version = "0.9.2";
sha256 = "8fc4b55d04e7f216740a01acd2f38293e3bd9409a9495e6042a162580c420609";
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/sjoerdvisscher/fmlist";
description = "FoldMap lists";
license = stdenv.lib.licenses.bsd3;

}) {};
"fmt" = callPackage
({
  mkDerivation
, base
, base16-bytestring
, base64-bytestring
, bytestring
, containers
, microlens
, stdenv
, text
, text-format
, time
, time-locale-compat
}:
mkDerivation {

pname = "fmt";
version = "0.5.0.0";
sha256 = "ce3e15e87c04b1dcafcea8d65f894de9427a89d296e1c26a358c625558d9d194";
revision = "1";
editedCabalFile = "1vdgh45qv5jk1ym4y54sjgk0cnqhrqqi6iirrw8drq20v1srbpl3";
libraryHaskellDepends = [
base
base16-bytestring
base64-bytestring
bytestring
containers
microlens
text
text-format
time
time-locale-compat
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/aelve/fmt";
description = "A new formatting library";
license = stdenv.lib.licenses.bsd3;

}) {};
"fn" = callPackage
({
  mkDerivation
, base
, blaze-builder
, bytestring
, directory
, filepath
, http-types
, resourcet
, stdenv
, text
, unordered-containers
, wai
, wai-extra
}:
mkDerivation {

pname = "fn";
version = "0.3.0.2";
sha256 = "1e34b017aa13f60464ec06dfbae970c3c0f01f2160f5001a4e84c8179de7ae5f";
libraryHaskellDepends = [
base
blaze-builder
bytestring
directory
filepath
http-types
resourcet
text
unordered-containers
wai
wai-extra
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/positiondev/fn#readme";
description = "A functional web framework";
license = stdenv.lib.licenses.isc;

}) {};
"focus" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "focus";
version = "0.1.5.2";
sha256 = "c2988d48c2bc6861a00be4e02161df96abcbf6c80e801676cee39b7628715cb7";
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/nikita-volkov/focus";
description = "A general abstraction for manipulating elements of container data structures";
license = stdenv.lib.licenses.mit;

}) {};
"fold-debounce" = callPackage
({
  mkDerivation
, base
, data-default-class
, stdenv
, stm
, stm-delay
, time
}:
mkDerivation {

pname = "fold-debounce";
version = "0.2.0.7";
sha256 = "ff7ec4537a04beaae6926387f49dbfd98b6b6e5344e9d435503be7f2aca1c68f";
libraryHaskellDepends = [
base
data-default-class
stm
stm-delay
time
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/debug-ito/fold-debounce";
description = "Fold multiple events that happen in a given period of time";
license = stdenv.lib.licenses.bsd3;

}) {};
"fold-debounce-conduit" = callPackage
({
  mkDerivation
, base
, conduit
, fold-debounce
, resourcet
, stdenv
, stm
, transformers
, transformers-base
}:
mkDerivation {

pname = "fold-debounce-conduit";
version = "0.2.0.1";
sha256 = "5f98432d8d0a193ec1287c438fe53f8bd1ec4d5446aa64914f2f353f44e8500b";
libraryHaskellDepends = [
base
conduit
fold-debounce
resourcet
stm
transformers
transformers-base
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/debug-ito/fold-debounce-conduit";
description = "Regulate input traffic from conduit Source with Control.FoldDebounce";
license = stdenv.lib.licenses.bsd3;

}) {};
"foldl" = callPackage
({
  mkDerivation
, base
, bytestring
, comonad
, containers
, contravariant
, hashable
, mwc-random
, primitive
, profunctors
, semigroups
, stdenv
, text
, transformers
, unordered-containers
, vector
, vector-builder
}:
mkDerivation {

pname = "foldl";
version = "1.3.7";
sha256 = "76225f77e5a63891ca9f50fdc053be1506b6508feec73003455286e9bf316984";
libraryHaskellDepends = [
base
bytestring
comonad
containers
contravariant
hashable
mwc-random
primitive
profunctors
semigroups
text
transformers
unordered-containers
vector
vector-builder
];
doHaddock = false;
doCheck = false;
description = "Composable, streaming, and efficient left folds";
license = stdenv.lib.licenses.bsd3;

}) {};
"folds" = callPackage
({
  mkDerivation
, adjunctions
, base
, bifunctors
, Cabal
, cabal-doctest
, comonad
, constraints
, contravariant
, data-reify
, distributive
, lens
, mtl
, pointed
, profunctors
, reflection
, semigroupoids
, stdenv
, transformers
, unordered-containers
, vector
}:
mkDerivation {

pname = "folds";
version = "0.7.4";
sha256 = "5c6e6f7c9c852cbe3d5372f93ed99f82400d15ae99ecf8e9e005481647734572";
configureFlags = [
"-f-test-hlint"
];
setupHaskellDepends = [
base
Cabal
cabal-doctest
];
libraryHaskellDepends = [
adjunctions
base
bifunctors
comonad
constraints
contravariant
data-reify
distributive
lens
mtl
pointed
profunctors
reflection
semigroupoids
transformers
unordered-containers
vector
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/ekmett/folds";
description = "Beautiful Folding";
license = stdenv.lib.licenses.bsd3;

}) {};
"follow-file" = callPackage
({
  mkDerivation
, attoparsec
, attoparsec-path
, base
, bytestring
, conduit
, conduit-combinators
, directory
, exceptions
, hinotify
, monad-control
, mtl
, path
, stdenv
, text
, unix
, utf8-string
}:
mkDerivation {

pname = "follow-file";
version = "0.0.2";
sha256 = "13922046769351aaeee80cce67d2fce07eca94a3a762033859fe15f7ce75c118";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
attoparsec
attoparsec-path
base
bytestring
conduit
directory
exceptions
hinotify
monad-control
mtl
path
text
unix
utf8-string
];
executableHaskellDepends = [
attoparsec
attoparsec-path
base
bytestring
conduit
conduit-combinators
directory
hinotify
path
text
];
doHaddock = false;
doCheck = false;
description = "Be notified when a file gets appended, solely with what was added";
license = stdenv.lib.licenses.bsd3;

}) {};
"force-layout" = callPackage
({
  mkDerivation
, base
, containers
, data-default-class
, lens
, linear
, stdenv
}:
mkDerivation {

pname = "force-layout";
version = "0.4.0.6";
sha256 = "f7729855b1b14e0b255325faaca9f4834004e02bd21def6a865d2c55c734259d";
revision = "3";
editedCabalFile = "0rp5ggzdqy9i8bsjz7i36l8l2b04vjy6sqm6gxmb4pqmakj1x8q6";
libraryHaskellDepends = [
base
containers
data-default-class
lens
linear
];
doHaddock = false;
doCheck = false;
description = "Simple force-directed layout";
license = stdenv.lib.licenses.bsd3;

}) {};
"foreign-store" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "foreign-store";
version = "0.2";
sha256 = "06718a214d068eaa494cc82376f23b2059a141b01048cd7efcf2176a6c3383dc";
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/chrisdone/foreign-store";
description = "Store a stable pointer in a foreign context to be retrieved later";
license = stdenv.lib.licenses.bsd3;

}) {};
"forma" = callPackage
({
  mkDerivation
, aeson
, base
, containers
, data-default-class
, mtl
, stdenv
, text
, unordered-containers
}:
mkDerivation {

pname = "forma";
version = "0.2.0";
sha256 = "00d0a75fb7706bd06f4e47eaafbc07e92461582d8b8e5aee76b44604d2062d17";
revision = "1";
editedCabalFile = "1hqay7gjhnlxya08qwmxnwriy958awafvyi7rws6wla5m1cq0wr6";
libraryHaskellDepends = [
aeson
base
containers
data-default-class
mtl
text
unordered-containers
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/mrkkrp/forma";
description = "Parse and validate forms in JSON format";
license = stdenv.lib.licenses.bsd3;

}) {};
"format-numbers" = callPackage
({
  mkDerivation
, base
, stdenv
, text
}:
mkDerivation {

pname = "format-numbers";
version = "0.1.0.0";
sha256 = "0ca4561b55c888552f7bf0eb68e97b62acedcb0d5e5e1cc4afd94402d01231a6";
libraryHaskellDepends = [
base
text
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/agrafix/format-numbers#readme";
description = "Various number formatting functions";
license = stdenv.lib.licenses.mit;

}) {};
"formatting" = callPackage
({
  mkDerivation
, array
, base
, bytestring
, clock
, ghc-prim
, integer-gmp
, old-locale
, scientific
, semigroups
, stdenv
, text
, time
, transformers
}:
mkDerivation {

pname = "formatting";
version = "6.3.4";
sha256 = "9d038dc3d41081a95f4519102bfc4033a5ed077cf75e4a39a3e19860d7b796e5";
libraryHaskellDepends = [
array
base
bytestring
clock
ghc-prim
integer-gmp
old-locale
scientific
semigroups
text
time
transformers
];
doHaddock = false;
doCheck = false;
description = "Combinator-based type-safe formatting (like printf() or FORMAT)";
license = stdenv.lib.licenses.bsd3;

}) {};
"foundation" = callPackage
({
  mkDerivation
, base
, basement
, ghc-prim
, stdenv
}:
mkDerivation {

pname = "foundation";
version = "0.0.20";
sha256 = "ba6ae63a9ce0846bf942af2c3ace56600f051c61e83a0b55dd625de23a78e42d";
libraryHaskellDepends = [
base
basement
ghc-prim
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/haskell-foundation/foundation";
description = "Alternative prelude with batteries and no dependencies";
license = stdenv.lib.licenses.bsd3;

}) {};
"free" = callPackage
({
  mkDerivation
, base
, bifunctors
, comonad
, containers
, distributive
, exceptions
, mtl
, profunctors
, semigroupoids
, semigroups
, stdenv
, template-haskell
, transformers
, transformers-base
, transformers-compat
}:
mkDerivation {

pname = "free";
version = "5.0.2";
sha256 = "ef05eb1c8e69742a4f962c573ef362e44ad48772940f1ef69fe39f0f77b2a396";
libraryHaskellDepends = [
base
bifunctors
comonad
containers
distributive
exceptions
mtl
profunctors
semigroupoids
semigroups
template-haskell
transformers
transformers-base
transformers-compat
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/ekmett/free/";
description = "Monads for free";
license = stdenv.lib.licenses.bsd3;

}) {};
"free-vl" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "free-vl";
version = "0.1.4";
sha256 = "57f63ed35b42fc54fefb3cc183d0655e0d6c4a28d5371dba00fc9c9d3fa602bf";
revision = "1";
editedCabalFile = "1711k76b6w7gfqvc8z9jnylj4hhk3rvx7ap31y1mmq4g2a4s82qm";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
base
];
executableHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/aaronlevin/free-vl";
description = "van Laarhoven encoded Free Monad with Extensible Effects";
license = stdenv.lib.licenses.bsd3;

}) {};
"freenect" = callPackage
({
  mkDerivation
, base
, freenect
, freenect_sync
, libfreenect
, stdenv
, vector
}:
mkDerivation {

pname = "freenect";
version = "1.2.1";
sha256 = "fca7aa958ec04396334b101679f8603850d7c6629770d5206d774e115cd70759";
libraryHaskellDepends = [
base
vector
];
librarySystemDepends = [
freenect
freenect_sync
];
libraryPkgconfigDepends = [
libfreenect
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/chrisdone/freenect";
description = "Interface to the Kinect device";
license = stdenv.lib.licenses.bsd3;

}) {inherit (pkgs) freenect; inherit (pkgs) freenect_sync;
inherit (pkgs) libfreenect;};
"freer-simple" = callPackage
({
  mkDerivation
, base
, natural-transformation
, stdenv
, transformers-base
}:
mkDerivation {

pname = "freer-simple";
version = "1.1.0.0";
sha256 = "2198cdb1f6206b192bed553757cfc145485ee86be7261878bf44bc0e84b1bb01";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
base
natural-transformation
transformers-base
];
executableHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/lexi-lambda/freer-simple#readme";
description = "Implementation of a friendly effect system for Haskell";
license = stdenv.lib.licenses.bsd3;

}) {};
"freetype2" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "freetype2";
version = "0.1.2";
sha256 = "517e80298890e903b03134d7840d3d1a517bfdad53127ed57c2fdd18cbfae302";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
description = "Haskell binding for FreeType 2 library";
license = stdenv.lib.licenses.bsd3;

}) {};
"friday" = callPackage
({
  mkDerivation
, base
, containers
, convertible
, deepseq
, primitive
, ratio-int
, stdenv
, transformers
, vector
}:
mkDerivation {

pname = "friday";
version = "0.2.3.1";
sha256 = "0827492c1a6116baa5c4866539a4cfa0f6d81bf31f6573616bf5ac4484199613";
revision = "1";
editedCabalFile = "0n1f4plvrmad6gm8dbsi6g5ghahdwwy2fhgippmnp1ixb65x7d58";
libraryHaskellDepends = [
base
containers
convertible
deepseq
primitive
ratio-int
transformers
vector
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/RaphaelJ/friday";
description = "A functional image processing library for Haskell";
license = stdenv.lib.licenses.lgpl3;

}) {};
"friday-juicypixels" = callPackage
({
  mkDerivation
, base
, friday
, JuicyPixels
, stdenv
, vector
}:
mkDerivation {

pname = "friday-juicypixels";
version = "0.1.2.4";
sha256 = "6d59828fe700ddd0777d180551c5f62444c18fd0b27ae3a675ad185efa90ae3f";
libraryHaskellDepends = [
base
friday
JuicyPixels
vector
];
doHaddock = false;
doCheck = false;
homepage = "github.com/TomMD/friday-juicypixels";
description = "Converts between the Friday and JuicyPixels image types";
license = stdenv.lib.licenses.bsd3;

}) {};
"friendly-time" = callPackage
({
  mkDerivation
, base
, old-locale
, stdenv
, time
}:
mkDerivation {

pname = "friendly-time";
version = "0.4.1";
sha256 = "9af3443227c3f271f5d11ed8c3c15c77a59de3ab82d87d93ac1f8455a54393c8";
revision = "1";
editedCabalFile = "096nfaqxavi6xblqh4q5dxks824liz75b4rm2la2hlkkn5mhqdgs";
libraryHaskellDepends = [
base
old-locale
time
];
doHaddock = false;
doCheck = false;
description = "Print time information in friendly ways";
license = stdenv.lib.licenses.bsd3;

}) {};
"frisby" = callPackage
({
  mkDerivation
, array
, base
, containers
, mtl
, semigroups
, stdenv
}:
mkDerivation {

pname = "frisby";
version = "0.2.2";
sha256 = "c1b318dbf54d56e1012955cc47a1633af5fd77facc128c725353718c0663b6d5";
libraryHaskellDepends = [
array
base
containers
mtl
semigroups
];
doHaddock = false;
doCheck = false;
homepage = "http://repetae.net/computer/frisby/";
description = "Linear time composable parser for PEG grammars";
license = stdenv.lib.licenses.bsd3;

}) {};
"from-sum" = callPackage
({
  mkDerivation
, base
, mtl
, stdenv
}:
mkDerivation {

pname = "from-sum";
version = "0.2.1.0";
sha256 = "a1ed8a433b98df8a70be2f9199abae3e5ed7fb4c2f2b3fb1268b6b588f326667";
libraryHaskellDepends = [
base
mtl
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/cdepillabout/from-sum";
description = "Canonical fromMaybeM and fromEitherM functions";
license = stdenv.lib.licenses.bsd3;

}) {};
"frontmatter" = callPackage
({
  mkDerivation
, attoparsec
, base
, bytestring
, stdenv
, yaml
}:
mkDerivation {

pname = "frontmatter";
version = "0.1.0.2";
sha256 = "66eb97b0d5097397f0238b9af764a8c6ea2bb9a4a16cd1214051719fc313b99d";
libraryHaskellDepends = [
attoparsec
base
bytestring
yaml
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/yamadapc/haskell-frontmatter";
description = "Parses frontmatter as used in Jekyll markdown files";
license = stdenv.lib.licenses.mit;

}) {};
"fsnotify" = callPackage
({
  mkDerivation
, async
, base
, containers
, directory
, filepath
, hinotify
, stdenv
, text
, time
, unix-compat
}:
mkDerivation {

pname = "fsnotify";
version = "0.2.1.1";
sha256 = "175a75962ad07c30c031fa8931f8d3e32abc06a96676e73e65cb7207e9d2dc90";
revision = "1";
editedCabalFile = "0kag32lqkjmv03bycf6ip2vd6vzpcpq4iqs6ivyjh93v40252xxp";
libraryHaskellDepends = [
async
base
containers
directory
filepath
hinotify
text
time
unix-compat
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/haskell-fswatch/hfsnotify";
description = "Cross platform library for file change notification";
license = stdenv.lib.licenses.bsd3;

}) {};
"fsnotify-conduit" = callPackage
({
  mkDerivation
, base
, conduit
, directory
, filepath
, fsnotify
, resourcet
, stdenv
, transformers
}:
mkDerivation {

pname = "fsnotify-conduit";
version = "0.1.1.0";
sha256 = "c300f80b995714a598126e0c1ff82fe08e2acfaa6bb7f61b004eaa063d5ab40e";
libraryHaskellDepends = [
base
conduit
directory
filepath
fsnotify
resourcet
transformers
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/fpco/fsnotify-conduit#readme";
description = "Get filesystem notifications as a stream of events";
license = stdenv.lib.licenses.mit;

}) {};
"funcmp" = callPackage
({
  mkDerivation
, base
, filepath
, pretty
, process
, stdenv
}:
mkDerivation {

pname = "funcmp";
version = "1.9";
sha256 = "08b2b982fc301af160ae5f2ab5d01e850b4ed177963fb19b4d4b2a28e7bdaab4";
enableSeparateDataOutput = true;
libraryHaskellDepends = [
base
filepath
pretty
process
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/peti/funcmp";
description = "Functional MetaPost is a Haskell frontend to the MetaPost language";
license = stdenv.lib.licenses.gpl3;

}) {};
"functor-classes-compat" = callPackage
({
  mkDerivation
, base
, containers
, hashable
, stdenv
, unordered-containers
, vector
}:
mkDerivation {

pname = "functor-classes-compat";
version = "1";
sha256 = "ef11f94f44a74d6657ee61dcd2cfbc6d0889d233a2fb4caae6a29d9c59a1366f";
revision = "2";
editedCabalFile = "07ldwmqfwi2lgnmia5bb0885664a54g2q55f91swgafb11n0csqg";
libraryHaskellDepends = [
base
containers
hashable
unordered-containers
vector
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/phadej/functor-classes-compat#readme";
description = "Data.Functor.Classes instances for core packages";
license = stdenv.lib.licenses.bsd3;

}) {};
"fuzzcheck" = callPackage
({
  mkDerivation
, base
, lifted-base
, monad-control
, QuickCheck
, random
, stdenv
, transformers
}:
mkDerivation {

pname = "fuzzcheck";
version = "0.1.1";
sha256 = "ecd664796e9cf5c608ca904897dd9ec18b471a86fcfb4216328382b28023d961";
libraryHaskellDepends = [
base
lifted-base
monad-control
QuickCheck
random
transformers
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/fpco/fuzzcheck";
description = "A simple checker for stress testing monadic code";
license = stdenv.lib.licenses.bsd3;

}) {};
"fuzzyset" = callPackage
({
  mkDerivation
, base
, base-unicode-symbols
, data-default
, lens
, stdenv
, text
, text-metrics
, unordered-containers
, vector
}:
mkDerivation {

pname = "fuzzyset";
version = "0.1.0.6";
sha256 = "731ae813678de30bbccac03760f7bb0baed5cc8d91ed21e871b1f8d7aafe61a3";
libraryHaskellDepends = [
base
base-unicode-symbols
data-default
lens
text
text-metrics
unordered-containers
vector
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/laserpants/fuzzyset-haskell";
description = "Fuzzy set for approximate string matching";
license = stdenv.lib.licenses.bsd3;

}) {};
"gauge" = callPackage
({
  mkDerivation
, base
, basement
, deepseq
, directory
, process
, stdenv
, vector
}:
mkDerivation {

pname = "gauge";
version = "0.2.1";
sha256 = "2d78584a8fdca851c60a13c79bbb8528e174ec84d6631679e76445f765590110";
libraryHaskellDepends = [
base
basement
deepseq
directory
process
vector
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/vincenthz/hs-gauge";
description = "small framework for performance measurement and analysis";
license = stdenv.lib.licenses.bsd3;

}) {};
"gc" = callPackage
({
  mkDerivation
, base
, Cabal
, cabal-doctest
, stdenv
}:
mkDerivation {

pname = "gc";
version = "0.0.2";
sha256 = "39cc5ac887319aeb184ee0d6ddb5b5a34e3f3d38c3fdf3ecc60bdf31a53dc30c";
setupHaskellDepends = [
base
Cabal
cabal-doctest
];
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/ekmett/gc/";
description = "Poor Richard's Memory Manager";
license = stdenv.lib.licenses.bsd3;

}) {};
"gd" = callPackage
({
  mkDerivation
, base
, bytestring
, expat
, fontconfig
, freetype
, gd
, libjpeg
, libpng
, stdenv
, zlib
}:
mkDerivation {

pname = "gd";
version = "3000.7.3";
sha256 = "14aecb600d9a058b1905dfdef3d51a1eb11fb92f804fbaaa041103a0bfd97fb6";
libraryHaskellDepends = [
base
bytestring
];
librarySystemDepends = [
expat
fontconfig
freetype
gd
libjpeg
libpng
zlib
];
doHaddock = false;
doCheck = false;
description = "A Haskell binding to a subset of the GD graphics library";
license = stdenv.lib.licenses.bsd3;

}) {inherit (pkgs) expat; inherit (pkgs) fontconfig;
inherit (pkgs) freetype; inherit (pkgs) gd;
inherit (pkgs) libjpeg; inherit (pkgs) libpng; inherit (pkgs) zlib;};
"gdax" = callPackage
({
  mkDerivation
, aeson
, aeson-casing
, aeson-pretty
, base
, base64-bytestring
, byteable
, bytestring
, containers
, cryptohash
, exceptions
, hashable
, http-client
, http-client-tls
, lens
, lens-aeson
, mtl
, regex-tdfa
, regex-tdfa-text
, scientific
, stdenv
, text
, time
, unordered-containers
, uuid
, vector
, websockets
, wreq
, wuss
}:
mkDerivation {

pname = "gdax";
version = "0.6.0.0";
sha256 = "deb8efce5e4deb5b45c0d66d23eac65224c3d560d7ac67da6d3616cd5a916721";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
aeson
aeson-casing
base
base64-bytestring
byteable
bytestring
containers
cryptohash
exceptions
hashable
http-client
http-client-tls
lens
lens-aeson
mtl
regex-tdfa
regex-tdfa-text
scientific
text
time
unordered-containers
uuid
vector
websockets
wreq
wuss
];
executableHaskellDepends = [
aeson
aeson-pretty
base
base64-bytestring
bytestring
text
vector
websockets
wuss
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/AndrewRademacher/gdax";
description = "API Wrapping for Coinbase's GDAX exchange";
license = stdenv.lib.licenses.mit;

}) {};
"general-games" = callPackage
({
  mkDerivation
, base
, monad-loops
, MonadRandom
, random
, random-shuffle
, stdenv
}:
mkDerivation {

pname = "general-games";
version = "1.1.1";
sha256 = "8b8e9e3546738b55a74589cf76ebe46c3a2f2fd346a853f9dbbf8bd0563350c0";
libraryHaskellDepends = [
base
monad-loops
MonadRandom
random
random-shuffle
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/cgorski/general-games";
description = "Library supporting simulation of a number of games";
license = stdenv.lib.licenses.mit;

}) {};
"generic-aeson" = callPackage
({
  mkDerivation
, aeson
, attoparsec
, base
, generic-deriving
, mtl
, stdenv
, tagged
, text
, unordered-containers
, vector
}:
mkDerivation {

pname = "generic-aeson";
version = "0.2.0.9";
sha256 = "34c13f91ffa72a1f6d7f43b84fdd19b20db547045eb6164a4119f9a95dcd84cb";
revision = "4";
editedCabalFile = "0m2m2wfv9nhq8m7xl1nrmj4wy3yip3s31b4448za58ryrwkdgjzd";
libraryHaskellDepends = [
aeson
attoparsec
base
generic-deriving
mtl
tagged
text
unordered-containers
vector
];
doHaddock = false;
doCheck = false;
description = "Derivation of Aeson instances using GHC generics";
license = stdenv.lib.licenses.bsd3;

}) {};
"generic-arbitrary" = callPackage
({
  mkDerivation
, base
, QuickCheck
, stdenv
}:
mkDerivation {

pname = "generic-arbitrary";
version = "0.1.0";
sha256 = "69f30a54e7a3d0a45288778e22e6d0d03cfc3b525dfe0a663cd4f559a619bcc6";
libraryHaskellDepends = [
base
QuickCheck
];
doHaddock = false;
doCheck = false;
description = "Generic implementation for QuickCheck's Arbitrary";
license = stdenv.lib.licenses.mit;

}) {};
"generic-deriving" = callPackage
({
  mkDerivation
, base
, containers
, ghc-prim
, stdenv
, template-haskell
}:
mkDerivation {

pname = "generic-deriving";
version = "1.12.1";
sha256 = "f5fd3f733a20deee5a6e752969edac1e04a90e2ee34e005fccb5d35a5c129473";
revision = "1";
editedCabalFile = "1vr9lyvcrdiar6ndqnspwvhvrbnc1fvsjyx458ivpcr6j75j0l5j";
libraryHaskellDepends = [
base
containers
ghc-prim
template-haskell
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/dreixel/generic-deriving";
description = "Generic programming library for generalised deriving";
license = stdenv.lib.licenses.bsd3;

}) {};
"generic-lens" = callPackage
({
  mkDerivation
, base
, profunctors
, stdenv
, tagged
}:
mkDerivation {

pname = "generic-lens";
version = "0.5.1.0";
sha256 = "87d02379ba33a8039e641f3dc069877b84003541981e96b8f06f02b0ba1a0127";
libraryHaskellDepends = [
base
profunctors
tagged
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/kcsongor/generic-lens";
description = "Generic data-structure operations exposed as lenses";
license = stdenv.lib.licenses.bsd3;

}) {};
"generic-random" = callPackage
({
  mkDerivation
, base
, QuickCheck
, stdenv
}:
mkDerivation {

pname = "generic-random";
version = "1.1.0.2";
sha256 = "e188cec239d67aa8fb563400874987453854d8adefeb82cd6188ffc8c8cf547f";
revision = "1";
editedCabalFile = "1qhjsxaadvnh41qrlnzp2wxrbxxsbsz9np4mhwq5vck07kqws5bk";
libraryHaskellDepends = [
base
QuickCheck
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/lysxia/generic-random";
description = "Generic random generators";
license = stdenv.lib.licenses.mit;

}) {};
"generic-xmlpickler" = callPackage
({
  mkDerivation
, base
, generic-deriving
, hxt
, stdenv
, text
}:
mkDerivation {

pname = "generic-xmlpickler";
version = "0.1.0.5";
sha256 = "d51760f5650051eebe561f2b18670657e8398014fa2a623c0e0169bfeca336af";
revision = "8";
editedCabalFile = "1hpcglml4b5yv192syxazminr5v7qjrgqwb2wk0cf7f0sjpm5d0q";
libraryHaskellDepends = [
base
generic-deriving
hxt
text
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/silkapp/generic-xmlpickler";
description = "Generic generation of HXT XmlPickler instances using GHC Generics";
license = stdenv.lib.licenses.bsd3;

}) {};
"generics-eot" = callPackage
({
  mkDerivation
, base
, markdown-unlit
, stdenv
}:
mkDerivation {

pname = "generics-eot";
version = "0.2.1.2";
sha256 = "4e3a96f09e360f1b13ac73e6fb9371eb0fcd6a89c3c8c7966632dd8c19f76a1f";
libraryHaskellDepends = [
base
markdown-unlit
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/soenkehahn/generics-eot#readme";
description = "A library for generic programming that aims to be easy to understand";
license = stdenv.lib.licenses.bsd3;

}) {};
"generics-sop" = callPackage
({
  mkDerivation
, base
, deepseq
, ghc-prim
, stdenv
, template-haskell
}:
mkDerivation {

pname = "generics-sop";
version = "0.3.2.0";
sha256 = "3060ecd09ccbd27ecf825bb89af0af9cfcadd16f747ce5964c501682a2301b99";
revision = "2";
editedCabalFile = "0hc00hjgxm7vzq146d9kwapgqnjbhdi0c7icyvrpc2fhc4cnwlwf";
libraryHaskellDepends = [
base
deepseq
ghc-prim
template-haskell
];
doHaddock = false;
doCheck = false;
description = "Generic Programming using True Sums of Products";
license = stdenv.lib.licenses.bsd3;

}) {};
"generics-sop-lens" = callPackage
({
  mkDerivation
, base
, generics-sop
, lens
, stdenv
}:
mkDerivation {

pname = "generics-sop-lens";
version = "0.1.2.1";
sha256 = "4e49d4cc580d45e25e0abdeee12b1191ae75937af1c7ca03333979584a8a525c";
revision = "3";
editedCabalFile = "1phq0hjpgxfvb8ay9v4ix6axk07mbd266javss9nmqmqmn3vnb51";
libraryHaskellDepends = [
base
generics-sop
lens
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/phadej/generics-sop-lens#readme";
description = "Lenses for types in generics-sop";
license = stdenv.lib.licenses.bsd3;

}) {};
"geniplate-mirror" = callPackage
({
  mkDerivation
, base
, mtl
, stdenv
, template-haskell
}:
mkDerivation {

pname = "geniplate-mirror";
version = "0.7.6";
sha256 = "4b6b82d0348e79ae4a5e1deac029441251ae87ec15a7667cf0a1de5ff80215f8";
libraryHaskellDepends = [
base
mtl
template-haskell
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/danr/geniplate";
description = "Use Template Haskell to generate Uniplate-like functions";
license = stdenv.lib.licenses.bsd3;

}) {};
"genvalidity" = callPackage
({
  mkDerivation
, base
, QuickCheck
, stdenv
, validity
}:
mkDerivation {

pname = "genvalidity";
version = "0.4.0.4";
sha256 = "fca452fe3735be8b4fffdf1e9f9761f5220ed5582a6543a6af4d48a2b56cd63d";
libraryHaskellDepends = [
base
QuickCheck
validity
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/NorfairKing/validity#readme";
description = "Testing utilities for the validity library";
license = stdenv.lib.licenses.mit;

}) {};
"genvalidity-aeson" = callPackage
({
  mkDerivation
, aeson
, base
, genvalidity
, genvalidity-scientific
, genvalidity-text
, genvalidity-unordered-containers
, genvalidity-vector
, QuickCheck
, stdenv
, validity
, validity-aeson
}:
mkDerivation {

pname = "genvalidity-aeson";
version = "0.1.0.0";
sha256 = "4f8798118961f2c5f7986b02df2b91a1f9daa663990c70d3e1a28c9988863390";
libraryHaskellDepends = [
aeson
base
genvalidity
genvalidity-scientific
genvalidity-text
genvalidity-unordered-containers
genvalidity-vector
QuickCheck
validity
validity-aeson
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/NorfairKing/validity#readme";
description = "GenValidity support for aeson";
license = stdenv.lib.licenses.mit;

}) {};
"genvalidity-bytestring" = callPackage
({
  mkDerivation
, base
, bytestring
, genvalidity
, QuickCheck
, stdenv
, validity
, validity-bytestring
}:
mkDerivation {

pname = "genvalidity-bytestring";
version = "0.1.0.0";
sha256 = "4b8aa18a173740aad49964b802a150f866238973caa36549035009c7dc949cae";
libraryHaskellDepends = [
base
bytestring
genvalidity
QuickCheck
validity
validity-bytestring
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/NorfairKing/validity#readme";
description = "GenValidity support for ByteString";
license = stdenv.lib.licenses.mit;

}) {};
"genvalidity-containers" = callPackage
({
  mkDerivation
, base
, containers
, genvalidity
, QuickCheck
, stdenv
, validity
, validity-containers
}:
mkDerivation {

pname = "genvalidity-containers";
version = "0.3.0.0";
sha256 = "0c79575e61974b3bac1e294fa43e2369c76b10e3d64dafeecb35cf29c293e027";
libraryHaskellDepends = [
base
containers
genvalidity
QuickCheck
validity
validity-containers
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/NorfairKing/validity#readme";
description = "GenValidity support for containers";
license = stdenv.lib.licenses.mit;

}) {};
"genvalidity-hspec" = callPackage
({
  mkDerivation
, base
, genvalidity
, genvalidity-property
, hspec
, hspec-core
, QuickCheck
, stdenv
, validity
}:
mkDerivation {

pname = "genvalidity-hspec";
version = "0.5.0.0";
sha256 = "b50fcae1425a5da8666d0c6f439c844f87d4406711664166b083573f2b8b0cbc";
libraryHaskellDepends = [
base
genvalidity
genvalidity-property
hspec
hspec-core
QuickCheck
validity
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/NorfairKing/validity#readme";
description = "Standard spec's for GenValidity instances";
license = stdenv.lib.licenses.mit;

}) {};
"genvalidity-hspec-aeson" = callPackage
({
  mkDerivation
, aeson
, base
, bytestring
, deepseq
, genvalidity
, genvalidity-hspec
, hspec
, QuickCheck
, stdenv
}:
mkDerivation {

pname = "genvalidity-hspec-aeson";
version = "0.1.0.2";
sha256 = "e1896ac9fea6b11c4726bde6ad77b0e573f7157cb9c40225ec290a6cd7f00316";
libraryHaskellDepends = [
aeson
base
bytestring
deepseq
genvalidity
genvalidity-hspec
hspec
QuickCheck
];
doHaddock = false;
doCheck = false;
homepage = "http://cs-syd.eu";
description = "Standard spec's for aeson-related instances";
license = stdenv.lib.licenses.mit;

}) {};
"genvalidity-hspec-binary" = callPackage
({
  mkDerivation
, base
, binary
, deepseq
, genvalidity
, genvalidity-hspec
, hspec
, QuickCheck
, stdenv
}:
mkDerivation {

pname = "genvalidity-hspec-binary";
version = "0.1.0.0";
sha256 = "d4f65a560e2ba34ba9fe36a08241407c235372ed830e8b5842757b9e1a1ca595";
libraryHaskellDepends = [
base
binary
deepseq
genvalidity
genvalidity-hspec
hspec
QuickCheck
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/NorfairKing/validity#readme";
description = "Standard spec's for binary-related Instances";
license = stdenv.lib.licenses.mit;

}) {};
"genvalidity-hspec-cereal" = callPackage
({
  mkDerivation
, base
, cereal
, deepseq
, genvalidity
, genvalidity-hspec
, hspec
, QuickCheck
, stdenv
}:
mkDerivation {

pname = "genvalidity-hspec-cereal";
version = "0.1.0.0";
sha256 = "f330fca068308cfd1606e6438282c3c73c849d9d65618fff4fe044361e9aed05";
libraryHaskellDepends = [
base
cereal
deepseq
genvalidity
genvalidity-hspec
hspec
QuickCheck
];
doHaddock = false;
doCheck = false;
homepage = "http://cs-syd.eu";
description = "Standard spec's for cereal-related instances";
license = stdenv.lib.licenses.mit;

}) {};
"genvalidity-hspec-hashable" = callPackage
({
  mkDerivation
, base
, genvalidity
, genvalidity-hspec
, genvalidity-property
, hashable
, hspec
, QuickCheck
, stdenv
, validity
}:
mkDerivation {

pname = "genvalidity-hspec-hashable";
version = "0.1.0.0";
sha256 = "ce8e6131b8c793a4fcf1cf7bedc461817a91ba1ecc5d80de3641384283ae4600";
libraryHaskellDepends = [
base
genvalidity
genvalidity-hspec
genvalidity-property
hashable
hspec
QuickCheck
validity
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/NorfairKing/validity";
description = "Standard spec's for Hashable instances";
license = stdenv.lib.licenses.mit;

}) {};
"genvalidity-path" = callPackage
({
  mkDerivation
, base
, genvalidity
, path
, stdenv
, validity-path
}:
mkDerivation {

pname = "genvalidity-path";
version = "0.2.0.2";
sha256 = "900c6339e8057cce0a13c0342e09a548d238c6eb7eb69eeb20b82a6174f71590";
libraryHaskellDepends = [
base
genvalidity
path
validity-path
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/NorfairKing/validity#readme";
description = "GenValidity support for Path";
license = stdenv.lib.licenses.mit;

}) {};
"genvalidity-property" = callPackage
({
  mkDerivation
, base
, genvalidity
, hspec
, QuickCheck
, stdenv
, validity
}:
mkDerivation {

pname = "genvalidity-property";
version = "0.1.0.0";
sha256 = "dfd734fe9020f182c735ac0779f7f76e7d4d8e1294eabfb2f453e39259896af5";
libraryHaskellDepends = [
base
genvalidity
hspec
QuickCheck
validity
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/NorfairKing/validity#readme";
description = "Standard properties for functions on `Validity` types";
license = stdenv.lib.licenses.mit;

}) {};
"genvalidity-scientific" = callPackage
({
  mkDerivation
, base
, genvalidity
, QuickCheck
, scientific
, stdenv
, validity
, validity-scientific
}:
mkDerivation {

pname = "genvalidity-scientific";
version = "0.1.0.0";
sha256 = "f231bb6a208e4b941803669f60d3121a2122f22c5686d82a027ec0f9bd3666a1";
libraryHaskellDepends = [
base
genvalidity
QuickCheck
scientific
validity
validity-scientific
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/NorfairKing/validity#readme";
description = "GenValidity support for Scientific";
license = stdenv.lib.licenses.mit;

}) {};
"genvalidity-text" = callPackage
({
  mkDerivation
, array
, base
, genvalidity
, QuickCheck
, stdenv
, text
, validity
, validity-text
}:
mkDerivation {

pname = "genvalidity-text";
version = "0.4.0.0";
sha256 = "769b3633d8770374551b49df01b29e8ef9cce1d8275715ab1cee5868430faced";
libraryHaskellDepends = [
array
base
genvalidity
QuickCheck
text
validity
validity-text
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/NorfairKing/validity#readme";
description = "GenValidity support for Text";
license = stdenv.lib.licenses.mit;

}) {};
"genvalidity-time" = callPackage
({
  mkDerivation
, base
, genvalidity
, QuickCheck
, stdenv
, time
, validity-time
}:
mkDerivation {

pname = "genvalidity-time";
version = "0.1.0.1";
sha256 = "2fb7399591faf6d53426d89f3c97a87410042269aa3e2bc9ec7f0eb4993632b5";
libraryHaskellDepends = [
base
genvalidity
QuickCheck
time
validity-time
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/NorfairKing/validity#readme";
description = "GenValidity support for time";
license = stdenv.lib.licenses.mit;

}) {};
"genvalidity-unordered-containers" = callPackage
({
  mkDerivation
, base
, genvalidity
, hashable
, QuickCheck
, stdenv
, unordered-containers
, validity
, validity-unordered-containers
}:
mkDerivation {

pname = "genvalidity-unordered-containers";
version = "0.1.0.0";
sha256 = "e8fac31236806e21681fa7121a513812e54ff42133c7f82601d1af6082e7f38a";
libraryHaskellDepends = [
base
genvalidity
hashable
QuickCheck
unordered-containers
validity
validity-unordered-containers
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/NorfairKing/validity#readme";
description = "GenValidity support for unordered-containers";
license = stdenv.lib.licenses.mit;

}) {};
"genvalidity-uuid" = callPackage
({
  mkDerivation
, base
, genvalidity
, QuickCheck
, stdenv
, uuid
, validity
, validity-uuid
}:
mkDerivation {

pname = "genvalidity-uuid";
version = "0.0.0.0";
sha256 = "ab784b9bb0465fbfaa16ae9181dc1a0e6dc7000ebde7dd366f659151aa07a9b5";
libraryHaskellDepends = [
base
genvalidity
QuickCheck
uuid
validity
validity-uuid
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/NorfairKing/validity#readme";
description = "GenValidity support for UUID";
license = stdenv.lib.licenses.mit;

}) {};
"genvalidity-vector" = callPackage
({
  mkDerivation
, base
, genvalidity
, QuickCheck
, stdenv
, validity
, validity-vector
, vector
}:
mkDerivation {

pname = "genvalidity-vector";
version = "0.1.0.0";
sha256 = "990ec4f09d5baa30eaf76081db5247f95c2659ac213a185f3bab48d0b93f20c6";
libraryHaskellDepends = [
base
genvalidity
QuickCheck
validity
validity-vector
vector
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/NorfairKing/validity#readme";
description = "GenValidity support for vector";
license = stdenv.lib.licenses.mit;

}) {};
"getopt-generics" = callPackage
({
  mkDerivation
, base
, base-compat
, base-orphans
, generics-sop
, stdenv
, tagged
}:
mkDerivation {

pname = "getopt-generics";
version = "0.13.0.2";
sha256 = "e604aa25d7843a175ec8803e2d60eb6c959fbb4cc7fb0d8321f315ff8671600c";
libraryHaskellDepends = [
base
base-compat
base-orphans
generics-sop
tagged
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/soenkehahn/getopt-generics#readme";
description = "Create command line interfaces with ease";
license = stdenv.lib.licenses.bsd3;

}) {};
"ghc-boot" = callPackage
({
  mkDerivation
, base
, binary
, bytestring
, directory
, filepath
, ghc-boot-th
, stdenv
}:
mkDerivation {

pname = "ghc-boot";
version = "8.2.2";
sha256 = "cf38a4d878a944b100a770450f5472d167657330a906b9d56695a0d29b76973b";
libraryHaskellDepends = [
base
binary
bytestring
directory
filepath
ghc-boot-th
];
doHaddock = false;
doCheck = false;
description = "Shared functionality between GHC and its boot libraries";
license = stdenv.lib.licenses.bsd3;

}) {};
"ghc-compact" = callPackage
({
  mkDerivation
, base
, bytestring
, ghc-prim
, stdenv
}:
mkDerivation {

pname = "ghc-compact";
version = "0.1.0.0";
sha256 = "50bc40e5e5b3a17b267250136af0c04027a9d9eb699e9fee8a5a321bae424e0f";
revision = "1";
editedCabalFile = "1fwcfk515lv3pjzxz87bddk3kdbkaxswxrr37spdlkvyyfrbxyak";
libraryHaskellDepends = [
base
bytestring
ghc-prim
];
doHaddock = false;
doCheck = false;
description = "In memory storage of deeply evaluated data structure";
license = stdenv.lib.licenses.bsd3;

}) {};
"ghc-core" = callPackage
({
  mkDerivation
, base
, colorize-haskell
, directory
, filepath
, pcre-light
, process
, stdenv
}:
mkDerivation {

pname = "ghc-core";
version = "0.5.6";
sha256 = "ec34f3e5892be7c2b52945875cd330397eca3904ae1d9574559855817b8b7e85";
isLibrary = false;
isExecutable = true;
executableHaskellDepends = [
base
colorize-haskell
directory
filepath
pcre-light
process
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/shachaf/ghc-core";
description = "Display GHC's core and assembly output in a pager";
license = stdenv.lib.licenses.bsd3;

}) {};
"ghc-events" = callPackage
({
  mkDerivation
, array
, base
, binary
, bytestring
, containers
, stdenv
, text
, vector
}:
mkDerivation {

pname = "ghc-events";
version = "0.7.2";
sha256 = "b01643f72a448fcd63a0b48781d71b21fb0bb22a54967f0b8a39db0e5638ffbf";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
array
base
binary
bytestring
containers
text
vector
];
executableHaskellDepends = [
base
containers
];
doHaddock = false;
doCheck = false;
description = "Library and tool for parsing .eventlog files from GHC";
license = stdenv.lib.licenses.bsd3;

}) {};
"ghc-exactprint" = callPackage
({
  mkDerivation
, base
, bytestring
, containers
, directory
, filepath
, free
, ghc
, ghc-boot
, ghc-paths
, mtl
, stdenv
, syb
}:
mkDerivation {

pname = "ghc-exactprint";
version = "0.5.6.1";
sha256 = "07fd206d597631d7d8a78fb34423eb436f434a2477c69317c9a002ed23363390";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
base
bytestring
containers
directory
filepath
free
ghc
ghc-boot
ghc-paths
mtl
syb
];
doHaddock = false;
doCheck = false;
description = "ExactPrint for GHC";
license = stdenv.lib.licenses.bsd3;

}) {};
"ghc-parser" = callPackage
({
  mkDerivation
, base
, cpphs
, ghc
, happy
, stdenv
}:
mkDerivation {

pname = "ghc-parser";
version = "0.2.0.2";
sha256 = "bb74cc64ff8fd3d10447075d5982c7c684210762faa15226415d0ed7da756084";
libraryHaskellDepends = [
base
ghc
];
libraryToolDepends = [
cpphs
happy
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/gibiansky/IHaskell";
description = "Haskell source parser from GHC";
license = stdenv.lib.licenses.mit;

}) {};
"ghc-paths" = callPackage
({
  mkDerivation
, base
, Cabal
, directory
, stdenv
}:
mkDerivation {

pname = "ghc-paths";
version = "0.1.0.9";
sha256 = "afa68fb86123004c37c1dc354286af2d87a9dcfb12ddcb80e8bd0cd55bc87945";
revision = "3";
editedCabalFile = "1gx47xbm3qviqccnbsibzkfnlzljvls33jh1ry4l506yvfnf4j10";
setupHaskellDepends = [
base
Cabal
directory
];
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
description = "Knowledge of GHC's installation directories";
license = stdenv.lib.licenses.bsd3;

}) {};
"ghc-prof" = callPackage
({
  mkDerivation
, attoparsec
, base
, containers
, scientific
, stdenv
, text
, time
}:
mkDerivation {

pname = "ghc-prof";
version = "1.4.1.2";
sha256 = "2ee3a57f27d8dff0bfa9be88625aa4c2509193bb7bba0e37b25f3c73eebf3766";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
attoparsec
base
containers
scientific
text
time
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/maoe/ghc-prof";
description = "Library for parsing GHC time and allocation profiling reports";
license = stdenv.lib.licenses.bsd3;

}) {};
"ghc-syb-utils" = callPackage
({
  mkDerivation
, base
, ghc
, stdenv
, syb
}:
mkDerivation {

pname = "ghc-syb-utils";
version = "0.2.3.3";
sha256 = "5f4276c987883b487e687a596bb2ecb67a76027b4b1817b55b53acd92666473a";
libraryHaskellDepends = [
base
ghc
syb
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/nominolo/ghc-syb";
description = "Scrap Your Boilerplate utilities for the GHC API";
license = stdenv.lib.licenses.bsd3;

}) {};
"ghc-tcplugins-extra" = callPackage
({
  mkDerivation
, base
, ghc
, stdenv
}:
mkDerivation {

pname = "ghc-tcplugins-extra";
version = "0.2.5";
sha256 = "9af31e6a80bf6e4470b13d59fba2c45e23938af937930c534b3b36911b117876";
libraryHaskellDepends = [
base
ghc
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/clash-lang/ghc-tcplugins-extra";
description = "Utilities for writing GHC type-checker plugins";
license = stdenv.lib.licenses.bsd2;

}) {};
"ghc-typelits-extra" = callPackage
({
  mkDerivation
, base
, ghc
, ghc-prim
, ghc-tcplugins-extra
, ghc-typelits-knownnat
, ghc-typelits-natnormalise
, integer-gmp
, stdenv
, transformers
}:
mkDerivation {

pname = "ghc-typelits-extra";
version = "0.2.4";
sha256 = "afdd095ff413a40bc060c132bf298f967a393100b790d4f232040540cc39d246";
revision = "1";
editedCabalFile = "1ysf5mr85877a995951wjdg633ylrbpqhpqnn27yb6ayimky5z7a";
libraryHaskellDepends = [
base
ghc
ghc-prim
ghc-tcplugins-extra
ghc-typelits-knownnat
ghc-typelits-natnormalise
integer-gmp
transformers
];
doHaddock = false;
doCheck = false;
homepage = "http://www.clash-lang.org/";
description = "Additional type-level operations on GHC.TypeLits.Nat";
license = stdenv.lib.licenses.bsd2;

}) {};
"ghc-typelits-knownnat" = callPackage
({
  mkDerivation
, base
, ghc
, ghc-tcplugins-extra
, ghc-typelits-natnormalise
, stdenv
, template-haskell
, transformers
}:
mkDerivation {

pname = "ghc-typelits-knownnat";
version = "0.4.2";
sha256 = "792ddd09785fb0f997943ec6128c5550b7480c48cb104ef08aaa5da1272c14c0";
revision = "1";
editedCabalFile = "16x3i6js5z0qr1yw9pfpc7hwhb28djijas2pkx4idwp997mryjaj";
libraryHaskellDepends = [
base
ghc
ghc-tcplugins-extra
ghc-typelits-natnormalise
template-haskell
transformers
];
doHaddock = false;
doCheck = false;
homepage = "http://clash-lang.org/";
description = "Derive KnownNat constraints from other KnownNat constraints";
license = stdenv.lib.licenses.bsd2;

}) {};
"ghc-typelits-natnormalise" = callPackage
({
  mkDerivation
, base
, ghc
, ghc-tcplugins-extra
, integer-gmp
, stdenv
}:
mkDerivation {

pname = "ghc-typelits-natnormalise";
version = "0.5.10";
sha256 = "deb60c337401f858b491631cbe3dbc000696d72fa3be4a9a7ff79cdd6432b697";
revision = "1";
editedCabalFile = "1d4j47glcw0xvdr6sgr221rfpjs48bijx5c5hyqqz6jfp0164grr";
libraryHaskellDepends = [
base
ghc
ghc-tcplugins-extra
integer-gmp
];
doHaddock = false;
doCheck = false;
homepage = "http://www.clash-lang.org/";
description = "GHC typechecker plugin for types of kind GHC.TypeLits.Nat";
license = stdenv.lib.licenses.bsd2;

}) {};
"ghci" = callPackage
({
  mkDerivation
, array
, base
, binary
, bytestring
, containers
, deepseq
, filepath
, ghc-boot
, ghc-boot-th
, stdenv
, template-haskell
, transformers
, unix
}:
mkDerivation {

pname = "ghci";
version = "8.2.2";
sha256 = "f6978f3da79c52659d0f63c33cd763190a1bb2214c01b34abe0e6cc9b4c0ca48";
libraryHaskellDepends = [
array
base
binary
bytestring
containers
deepseq
filepath
ghc-boot
ghc-boot-th
template-haskell
transformers
unix
];
doHaddock = false;
doCheck = false;
description = "The library supporting GHC's interactive interpreter";
license = stdenv.lib.licenses.bsd3;

}) {};
"ghcid" = callPackage
({
  mkDerivation
, ansi-terminal
, base
, cmdargs
, containers
, directory
, extra
, filepath
, fsnotify
, process
, stdenv
, terminal-size
, time
, unix
}:
mkDerivation {

pname = "ghcid";
version = "0.6.10";
sha256 = "92abe44d24072573d08a65a84c500974169502c69a2bf7e6ee8c367e53300de3";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
base
cmdargs
directory
extra
filepath
process
time
];
executableHaskellDepends = [
ansi-terminal
base
cmdargs
containers
directory
extra
filepath
fsnotify
process
terminal-size
time
unix
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/ndmitchell/ghcid#readme";
description = "GHCi based bare bones IDE";
license = stdenv.lib.licenses.bsd3;

}) {};
"ghcjs-base-stub" = callPackage
({
  mkDerivation
, aeson
, attoparsec
, base
, containers
, deepseq
, ghc-prim
, primitive
, scientific
, stdenv
, text
, transformers
, unordered-containers
, vector
}:
mkDerivation {

pname = "ghcjs-base-stub";
version = "0.1.0.4";
sha256 = "27ab2b99bb677b6c19813d713a22f5818b2e53062bc45d0f34648cbf26ab12a8";
libraryHaskellDepends = [
aeson
attoparsec
base
containers
deepseq
ghc-prim
primitive
scientific
text
transformers
unordered-containers
vector
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/louispan/javascript-stub#readme";
description = "Allow GHCJS projects to compile under GHC and develop using intero";
license = stdenv.lib.licenses.bsd3;

}) {};
"ghcjs-codemirror" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "ghcjs-codemirror";
version = "0.0.0.1";
sha256 = "dcd9f5288d7624c8a2a5bf8440d9de6ab8400707d366180b13cc3f472280a513";
enableSeparateDataOutput = true;
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/ghcjs/CodeMirror";
description = "Installs CodeMirror JavaScript files";
license = stdenv.lib.licenses.mit;

}) {};
"ghcjs-perch" = callPackage
({
  mkDerivation
, base
, stdenv
, transformers
}:
mkDerivation {

pname = "ghcjs-perch";
version = "0.3.3.2";
sha256 = "a7cee1699b51af9e0aa62dec2ab4a04f68250106da02c77bed19dd69fae5e6d9";
libraryHaskellDepends = [
base
transformers
];
doHaddock = false;
doCheck = false;
description = "GHCJS version of Perch library";
license = stdenv.lib.licenses.mit;

}) {};
"ghost-buster" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "ghost-buster";
version = "0.1.1.0";
sha256 = "02d0930ee77838e7f5a04ebc0a74f62b15218b8ace4a5b88510d9a6b56dbf6d6";
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/Lazersmoke/ghost-buster#readme";
description = "Existential type utilites";
license = stdenv.lib.licenses.bsd3;

}) {};
"gi-atk" = callPackage
({
  mkDerivation
, atk
, base
, bytestring
, Cabal
, containers
, gi-glib
, gi-gobject
, haskell-gi
, haskell-gi-base
, haskell-gi-overloading
, stdenv
, text
, transformers
}:
mkDerivation {

pname = "gi-atk";
version = "2.0.15";
sha256 = "89753b4517e77ea956dcfd1294b4b98032c6e50df912e28c9a796d2b825fbfee";
setupHaskellDepends = [
base
Cabal
haskell-gi
];
libraryHaskellDepends = [
base
bytestring
containers
gi-glib
gi-gobject
haskell-gi
haskell-gi-base
haskell-gi-overloading
text
transformers
];
libraryPkgconfigDepends = [
atk
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/haskell-gi/haskell-gi";
description = "Atk bindings";
license = stdenv.lib.licenses.lgpl21;

}) {inherit (pkgs) atk;};
"gi-cairo" = callPackage
({
  mkDerivation
, base
, bytestring
, Cabal
, cairo
, containers
, haskell-gi
, haskell-gi-base
, haskell-gi-overloading
, stdenv
, text
, transformers
}:
mkDerivation {

pname = "gi-cairo";
version = "1.0.17";
sha256 = "5dbda70a038a93cb07130597407de9cde1436603beca3f2a0a6b43953c55a7ab";
setupHaskellDepends = [
base
Cabal
haskell-gi
];
libraryHaskellDepends = [
base
bytestring
containers
haskell-gi
haskell-gi-base
haskell-gi-overloading
text
transformers
];
libraryPkgconfigDepends = [
cairo
];
doHaddock = false;
doCheck = false;
preCompileBuildDriver = ''
  PKG_CONFIG_PATH+=":${cairo}/lib/pkgconfig"
  setupCompileFlags+=" $(pkg-config --libs cairo-gobject)"
'';
homepage = "https://github.com/haskell-gi/haskell-gi";
description = "Cairo bindings";
license = stdenv.lib.licenses.lgpl21;

}) {inherit (pkgs) cairo;};
"gi-glib" = callPackage
({
  mkDerivation
, base
, bytestring
, Cabal
, containers
, glib
, haskell-gi
, haskell-gi-base
, haskell-gi-overloading
, stdenv
, text
, transformers
}:
mkDerivation {

pname = "gi-glib";
version = "2.0.16";
sha256 = "1cbb6289dcd628ed6044c75daff3237ac5c87ef793c03ecf78df3380bf2e140e";
setupHaskellDepends = [
base
Cabal
haskell-gi
];
libraryHaskellDepends = [
base
bytestring
containers
haskell-gi
haskell-gi-base
haskell-gi-overloading
text
transformers
];
libraryPkgconfigDepends = [
glib
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/haskell-gi/haskell-gi";
description = "GLib bindings";
license = stdenv.lib.licenses.lgpl21;

}) {inherit (pkgs) glib;};
"gi-gobject" = callPackage
({
  mkDerivation
, base
, bytestring
, Cabal
, containers
, gi-glib
, glib
, haskell-gi
, haskell-gi-base
, haskell-gi-overloading
, stdenv
, text
, transformers
}:
mkDerivation {

pname = "gi-gobject";
version = "2.0.16";
sha256 = "c57844d5b9566834ece584bfbbdff1c3ef2de5aa67c711c406fe92d4b927f6ad";
setupHaskellDepends = [
base
Cabal
haskell-gi
];
libraryHaskellDepends = [
base
bytestring
containers
gi-glib
haskell-gi
haskell-gi-base
haskell-gi-overloading
text
transformers
];
libraryPkgconfigDepends = [
glib
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/haskell-gi/haskell-gi";
description = "GObject bindings";
license = stdenv.lib.licenses.lgpl21;

}) {inherit (pkgs) glib;};
"gi-javascriptcore" = callPackage
({
  mkDerivation
, base
, bytestring
, Cabal
, containers
, haskell-gi
, haskell-gi-base
, haskell-gi-overloading
, stdenv
, text
, transformers
, webkitgtk
}:
mkDerivation {

pname = "gi-javascriptcore";
version = "4.0.15";
sha256 = "03ea9ef17c74bbb57d2b6260a8f46b6e91b22de20788c53de823e9a8e32cbf1d";
setupHaskellDepends = [
base
Cabal
haskell-gi
];
libraryHaskellDepends = [
base
bytestring
containers
haskell-gi
haskell-gi-base
haskell-gi-overloading
text
transformers
];
libraryPkgconfigDepends = [
webkitgtk
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/haskell-gi/haskell-gi";
description = "JavaScriptCore bindings";
license = stdenv.lib.licenses.lgpl21;

}) {inherit (pkgs) webkitgtk;};
"ginger" = callPackage
({
  mkDerivation
, aeson
, aeson-pretty
, base
, bytestring
, data-default
, filepath
, http-types
, mtl
, parsec
, safe
, scientific
, stdenv
, text
, time
, transformers
, unordered-containers
, utf8-string
, vector
}:
mkDerivation {

pname = "ginger";
version = "0.7.3.0";
sha256 = "fa1d71fa484e2a96b46bc71669b2d6e8f8233e12c0b29e550867b5797b0493b0";
isLibrary = true;
isExecutable = true;
enableSeparateDataOutput = true;
libraryHaskellDepends = [
aeson
aeson-pretty
base
bytestring
data-default
filepath
http-types
mtl
parsec
safe
scientific
text
time
transformers
unordered-containers
utf8-string
vector
];
executableHaskellDepends = [
aeson
base
bytestring
data-default
text
transformers
unordered-containers
];
doHaddock = false;
doCheck = false;
homepage = "https://bitbucket.org/tdammers/ginger";
description = "An implementation of the Jinja2 template language in Haskell";
license = stdenv.lib.licenses.mit;

}) {};
"git" = callPackage
({
  mkDerivation
, base
, byteable
, bytestring
, containers
, cryptonite
, hourglass
, memory
, patience
, random
, stdenv
, system-fileio
, system-filepath
, unix-compat
, utf8-string
, vector
, zlib
, zlib-bindings
}:
mkDerivation {

pname = "git";
version = "0.2.1";
sha256 = "5fb7d86687262fc92faedfdb51fd99d02ef3d4bd09bc151dc2e0a1b23afd1048";
enableSeparateDataOutput = true;
libraryHaskellDepends = [
base
byteable
bytestring
containers
cryptonite
hourglass
memory
patience
random
system-fileio
system-filepath
unix-compat
utf8-string
vector
zlib
zlib-bindings
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/vincenthz/hs-git";
description = "Git operations in haskell";
license = stdenv.lib.licenses.bsd3;

}) {};
"github" = callPackage
({
  mkDerivation
, aeson
, aeson-compat
, base
, base-compat
, base16-bytestring
, binary
, binary-orphans
, byteable
, bytestring
, containers
, cryptohash
, deepseq
, deepseq-generics
, exceptions
, hashable
, http-client
, http-client-tls
, http-link-header
, http-types
, iso8601-time
, mtl
, network-uri
, semigroups
, stdenv
, text
, time
, tls
, transformers
, transformers-compat
, unordered-containers
, vector
, vector-instances
}:
mkDerivation {

pname = "github";
version = "0.19";
sha256 = "f0ea9b57cd21645bba40e37e5e7c83ad78469cc3e32526b15e9a4bb2b3b84394";
revision = "3";
editedCabalFile = "0s3zmkzgfbh1mc0492i7rjiawxkzg0im8z2p10niv5ff58m87yri";
libraryHaskellDepends = [
aeson
aeson-compat
base
base-compat
base16-bytestring
binary
binary-orphans
byteable
bytestring
containers
cryptohash
deepseq
deepseq-generics
exceptions
hashable
http-client
http-client-tls
http-link-header
http-types
iso8601-time
mtl
network-uri
semigroups
text
time
tls
transformers
transformers-compat
unordered-containers
vector
vector-instances
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/phadej/github";
description = "Access to the GitHub API, v3";
license = stdenv.lib.licenses.bsd3;

}) {};
"github-release" = callPackage
({
  mkDerivation
, aeson
, base
, bytestring
, http-client
, http-client-tls
, http-types
, mime-types
, optparse-generic
, stdenv
, text
, unordered-containers
, uri-templater
}:
mkDerivation {

pname = "github-release";
version = "1.1.6";
sha256 = "b6c50a9e2bcf499bed0839aff920eda91a291f6298e40c0415cd2c7d745ebbaa";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
aeson
base
bytestring
http-client
http-client-tls
http-types
mime-types
optparse-generic
text
unordered-containers
uri-templater
];
executableHaskellDepends = [
aeson
base
bytestring
http-client
http-client-tls
http-types
mime-types
optparse-generic
text
unordered-containers
uri-templater
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/tfausak/github-release#readme";
description = "Upload files to GitHub releases";
license = stdenv.lib.licenses.mit;

}) {};
"github-types" = callPackage
({
  mkDerivation
, aeson
, base
, stdenv
, text
, time
}:
mkDerivation {

pname = "github-types";
version = "0.2.1";
sha256 = "cce4ea461b3ea7c92d130181244cfe7f29c10aecc7e7a980ee6722b6d6af7867";
libraryHaskellDepends = [
aeson
base
text
time
];
doHaddock = false;
doCheck = false;
description = "Type definitions for objects used by the GitHub v3 API";
license = "unknown";

}) {};
"github-webhook-handler" = callPackage
({
  mkDerivation
, aeson
, base
, bytestring
, cryptohash
, github-types
, stdenv
, text
, transformers
, uuid
, vector
}:
mkDerivation {

pname = "github-webhook-handler";
version = "0.0.8";
sha256 = "1d908854606683c236720c2de3988ae723591be02b1c668bd8ba0ffa03b34fea";
revision = "1";
editedCabalFile = "1nhwindcplcyyffvzw0cig1p0m8165laq3hv94s596rsi3b5pgqr";
libraryHaskellDepends = [
aeson
base
bytestring
cryptohash
github-types
text
transformers
uuid
vector
];
doHaddock = false;
doCheck = false;
description = "GitHub WebHook Handler";
license = stdenv.lib.licenses.mit;

}) {};
"github-webhook-handler-snap" = callPackage
({
  mkDerivation
, base
, bytestring
, case-insensitive
, github-types
, github-webhook-handler
, snap-core
, stdenv
, uuid
}:
mkDerivation {

pname = "github-webhook-handler-snap";
version = "0.0.7";
sha256 = "d4f526f4027a0c1cd9bdf455fbfb0c1742539eb3379b22ba59f1647133202c91";
revision = "1";
editedCabalFile = "1l0c2xn41pylap7vw33r67pmmcafr1fdm04l9b8h206c270bsinm";
libraryHaskellDepends = [
base
bytestring
case-insensitive
github-types
github-webhook-handler
snap-core
uuid
];
doHaddock = false;
doCheck = false;
description = "GitHub WebHook Handler implementation for Snap";
license = stdenv.lib.licenses.mit;

}) {};
"github-webhooks" = callPackage
({
  mkDerivation
, aeson
, base
, base16-bytestring
, bytestring
, cryptonite
, deepseq
, deepseq-generics
, memory
, stdenv
, text
, time
, vector
}:
mkDerivation {

pname = "github-webhooks";
version = "0.9.1";
sha256 = "0b9918cbc7c870ebaa6f6916bcd583c52d3d1456d98edd863d58bf0c7ac49cc0";
libraryHaskellDepends = [
aeson
base
base16-bytestring
bytestring
cryptonite
deepseq
deepseq-generics
memory
text
time
vector
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/onrock-eng/github-webhooks#readme";
description = "Aeson instances for GitHub Webhook payloads";
license = stdenv.lib.licenses.mit;

}) {};
"gitrev" = callPackage
({
  mkDerivation
, base
, base-compat
, directory
, filepath
, process
, stdenv
, template-haskell
}:
mkDerivation {

pname = "gitrev";
version = "1.3.1";
sha256 = "a89964db24f56727b0e7b10c98fe7c116d721d8c46f52d6e77088669aaa38332";
libraryHaskellDepends = [
base
base-compat
directory
filepath
process
template-haskell
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/acfoltzer/gitrev";
description = "Compile git revision info into Haskell projects";
license = stdenv.lib.licenses.bsd3;

}) {};
"gl" = callPackage
({
  mkDerivation
, base
, Cabal
, containers
, directory
, filepath
, fixed
, half
, hxt
, libGL
, stdenv
, transformers
}:
mkDerivation {

pname = "gl";
version = "0.8.0";
sha256 = "aa4d2838157c86da920bda651458a4266fccc7c291ea93a69558ab02540e1439";
revision = "1";
editedCabalFile = "17m5vagiq1v7zg6409f56qqy28jd0xp13yk44s661rcwj0f4pd14";
setupHaskellDepends = [
base
Cabal
containers
directory
filepath
hxt
transformers
];
libraryHaskellDepends = [
base
containers
fixed
half
transformers
];
librarySystemDepends = [
libGL
];
doHaddock = false;
doCheck = false;
description = "Complete OpenGL raw bindings";
license = stdenv.lib.licenses.bsd3;

}) {inherit (pkgs) libGL;};
"glabrous" = callPackage
({
  mkDerivation
, aeson
, aeson-pretty
, attoparsec
, base
, bytestring
, cereal
, cereal-text
, either
, stdenv
, text
, unordered-containers
}:
mkDerivation {

pname = "glabrous";
version = "0.3.5";
sha256 = "e993ccc448eda5e86a680c1cd2a99df3b54f7461aaa190d3183ffd5ed9c57558";
libraryHaskellDepends = [
aeson
aeson-pretty
attoparsec
base
bytestring
cereal
cereal-text
either
text
unordered-containers
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/MichelBoucey/glabrous";
description = "A template DSL library";
license = stdenv.lib.licenses.bsd3;

}) {};
"glaze" = callPackage
({
  mkDerivation
, base
, lens
, stdenv
}:
mkDerivation {

pname = "glaze";
version = "0.3.0.1";
sha256 = "bbb184408bcf24e8c4f89a960cf7a69ab0c51e98bf84c5fa9901aae1702e22a1";
libraryHaskellDepends = [
base
lens
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/louispan/glaze#readme";
description = "Framework for rendering things with metadata/headers and values";
license = stdenv.lib.licenses.bsd3;

}) {};
"glazier" = callPackage
({
  mkDerivation
, base
, lens
, mmorph
, mtl
, semigroupoids
, stdenv
, transformers
}:
mkDerivation {

pname = "glazier";
version = "0.11.0.1";
sha256 = "1151031c7943140b19fc3b319f6e1c648cc75fa0fd619f17d64dfe7857b60b46";
libraryHaskellDepends = [
base
lens
mmorph
mtl
semigroupoids
transformers
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/louispan/glazier#readme";
description = "Composable widgets framework with enhanced with transformers and lens";
license = stdenv.lib.licenses.bsd3;

}) {};
"glazier-pipes" = callPackage
({
  mkDerivation
, base
, glazier
, mmorph
, pipes
, stdenv
, stm
, stm-extras
, transformers
}:
mkDerivation {

pname = "glazier-pipes";
version = "0.1.5.1";
sha256 = "9d1d044a4d8641a0da09d6447298530a8a785bb3e29c0177a0b682f9bbf4d1ac";
libraryHaskellDepends = [
base
glazier
mmorph
pipes
stm
stm-extras
transformers
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/louispan/glazier-pipes#readme";
description = "A threaded rendering framework using glaizer and pipes";
license = stdenv.lib.licenses.bsd3;

}) {};
"glib" = callPackage
({
  mkDerivation
, base
, bytestring
, Cabal
, containers
, glib
, gtk2hs-buildtools
, stdenv
, text
, utf8-string
}:
mkDerivation {

pname = "glib";
version = "0.13.6.0";
sha256 = "4e71062c6a458440294d820e21449aa4666deed2ea233ef5915da7c1d4aee8eb";
setupHaskellDepends = [
base
Cabal
gtk2hs-buildtools
];
libraryHaskellDepends = [
base
bytestring
containers
text
utf8-string
];
libraryPkgconfigDepends = [
glib
];
doHaddock = false;
doCheck = false;
homepage = "http://projects.haskell.org/gtk2hs/";
description = "Binding to the GLIB library for Gtk2Hs";
license = stdenv.lib.licenses.lgpl21;

}) {inherit (pkgs) glib;};
"glob-posix" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "glob-posix";
version = "0.1.0.1";
sha256 = "3245382c77ebaceea958ef62510d073b96e10a43bf69536cf9079d69da363caf";
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/rdnetto/glob-posix#readme";
description = "Haskell bindings for POSIX glob library";
license = stdenv.lib.licenses.asl20;

}) {};
"gloss" = callPackage
({
  mkDerivation
, base
, bmp
, bytestring
, containers
, ghc-prim
, gloss-rendering
, GLUT
, OpenGL
, stdenv
}:
mkDerivation {

pname = "gloss";
version = "1.11.1.1";
sha256 = "14e09540ba120c4d0d9153655c35602de4657aa40ad2add693ca12f825d1d653";
revision = "1";
editedCabalFile = "1bxdf2kmdcqndg25jgh0l1bmr39795gxrcx0rgzcich4n8l88pvb";
libraryHaskellDepends = [
base
bmp
bytestring
containers
ghc-prim
gloss-rendering
GLUT
OpenGL
];
doHaddock = false;
doCheck = false;
homepage = "http://gloss.ouroborus.net";
description = "Painless 2D vector graphics, animations and simulations";
license = stdenv.lib.licenses.mit;

}) {};
"gloss-accelerate" = callPackage
({
  mkDerivation
, accelerate
, base
, gloss
, gloss-rendering
, stdenv
}:
mkDerivation {

pname = "gloss-accelerate";
version = "2.0.0.1";
sha256 = "82a90b0093ecb9b2b8a42137071c1ff4aad6dfa9880634c0fc7054d0d544df80";
libraryHaskellDepends = [
accelerate
base
gloss
gloss-rendering
];
doHaddock = false;
doCheck = false;
description = "Extras to interface Gloss and Accelerate";
license = stdenv.lib.licenses.bsd3;

}) {};
"gloss-algorithms" = callPackage
({
  mkDerivation
, base
, containers
, ghc-prim
, gloss
, stdenv
}:
mkDerivation {

pname = "gloss-algorithms";
version = "1.11.1.1";
sha256 = "e1a7561c87a2d105054017d1c4fd393f597ddfcf0409aad097ba7e8e7aae23f2";
revision = "1";
editedCabalFile = "08w84grwvl079gzjwnshfgs12kh1p2gbc5kvbw6qdxc7g292hd5m";
libraryHaskellDepends = [
base
containers
ghc-prim
gloss
];
doHaddock = false;
doCheck = false;
homepage = "http://gloss.ouroborus.net";
description = "Data structures and algorithms for working with 2D graphics";
license = stdenv.lib.licenses.mit;

}) {};
"gloss-raster" = callPackage
({
  mkDerivation
, base
, containers
, ghc-prim
, gloss
, gloss-rendering
, repa
, stdenv
}:
mkDerivation {

pname = "gloss-raster";
version = "1.11.1.1";
sha256 = "277897eb2646fb66e23391796ed9e92360467ddf3acac196f658203cd9787c46";
revision = "1";
editedCabalFile = "1kx0n4kwy5xdg4b5b79a815y8yqcsld8s5p784qhgg92s0cmnsjf";
libraryHaskellDepends = [
base
containers
ghc-prim
gloss
gloss-rendering
repa
];
doHaddock = false;
doCheck = false;
homepage = "http://gloss.ouroborus.net";
description = "Parallel rendering of raster images";
license = stdenv.lib.licenses.mit;

}) {};
"gloss-raster-accelerate" = callPackage
({
  mkDerivation
, accelerate
, base
, colour-accelerate
, gloss
, gloss-accelerate
, stdenv
}:
mkDerivation {

pname = "gloss-raster-accelerate";
version = "2.0.0.0";
sha256 = "2db125ba6435ee4c20ac4210a66899a063f34554e80e4b7a88c6e4e579ea18c4";
revision = "2";
editedCabalFile = "0k0a562qa8khj39zpgp4sr8kh8h2q4krjjhbvpbsll4r83067ahj";
libraryHaskellDepends = [
accelerate
base
colour-accelerate
gloss
gloss-accelerate
];
doHaddock = false;
doCheck = false;
description = "Parallel rendering of raster images using Accelerate";
license = stdenv.lib.licenses.bsd3;

}) {};
"gloss-rendering" = callPackage
({
  mkDerivation
, base
, bmp
, bytestring
, containers
, GLUT
, OpenGL
, stdenv
}:
mkDerivation {

pname = "gloss-rendering";
version = "1.11.1.1";
sha256 = "1f0a9a6d2124d4cbfb30821f1654d2cd9d7c1766310cf7f9009ccc9808474af4";
revision = "1";
editedCabalFile = "1z580vh4idsbndjjla6gniz8cacxwj9206llyafl83brrqjhm14b";
libraryHaskellDepends = [
base
bmp
bytestring
containers
GLUT
OpenGL
];
doHaddock = false;
doCheck = false;
description = "Gloss picture data types and rendering functions";
license = stdenv.lib.licenses.mit;

}) {};
"gluturtle" = callPackage
({
  mkDerivation
, base
, convertible
, GLUT
, stdenv
, stm
, yjsvg
, yjtools
}:
mkDerivation {

pname = "gluturtle";
version = "0.0.58.1";
sha256 = "178658ce4f76ac0a855ca9123cdc8bda0ecc5531356551c00ba6de98dcbd934b";
libraryHaskellDepends = [
base
convertible
GLUT
stm
yjsvg
yjtools
];
doHaddock = false;
doCheck = false;
description = "turtle like LOGO with glut";
license = stdenv.lib.licenses.bsd3;

}) {};
"gnuplot" = callPackage
({
  mkDerivation
, array
, base
, containers
, data-accessor
, data-accessor-transformers
, deepseq
, filepath
, process
, semigroups
, stdenv
, temporary
, time
, transformers
, utility-ht
}:
mkDerivation {

pname = "gnuplot";
version = "0.5.5.2";
sha256 = "b69a2c3173f6c495937b8e73d9c7f265f8cd89f6cd376a5cfdf2f91198bd97d6";
isLibrary = true;
isExecutable = true;
enableSeparateDataOutput = true;
libraryHaskellDepends = [
array
base
containers
data-accessor
data-accessor-transformers
deepseq
filepath
process
semigroups
temporary
time
transformers
utility-ht
];
doHaddock = false;
doCheck = false;
homepage = "http://www.haskell.org/haskellwiki/Gnuplot";
description = "2D and 3D plots using gnuplot";
license = stdenv.lib.licenses.bsd3;

}) {};
"goggles" = callPackage
({
  mkDerivation
, aeson
, attoparsec
, base
, base64-bytestring
, binary
, bytestring
, containers
, cryptonite
, exceptions
, filepath
, http-client
, http-client-tls
, http-types
, memory
, mtl
, pem
, req
, scientific
, stdenv
, stm
, text
, time
, transformers
, unix-time
, x509
, x509-store
}:
mkDerivation {

pname = "goggles";
version = "0.3.2";
sha256 = "a64d25c6506b172ec6f3b8a55f7934c23ccedc66c1acfb62432063dff743e93c";
libraryHaskellDepends = [
aeson
attoparsec
base
base64-bytestring
binary
bytestring
containers
cryptonite
exceptions
filepath
http-client
http-client-tls
http-types
memory
mtl
pem
req
scientific
stm
text
time
transformers
unix-time
x509
x509-store
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/ocramz/goggles";
description = "Extensible interface to Web APIs";
license = stdenv.lib.licenses.bsd3;

}) {};
"google-cloud" = callPackage
({
  mkDerivation
, aeson
, base
, bytestring
, http-client
, http-client-tls
, http-types
, mtl
, random
, scientific
, stdenv
, stm
, text
, time
, unordered-containers
}:
mkDerivation {

pname = "google-cloud";
version = "0.0.4";
sha256 = "09a77ce6846ea0c5f9d7e5578dcddcbaf4905437445edb45c2da35456324fb9a";
revision = "1";
editedCabalFile = "0512swl7ydlcjdbvcb2xm59q97yr3wxgh3sfdsz3zdm1y88qi18c";
libraryHaskellDepends = [
aeson
base
bytestring
http-client
http-client-tls
http-types
mtl
random
scientific
stm
text
time
unordered-containers
];
doHaddock = false;
doCheck = false;
description = "Client for the Google Cloud APIs";
license = stdenv.lib.licenses.mit;

}) {};
"google-oauth2-jwt" = callPackage
({
  mkDerivation
, base
, base64-bytestring
, bytestring
, HsOpenSSL
, RSA
, stdenv
, text
, unix-time
}:
mkDerivation {

pname = "google-oauth2-jwt";
version = "0.2.2";
sha256 = "38dc52d516d085c50c4c1771a0364417d6b79aef1caa7558af21feda35c09b2a";
libraryHaskellDepends = [
base
base64-bytestring
bytestring
HsOpenSSL
RSA
text
unix-time
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/MichelBoucey/google-oauth2-jwt";
description = "Get a signed JWT for Google Service Accounts";
license = stdenv.lib.licenses.bsd3;

}) {};
"gpolyline" = callPackage
({
  mkDerivation
, base
, split
, stdenv
}:
mkDerivation {

pname = "gpolyline";
version = "0.1.0.1";
sha256 = "28b3a644853ba6f0a7d6465d8d62646a10c995008a799ae67e728c8cf4a17a05";
libraryHaskellDepends = [
base
split
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/fegu/gpolyline";
description = "Pure module for encoding/decoding Google Polyline";
license = stdenv.lib.licenses.bsd3;

}) {};
"graph-core" = callPackage
({
  mkDerivation
, base
, containers
, deepseq
, hashable
, mtl
, safe
, stdenv
, unordered-containers
, vector
}:
mkDerivation {

pname = "graph-core";
version = "0.3.0.0";
sha256 = "378f0baa40ebbb78e8c389f79e363eb573cdf182f799684d2f3d6ac51b10e854";
libraryHaskellDepends = [
base
containers
deepseq
hashable
mtl
safe
unordered-containers
vector
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/factisresearch/graph-core";
description = "Fast, memory efficient and persistent graph implementation";
license = stdenv.lib.licenses.mit;

}) {};
"graph-wrapper" = callPackage
({
  mkDerivation
, array
, base
, containers
, stdenv
}:
mkDerivation {

pname = "graph-wrapper";
version = "0.2.5.1";
sha256 = "8361853fca2d2251bd233e18393053dd391d21ca6f210b2bc861b0e0f4c2e113";
libraryHaskellDepends = [
array
base
containers
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/soenkehahn/graph-wrapper";
description = "A wrapper around the standard Data.Graph with a less awkward interface";
license = stdenv.lib.licenses.bsd3;

}) {};
"graphs" = callPackage
({
  mkDerivation
, array
, base
, containers
, stdenv
, transformers
, transformers-compat
, void
}:
mkDerivation {

pname = "graphs";
version = "0.7.1";
sha256 = "acd37a7ba5dd02f24131ac8971a5f8639cc0e9db687e7d6790a84af4af0ce209";
libraryHaskellDepends = [
array
base
containers
transformers
transformers-compat
void
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/ekmett/graphs";
description = "A simple monadic graph library";
license = stdenv.lib.licenses.bsd3;

}) {};
"gravatar" = callPackage
({
  mkDerivation
, base
, bytestring
, data-default
, HTTP
, pureMD5
, stdenv
, text
}:
mkDerivation {

pname = "gravatar";
version = "0.8.0";
sha256 = "6f6000acaea47f3fc8711f5a2a62d5fbe96f5bb698fcb997f9f07ffe3102f4d7";
libraryHaskellDepends = [
base
bytestring
data-default
HTTP
pureMD5
text
];
doHaddock = false;
doCheck = false;
description = "Generate Gravatar image URLs";
license = stdenv.lib.licenses.mit;

}) {};
"graylog" = callPackage
({
  mkDerivation
, aeson
, aeson-casing
, base
, bytestring
, network
, random
, scientific
, stdenv
, text
, time
, vector
}:
mkDerivation {

pname = "graylog";
version = "0.1.0.1";
sha256 = "2d8173e61da8d02c39cb95e6ccea8a167c792f682a496aed5fe4edfd0e6a0082";
libraryHaskellDepends = [
aeson
aeson-casing
base
bytestring
network
random
scientific
text
time
vector
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/AndrewRademacher/haskell-graylog";
description = "Support for graylog output";
license = "unknown";

}) {};
"groom" = callPackage
({
  mkDerivation
, base
, haskell-src-exts
, stdenv
}:
mkDerivation {

pname = "groom";
version = "0.1.2.1";
sha256 = "a6b4a4d3af1b26f63039f04bd4176493f8dd4f6a9ab281f0e33c0151c20de59d";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
base
haskell-src-exts
];
executableHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
description = "Pretty printing for well-behaved Show instances";
license = stdenv.lib.licenses.bsd3;

}) {};
"groundhog" = callPackage
({
  mkDerivation
, aeson
, attoparsec
, base
, base64-bytestring
, blaze-builder
, bytestring
, containers
, monad-control
, mtl
, resourcet
, safe-exceptions
, scientific
, stdenv
, text
, time
, transformers
, transformers-base
, transformers-compat
}:
mkDerivation {

pname = "groundhog";
version = "0.8.0.1";
sha256 = "b95ca6023e44c0e6592b5823235f794ebb2a35b0bcb26a241216dbc06f163b63";
libraryHaskellDepends = [
aeson
attoparsec
base
base64-bytestring
blaze-builder
bytestring
containers
monad-control
mtl
resourcet
safe-exceptions
scientific
text
time
transformers
transformers-base
transformers-compat
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/lykahb/groundhog";
description = "Type-safe datatype-database mapping library";
license = stdenv.lib.licenses.bsd3;

}) {};
"groundhog-inspector" = callPackage
({
  mkDerivation
, aeson-pretty
, base
, bytestring
, cmdargs
, containers
, groundhog
, groundhog-sqlite
, groundhog-th
, mtl
, regex-compat
, stdenv
, syb
, template-haskell
, text
, time
, transformers
}:
mkDerivation {

pname = "groundhog-inspector";
version = "0.8.0.2";
sha256 = "bfbad62b62174e24f8fe29ce7d3d232392a23221107a32397d91c22531e87af1";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
aeson-pretty
base
bytestring
containers
groundhog
groundhog-th
regex-compat
syb
template-haskell
text
time
transformers
];
executableHaskellDepends = [
base
bytestring
cmdargs
containers
groundhog
groundhog-sqlite
groundhog-th
mtl
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/lykahb/groundhog";
description = "Type-safe datatype-database mapping library";
license = stdenv.lib.licenses.bsd3;

}) {};
"groundhog-mysql" = callPackage
({
  mkDerivation
, base
, bytestring
, containers
, groundhog
, monad-control
, monad-logger
, mysql
, mysql-simple
, resource-pool
, resourcet
, stdenv
, text
, time
, transformers
}:
mkDerivation {

pname = "groundhog-mysql";
version = "0.8.0.1";
sha256 = "b90ccb88dd41d3d87392baa9a772082ea316539e6998a45cb6146678e4649a40";
libraryHaskellDepends = [
base
bytestring
containers
groundhog
monad-control
monad-logger
mysql
mysql-simple
resource-pool
resourcet
text
time
transformers
];
doHaddock = false;
doCheck = false;
description = "MySQL backend for the groundhog library";
license = stdenv.lib.licenses.bsd3;

}) {};
"groundhog-postgresql" = callPackage
({
  mkDerivation
, aeson
, attoparsec
, base
, blaze-builder
, bytestring
, containers
, groundhog
, monad-control
, postgresql-libpq
, postgresql-simple
, resource-pool
, resourcet
, stdenv
, text
, time
, transformers
, vector
}:
mkDerivation {

pname = "groundhog-postgresql";
version = "0.8.0.3";
sha256 = "f4524ee477ca5e2d707821f8d20f926869bca9c5e75c9303c8f1d315b90ae247";
libraryHaskellDepends = [
aeson
attoparsec
base
blaze-builder
bytestring
containers
groundhog
monad-control
postgresql-libpq
postgresql-simple
resource-pool
resourcet
text
time
transformers
vector
];
doHaddock = false;
doCheck = false;
description = "PostgreSQL backend for the groundhog library";
license = stdenv.lib.licenses.bsd3;

}) {};
"groundhog-sqlite" = callPackage
({
  mkDerivation
, base
, bytestring
, containers
, direct-sqlite
, groundhog
, monad-control
, resource-pool
, resourcet
, stdenv
, text
, transformers
, unordered-containers
}:
mkDerivation {

pname = "groundhog-sqlite";
version = "0.8.0.1";
sha256 = "570accc9a0c518f47462479e5ef103d607d1fc592eb391cedec1e09cbd75ccf8";
libraryHaskellDepends = [
base
bytestring
containers
direct-sqlite
groundhog
monad-control
resource-pool
resourcet
text
transformers
unordered-containers
];
doHaddock = false;
doCheck = false;
description = "Sqlite3 backend for the groundhog library";
license = stdenv.lib.licenses.bsd3;

}) {};
"groundhog-th" = callPackage
({
  mkDerivation
, aeson
, base
, bytestring
, containers
, groundhog
, stdenv
, template-haskell
, text
, time
, unordered-containers
, yaml
}:
mkDerivation {

pname = "groundhog-th";
version = "0.8.0.2";
sha256 = "26958d982f2dd17aeacdf22386fd87bf81a5acdc93b28e80b93beaba6c6d3d8f";
libraryHaskellDepends = [
aeson
base
bytestring
containers
groundhog
template-haskell
text
time
unordered-containers
yaml
];
doHaddock = false;
doCheck = false;
description = "Type-safe datatype-database mapping library";
license = stdenv.lib.licenses.bsd3;

}) {};
"group-by-date" = callPackage
({
  mkDerivation
, base
, explicit-exception
, filemanip
, hsshellscript
, pathtype
, stdenv
, time
, transformers
, unix-compat
, utility-ht
}:
mkDerivation {

pname = "group-by-date";
version = "0.1.0.2";
sha256 = "b0b863add81e83c817dba93a8ab22c0f4b7e57643fafc630ac73190d9ee2a527";
isLibrary = false;
isExecutable = true;
executableHaskellDepends = [
base
explicit-exception
filemanip
hsshellscript
pathtype
time
transformers
unix-compat
utility-ht
];
doHaddock = false;
doCheck = false;
homepage = "http://hub.darcs.net/thielema/group-by-date/";
description = "Shell command for grouping files by dates into folders";
license = stdenv.lib.licenses.bsd3;

}) {};
"grouped-list" = callPackage
({
  mkDerivation
, base
, binary
, containers
, deepseq
, pointed
, stdenv
}:
mkDerivation {

pname = "grouped-list";
version = "0.2.2.0";
sha256 = "bd4c309d83a8137ddad1aecdda515bb553e67f7c9ef4967d16ed76ea5ae5631c";
libraryHaskellDepends = [
base
binary
containers
deepseq
pointed
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/Daniel-Diaz/grouped-list/blob/master/README.md";
description = "Grouped lists. Equal consecutive elements are grouped.";
license = stdenv.lib.licenses.bsd3;

}) {};
"groups" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "groups";
version = "0.4.1.0";
sha256 = "dd4588b71dfff42b9a30cb40304912742b95db964b20f51951aff0eee7f3f33d";
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
description = "Haskell 98 groups";
license = stdenv.lib.licenses.bsd3;

}) {};
"gtk2hs-buildtools" = callPackage
({
  mkDerivation
, alex
, array
, base
, Cabal
, containers
, directory
, filepath
, happy
, hashtables
, pretty
, process
, random
, stdenv
}:
mkDerivation {

pname = "gtk2hs-buildtools";
version = "0.13.4.0";
sha256 = "0f3e6ba90839efd43efe8cecbddb6478a55e2ce7788c57a0add4df477dede679";
isLibrary = true;
isExecutable = true;
enableSeparateDataOutput = true;
libraryHaskellDepends = [
array
base
Cabal
containers
directory
filepath
hashtables
pretty
process
random
];
libraryToolDepends = [
alex
happy
];
executableHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
homepage = "http://projects.haskell.org/gtk2hs/";
description = "Tools to build the Gtk2Hs suite of User Interface libraries";
license = stdenv.lib.licenses.gpl2;

}) {};
"h2c" = callPackage
({
  mkDerivation
, base
, bytestring
, mtl
, resourcet
, stdenv
}:
mkDerivation {

pname = "h2c";
version = "1.0.0";
sha256 = "4be2c9d54084175777624770640850aba33d7e4a31e2dc8096c122f737965499";
libraryHaskellDepends = [
base
bytestring
mtl
resourcet
];
doHaddock = false;
doCheck = false;
homepage = "https://bitbucket.org/fmapE/h2c";
description = "Bindings to Linux I2C with support for repeated-start transactions";
license = stdenv.lib.licenses.mit;

}) {};
"hOpenPGP" = callPackage
({
  mkDerivation
, aeson
, asn1-encoding
, attoparsec
, base
, base16-bytestring
, base64-bytestring
, bifunctors
, binary
, binary-conduit
, bytestring
, bzlib
, conduit
, conduit-extra
, containers
, crypto-cipher-types
, cryptonite
, errors
, hashable
, incremental-parser
, ixset-typed
, lens
, memory
, monad-loops
, nettle
, network-uri
, newtype
, openpgp-asciiarmor
, resourcet
, semigroups
, split
, stdenv
, text
, time
, time-locale-compat
, transformers
, unliftio-core
, unordered-containers
, wl-pprint-extras
, zlib
}:
mkDerivation {

pname = "hOpenPGP";
version = "2.6.2";
sha256 = "9606c7a25ea3be26925ab2dbc361e1a93ca7d9bdae6a2ebf255cd358688490ca";
libraryHaskellDepends = [
aeson
asn1-encoding
attoparsec
base
base16-bytestring
base64-bytestring
bifunctors
binary
binary-conduit
bytestring
bzlib
conduit
conduit-extra
containers
crypto-cipher-types
cryptonite
errors
hashable
incremental-parser
ixset-typed
lens
memory
monad-loops
nettle
network-uri
newtype
openpgp-asciiarmor
resourcet
semigroups
split
text
time
time-locale-compat
transformers
unliftio-core
unordered-containers
wl-pprint-extras
zlib
];
doHaddock = false;
doCheck = false;
homepage = "https://salsa.debian.org/clint/hOpenPGP";
description = "native Haskell implementation of OpenPGP (RFC4880)";
license = stdenv.lib.licenses.mit;

}) {};
"hackage-db" = callPackage
({
  mkDerivation
, aeson
, base
, bytestring
, Cabal
, containers
, directory
, filepath
, stdenv
, tar
, time
, utf8-string
}:
mkDerivation {

pname = "hackage-db";
version = "2.0";
sha256 = "f8390ab421f89bd8b03df9c3d34c86a82ea26d150dfb5cfb1bdb16f20452bf27";
revision = "1";
editedCabalFile = "1zsdy9c0gngl8k690311zchd3lhl7h64arab77p7v9j5bradziiq";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
aeson
base
bytestring
Cabal
containers
directory
filepath
tar
time
utf8-string
];
executableHaskellDepends = [
base
bytestring
Cabal
containers
utf8-string
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/peti/hackage-db#readme";
description = "Access Hackage's package database via Data.Map";
license = stdenv.lib.licenses.bsd3;

}) {};
"hackage-security" = callPackage
({
  mkDerivation
, base
, base16-bytestring
, base64-bytestring
, bytestring
, Cabal
, containers
, cryptohash-sha256
, directory
, ed25519
, filepath
, ghc-prim
, mtl
, network
, network-uri
, parsec
, pretty
, stdenv
, tar
, template-haskell
, time
, transformers
, zlib
}:
mkDerivation {

pname = "hackage-security";
version = "0.5.3.0";
sha256 = "db986e17e9265aa9e40901690815b890b97d53159eb24d0a6cafaa7c18577c21";
revision = "1";
editedCabalFile = "0m0xhcivjqq6cwmhr60sva4qz2ciknyacv7dxpdiwbsl3kwyx9sz";
libraryHaskellDepends = [
base
base16-bytestring
base64-bytestring
bytestring
Cabal
containers
cryptohash-sha256
directory
ed25519
filepath
ghc-prim
mtl
network
network-uri
parsec
pretty
tar
template-haskell
time
transformers
zlib
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/haskell/hackage-security";
description = "Hackage security library";
license = stdenv.lib.licenses.bsd3;

}) {};
"haddock-library" = callPackage
({
  mkDerivation
, base
, bytestring
, deepseq
, stdenv
, transformers
}:
mkDerivation {

pname = "haddock-library";
version = "1.4.5";
sha256 = "c94b69556bb17e1f21a794d4866ce51341ca32f4c4d1ce40d232ede78cecb736";
libraryHaskellDepends = [
base
bytestring
deepseq
transformers
];
doHaddock = false;
doCheck = false;
homepage = "http://www.haskell.org/haddock/";
description = "Library exposing some functionality of Haddock";
license = stdenv.lib.licenses.bsd3;

}) {};
"hailgun" = callPackage
({
  mkDerivation
, aeson
, base
, bytestring
, email-validate
, exceptions
, filepath
, http-client
, http-client-tls
, http-types
, stdenv
, tagsoup
, text
, time
, transformers
}:
mkDerivation {

pname = "hailgun";
version = "0.4.1.8";
sha256 = "9dcc7367afec6605045246d4959f27a29a54bbdbcec543e6f5ae59b048e2dcc3";
libraryHaskellDepends = [
aeson
base
bytestring
email-validate
exceptions
filepath
http-client
http-client-tls
http-types
tagsoup
text
time
transformers
];
doHaddock = false;
doCheck = false;
homepage = "https://bitbucket.org/robertmassaioli/hailgun";
description = "Mailgun REST api interface for Haskell";
license = stdenv.lib.licenses.mit;

}) {};
"hailgun-simple" = callPackage
({
  mkDerivation
, base
, email-validate
, hailgun
, mtl
, stdenv
, text
, transformers
}:
mkDerivation {

pname = "hailgun-simple";
version = "0.1.0.0";
sha256 = "30526e6b7ec6083b090e880ef6fe942cc8425d3b2700bac565e4fc6629ec2954";
libraryHaskellDepends = [
base
email-validate
hailgun
mtl
text
transformers
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/cdepillabout/hailgun-simple";
description = "Easy-to-use wrapper for the hailgun package";
license = stdenv.lib.licenses.bsd3;

}) {};
"hakyll" = callPackage
({
  mkDerivation
, base
, binary
, blaze-html
, blaze-markup
, bytestring
, containers
, cryptohash
, data-default
, deepseq
, directory
, file-embed
, filepath
, fsnotify
, http-conduit
, http-types
, lrucache
, mtl
, network-uri
, optparse-applicative
, pandoc
, pandoc-citeproc
, parsec
, process
, random
, regex-tdfa
, resourcet
, scientific
, stdenv
, tagsoup
, text
, time
, time-locale-compat
, unordered-containers
, vector
, wai
, wai-app-static
, warp
, yaml
}:
mkDerivation {

pname = "hakyll";
version = "4.12.2.0";
sha256 = "87282aeb0006b929c57d9d228b23d5ac76f1480f262353af4198bba91a4979ae";
isLibrary = true;
isExecutable = true;
enableSeparateDataOutput = true;
libraryHaskellDepends = [
base
binary
blaze-html
blaze-markup
bytestring
containers
cryptohash
data-default
deepseq
directory
file-embed
filepath
fsnotify
http-conduit
http-types
lrucache
mtl
network-uri
optparse-applicative
pandoc
pandoc-citeproc
parsec
process
random
regex-tdfa
resourcet
scientific
tagsoup
text
time
time-locale-compat
unordered-containers
vector
wai
wai-app-static
warp
yaml
];
executableHaskellDepends = [
base
directory
filepath
];
doHaddock = false;
doCheck = false;
homepage = "http://jaspervdj.be/hakyll";
description = "A static website compiler library";
license = stdenv.lib.licenses.bsd3;

}) {};
"half" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "half";
version = "0.2.2.3";
sha256 = "85c244c80d1c889a3d79073a6f5a99d9e769dbe3c574ca11d992b2b4f7599a5c";
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/ekmett/half";
description = "Half-precision floating-point";
license = stdenv.lib.licenses.bsd3;

}) {};
"hamilton" = callPackage
({
  mkDerivation
, ad
, ansi-wl-pprint
, base
, comonad
, containers
, free
, hmatrix
, hmatrix-gsl
, optparse-applicative
, stdenv
, typelits-witnesses
, vector
, vector-sized
, vty
}:
mkDerivation {

pname = "hamilton";
version = "0.1.0.2";
sha256 = "15acc8563f60448621cffc58acf880487cc997e682e8cbc79032d5886bdc1cba";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
ad
base
comonad
free
hmatrix
hmatrix-gsl
typelits-witnesses
vector-sized
];
executableHaskellDepends = [
ansi-wl-pprint
base
containers
hmatrix
optparse-applicative
vector
vector-sized
vty
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/mstksg/hamilton";
description = "Physics on generalized coordinate systems using Hamiltonian Mechanics and AD";
license = stdenv.lib.licenses.bsd3;

}) {};
"handwriting" = callPackage
({
  mkDerivation
, aeson
, base
, bytestring
, containers
, directory
, filepath
, lens
, lens-aeson
, random
, split
, stdenv
, text
, transformers
, wreq
}:
mkDerivation {

pname = "handwriting";
version = "0.1.0.3";
sha256 = "7e1b406d19b2f39b34910462dce214c7ca91bb9d78bf9fafb9f906dd44d5beaa";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
aeson
base
bytestring
containers
lens
lens-aeson
split
text
transformers
wreq
];
executableHaskellDepends = [
base
bytestring
directory
filepath
random
text
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/ismailmustafa/handwriting-haskell#readme";
description = "API Client for the handwriting.io API.";
license = stdenv.lib.licenses.bsd3;

}) {};
"hapistrano" = callPackage
({
  mkDerivation
, aeson
, async
, base
, filepath
, formatting
, gitrev
, mtl
, optparse-applicative
, path
, path-io
, process
, stdenv
, stm
, time
, transformers
, yaml
}:
mkDerivation {

pname = "hapistrano";
version = "0.3.5.5";
sha256 = "fbd6bccc76c5cb7644155ed33b8b0383088e3a7520ba3fd088ae3254ac75afc6";
isLibrary = true;
isExecutable = true;
enableSeparateDataOutput = true;
libraryHaskellDepends = [
base
filepath
formatting
gitrev
mtl
path
process
time
transformers
];
executableHaskellDepends = [
aeson
async
base
formatting
gitrev
optparse-applicative
path
path-io
stm
yaml
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/stackbuilders/hapistrano";
description = "A deployment library for Haskell applications";
license = stdenv.lib.licenses.mit;

}) {};
"happstack-jmacro" = callPackage
({
  mkDerivation
, base
, base64-bytestring
, bytestring
, cereal
, digest
, happstack-server
, jmacro
, stdenv
, text
, utf8-string
, wl-pprint-text
}:
mkDerivation {

pname = "happstack-jmacro";
version = "7.0.12";
sha256 = "bab4b4197373cb674c6fcbfe48a7a5d34ec31967b6e3c771f0049d885b74aeae";
libraryHaskellDepends = [
base
base64-bytestring
bytestring
cereal
digest
happstack-server
jmacro
text
utf8-string
wl-pprint-text
];
doHaddock = false;
doCheck = false;
homepage = "http://www.happstack.com/";
description = "Support for using JMacro with Happstack";
license = stdenv.lib.licenses.bsd3;

}) {};
"happstack-server" = callPackage
({
  mkDerivation
, base
, base64-bytestring
, blaze-html
, bytestring
, containers
, directory
, exceptions
, extensible-exceptions
, filepath
, hslogger
, html
, monad-control
, mtl
, network
, network-uri
, old-locale
, parsec
, process
, semigroups
, sendfile
, stdenv
, syb
, system-filepath
, template-haskell
, text
, threads
, time
, time-compat
, transformers
, transformers-base
, transformers-compat
, unix
, utf8-string
, xhtml
, zlib
}:
mkDerivation {

pname = "happstack-server";
version = "7.5.1";
sha256 = "32877ec758149dd3ffbd2a03f3fecd3a69bcac8f6c499e3a08e43bee1c9f8ea1";
libraryHaskellDepends = [
base
base64-bytestring
blaze-html
bytestring
containers
directory
exceptions
extensible-exceptions
filepath
hslogger
html
monad-control
mtl
network
network-uri
old-locale
parsec
process
semigroups
sendfile
syb
system-filepath
template-haskell
text
threads
time
time-compat
transformers
transformers-base
transformers-compat
unix
utf8-string
xhtml
zlib
];
doHaddock = false;
doCheck = false;
homepage = "http://happstack.com";
description = "Web related tools and services";
license = stdenv.lib.licenses.bsd3;

}) {};
"happstack-server-tls" = callPackage
({
  mkDerivation
, base
, bytestring
, extensible-exceptions
, happstack-server
, hslogger
, HsOpenSSL
, network
, openssl
, sendfile
, stdenv
, time
, unix
}:
mkDerivation {

pname = "happstack-server-tls";
version = "7.1.6.5";
sha256 = "782fb8d8bf6b2f63c337a1308710f1611d789f42cedf7571a346c3a73a1fe142";
libraryHaskellDepends = [
base
bytestring
extensible-exceptions
happstack-server
hslogger
HsOpenSSL
network
sendfile
time
unix
];
librarySystemDepends = [
openssl
];
doHaddock = false;
doCheck = false;
homepage = "http://www.happstack.com/";
description = "extend happstack-server with https:// support (TLS/SSL)";
license = stdenv.lib.licenses.bsd3;

}) {inherit (pkgs) openssl;};
"happy" = callPackage
({
  mkDerivation
, array
, base
, Cabal
, containers
, directory
, filepath
, mtl
, stdenv
}:
mkDerivation {

pname = "happy";
version = "1.19.9";
sha256 = "3e81a3e813acca3aae52721c412cde18b7b7c71ecbacfaeaa5c2f4b35abf1d8d";
revision = "2";
editedCabalFile = "1zxi8zfwiwxidrhr0yj5srpzp32z66sld9xv0k4yz7046rkl3577";
isLibrary = false;
isExecutable = true;
setupHaskellDepends = [
base
Cabal
directory
filepath
];
executableHaskellDepends = [
array
base
containers
mtl
];
doHaddock = false;
doCheck = false;
homepage = "https://www.haskell.org/happy/";
description = "Happy is a parser generator for Haskell";
license = stdenv.lib.licenses.bsd2;

}) {};
"hasbolt" = callPackage
({
  mkDerivation
, base
, binary
, bytestring
, connection
, containers
, data-binary-ieee754
, data-default
, hex
, network
, stdenv
, text
, transformers
}:
mkDerivation {

pname = "hasbolt";
version = "0.1.3.0";
sha256 = "fd6fc49f57e8c03087103f733c130739a046398b5118b078aad2def31059665d";
revision = "2";
editedCabalFile = "1isygckkasffk06bd6023imr51c7l9cdvk4vf2vgv9x10v8kpp37";
libraryHaskellDepends = [
base
binary
bytestring
connection
containers
data-binary-ieee754
data-default
hex
network
text
transformers
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/zmactep/hasbolt#readme";
description = "Haskell driver for Neo4j 3+ (BOLT protocol)";
license = stdenv.lib.licenses.bsd3;

}) {};
"hashable" = callPackage
({
  mkDerivation
, base
, bytestring
, deepseq
, ghc-prim
, integer-gmp
, stdenv
, text
}:
mkDerivation {

pname = "hashable";
version = "1.2.7.0";
sha256 = "ecb5efc0586023f5a0dc861100621c1dbb4cbb2f0516829a16ebac39f0432abf";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
base
bytestring
deepseq
ghc-prim
integer-gmp
text
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/tibbe/hashable";
description = "A class for types that can be converted to a hash value";
license = stdenv.lib.licenses.bsd3;

}) {};
"hashable-time" = callPackage
({
  mkDerivation
, base
, hashable
, stdenv
, time
}:
mkDerivation {

pname = "hashable-time";
version = "0.2.0.1";
sha256 = "b5752bb9b91d7cb98b01aa68c27d6a9338e1af39763c0157ef8322d0bc15234d";
revision = "1";
editedCabalFile = "0rv40xkg3gj8jnqsry1gq3f5s5la6d5arg8fzkirnwdpcgha1as6";
libraryHaskellDepends = [
base
hashable
time
];
doHaddock = false;
doCheck = false;
description = "Hashable instances for Data.Time";
license = stdenv.lib.licenses.bsd3;

}) {};
"hashids" = callPackage
({
  mkDerivation
, base
, bytestring
, containers
, split
, stdenv
}:
mkDerivation {

pname = "hashids";
version = "1.0.2.4";
sha256 = "27991fc8a6debe76a086af80f6b72a5d451e7f1466b79cb0df973b98a2f5f3cf";
libraryHaskellDepends = [
base
bytestring
containers
split
];
doHaddock = false;
doCheck = false;
homepage = "http://hashids.org/";
description = "Hashids generates short, unique, non-sequential ids from numbers";
license = stdenv.lib.licenses.mit;

}) {};
"hashmap" = callPackage
({
  mkDerivation
, base
, containers
, deepseq
, hashable
, stdenv
}:
mkDerivation {

pname = "hashmap";
version = "1.3.3";
sha256 = "dc06b57cd1bcd656d4602df7705a3f11a54ae65f664e9be472d42a9bdcd64755";
libraryHaskellDepends = [
base
containers
deepseq
hashable
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/foxik/hashmap";
description = "Persistent containers Map and Set based on hashing";
license = stdenv.lib.licenses.bsd3;

}) {};
"hashtables" = callPackage
({
  mkDerivation
, base
, ghc-prim
, hashable
, primitive
, stdenv
, vector
}:
mkDerivation {

pname = "hashtables";
version = "1.2.3.0";
sha256 = "f956b4bb6113f30193c9d85caebeda5000c29d8acf4f4994af650d3748bf73a5";
libraryHaskellDepends = [
base
ghc-prim
hashable
primitive
vector
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/gregorycollins/hashtables";
description = "Mutable hash tables in the ST monad";
license = stdenv.lib.licenses.bsd3;

}) {};
"haskeline" = callPackage
({
  mkDerivation
, base
, bytestring
, containers
, directory
, filepath
, process
, stdenv
, stm
, terminfo
, transformers
, unix
}:
mkDerivation {

pname = "haskeline";
version = "0.7.4.2";
sha256 = "5543ec8cd932396360a5c707bf0958b39bb99a559fb4fd80ed366a953c6cb0eb";
configureFlags = [
"-fterminfo"
];
libraryHaskellDepends = [
base
bytestring
containers
directory
filepath
process
stm
terminfo
transformers
unix
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/judah/haskeline";
description = "A command-line interface for user input, written in Haskell";
license = stdenv.lib.licenses.bsd3;

}) {};
"haskell-gi" = callPackage
({
  mkDerivation
, attoparsec
, base
, bytestring
, Cabal
, containers
, directory
, filepath
, glib
, gobjectIntrospection
, haskell-gi-base
, mtl
, pretty-show
, process
, regex-tdfa
, safe
, stdenv
, text
, transformers
, xdg-basedir
, xml-conduit
}:
mkDerivation {

pname = "haskell-gi";
version = "0.21.2";
sha256 = "f1611245eaf982d0c6dd5d68856e0cb0880ffe32e5d8dd288c36d884e4fb623c";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
attoparsec
base
bytestring
Cabal
containers
directory
filepath
haskell-gi-base
mtl
pretty-show
process
regex-tdfa
safe
text
transformers
xdg-basedir
xml-conduit
];
libraryPkgconfigDepends = [
glib
gobjectIntrospection
];
executableHaskellDepends = [
base
containers
directory
filepath
haskell-gi-base
pretty-show
text
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/haskell-gi/haskell-gi";
description = "Generate Haskell bindings for GObject Introspection capable libraries";
license = stdenv.lib.licenses.lgpl21;

}) {inherit (pkgs) glib; inherit (pkgs) gobjectIntrospection;};
"haskell-gi-base" = callPackage
({
  mkDerivation
, base
, bytestring
, containers
, glib
, stdenv
, text
}:
mkDerivation {

pname = "haskell-gi-base";
version = "0.21.1";
sha256 = "667cf211eb6ce1e3e84fc2126670847228b4cb4211dd7d7f4ae627ef6f15295d";
libraryHaskellDepends = [
base
bytestring
containers
text
];
libraryPkgconfigDepends = [
glib
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/haskell-gi/haskell-gi-base";
description = "Foundation for libraries generated by haskell-gi";
license = stdenv.lib.licenses.lgpl21;

}) {inherit (pkgs) glib;};
"haskell-gi-overloading" = callPackage
({
  mkDerivation
, stdenv
}:
mkDerivation {

pname = "haskell-gi-overloading";
version = "0.0";
sha256 = "a5c727a82f07caab27afb39471dccaf590ebb96738089844a0812b5db22bbfea";
doHaddock = false;
doCheck = false;
homepage = "https://github.com/haskell-gi/haskell-gi";
description = "Overloading support for haskell-gi";
license = stdenv.lib.licenses.bsd3;

}) {};
"haskell-lexer" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "haskell-lexer";
version = "1.0.1";
sha256 = "d7d42ab3c4bc2f0232ede8b005fb9de57f862ee4c1c83aa61e1022346fc84366";
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
description = "A fully compliant Haskell 98 lexer";
license = stdenv.lib.licenses.bsd3;

}) {};
"haskell-lsp" = callPackage
({
  mkDerivation
, aeson
, base
, bytestring
, containers
, data-default
, directory
, filepath
, hashable
, hslogger
, lens
, mtl
, parsec
, sorted-list
, stdenv
, stm
, text
, time
, transformers
, unordered-containers
, vector
, yi-rope
}:
mkDerivation {

pname = "haskell-lsp";
version = "0.2.0.1";
sha256 = "1ed5ce34cf5ddd86ad7babdde239fc81455a1ebc07b8445270be7c3767a86f77";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
aeson
base
bytestring
containers
data-default
directory
filepath
hashable
hslogger
lens
mtl
parsec
sorted-list
stm
text
time
unordered-containers
yi-rope
];
executableHaskellDepends = [
aeson
base
bytestring
containers
data-default
directory
filepath
hslogger
lens
mtl
parsec
stm
text
time
transformers
unordered-containers
vector
yi-rope
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/alanz/haskell-lsp";
description = "Haskell library for the Microsoft Language Server Protocol";
license = stdenv.lib.licenses.mit;

}) {};
"haskell-lsp-client" = callPackage
({
  mkDerivation
, aeson
, base
, bytestring
, containers
, directory
, haskell-lsp
, lens
, process
, stdenv
, text
, unix
}:
mkDerivation {

pname = "haskell-lsp-client";
version = "1.0.0.1";
sha256 = "1c9b131e405bd1aec6e98e43f3926061fbe4e5ef4ac64cd08cae38082d40fd1b";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
aeson
base
bytestring
containers
haskell-lsp
lens
process
text
];
executableHaskellDepends = [
base
directory
haskell-lsp
lens
process
text
unix
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/noughtmare/haskell-lsp-client#readme";
description = "A haskell package to build your own Language Server client";
license = stdenv.lib.licenses.gpl2;

}) {};
"haskell-names" = callPackage
({
  mkDerivation
, aeson
, base
, bytestring
, containers
, data-lens-light
, filepath
, haskell-src-exts
, mtl
, stdenv
, transformers
, traverse-with-class
, uniplate
}:
mkDerivation {

pname = "haskell-names";
version = "0.9.1";
sha256 = "10727b132631696701ff541484a660dabb18aa8911b43db0c685026f7e6f6cf9";
enableSeparateDataOutput = true;
libraryHaskellDepends = [
aeson
base
bytestring
containers
data-lens-light
filepath
haskell-src-exts
mtl
transformers
traverse-with-class
uniplate
];
doHaddock = false;
doCheck = false;
homepage = "http://documentup.com/haskell-suite/haskell-names";
description = "Name resolution library for Haskell";
license = stdenv.lib.licenses.bsd3;

}) {};
"haskell-neo4j-client" = callPackage
({
  mkDerivation
, aeson
, base
, bytestring
, containers
, data-default
, hashable
, HTTP
, http-client
, http-client-tls
, http-conduit
, http-types
, lifted-base
, mtl
, network-uri
, resourcet
, scientific
, stdenv
, text
, transformers
, transformers-base
, transformers-compat
, unordered-containers
, vector
}:
mkDerivation {

pname = "haskell-neo4j-client";
version = "0.3.2.4";
sha256 = "30eea529b6d8bd4b887cec7a6b210dd80223d97811bb26042b0c1ccfc8c381c2";
libraryHaskellDepends = [
aeson
base
bytestring
containers
data-default
hashable
HTTP
http-client
http-client-tls
http-conduit
http-types
lifted-base
mtl
network-uri
resourcet
scientific
text
transformers
transformers-base
transformers-compat
unordered-containers
vector
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/asilvestre/haskell-neo4j-rest-client";
description = "A Haskell neo4j client";
license = stdenv.lib.licenses.mit;

}) {};
"haskell-spacegoo" = callPackage
({
  mkDerivation
, aeson
, base
, bytestring
, conduit
, conduit-extra
, mtl
, pretty
, pretty-show
, stdenv
, text
, vector
, vector-space
}:
mkDerivation {

pname = "haskell-spacegoo";
version = "0.2.0.1";
sha256 = "1eb3faa9a7f6a5870337eeb0bb3ad915f58987dfe4643fe95c91cbb2738ddd3c";
libraryHaskellDepends = [
aeson
base
bytestring
conduit
conduit-extra
mtl
pretty
pretty-show
text
vector
vector-space
];
doHaddock = false;
doCheck = false;
description = "Client API for Rocket Scissor Spacegoo";
license = stdenv.lib.licenses.mit;

}) {};
"haskell-src" = callPackage
({
  mkDerivation
, array
, base
, happy
, pretty
, stdenv
, syb
}:
mkDerivation {

pname = "haskell-src";
version = "1.0.3.0";
sha256 = "b4b4941e8883da32c3f2b93f3ecdd5cff82ff9304cb91e89850b19095c908dbc";
libraryHaskellDepends = [
array
base
pretty
syb
];
libraryToolDepends = [
happy
];
doHaddock = false;
doCheck = false;
description = "Support for manipulating Haskell source code";
license = stdenv.lib.licenses.bsd3;

}) {};
"haskell-src-exts" = callPackage
({
  mkDerivation
, array
, base
, cpphs
, ghc-prim
, happy
, pretty
, stdenv
}:
mkDerivation {

pname = "haskell-src-exts";
version = "1.20.2";
sha256 = "9f6686e8bc8b849991207304e524747b0d1dcedfea351ac073ce971b36f9a3ea";
libraryHaskellDepends = [
array
base
cpphs
ghc-prim
pretty
];
libraryToolDepends = [
happy
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/haskell-suite/haskell-src-exts";
description = "Manipulating Haskell source: abstract syntax, lexer, parser, and pretty-printer";
license = stdenv.lib.licenses.bsd3;

}) {};
"haskell-src-exts-util" = callPackage
({
  mkDerivation
, base
, containers
, data-default
, haskell-src-exts
, semigroups
, stdenv
, transformers
, uniplate
}:
mkDerivation {

pname = "haskell-src-exts-util";
version = "0.2.3";
sha256 = "e833ef33423645fee4a300ff4e1354618a0d115a954cd62e72096175513803a0";
libraryHaskellDepends = [
base
containers
data-default
haskell-src-exts
semigroups
transformers
uniplate
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/pepeiborra/haskell-src-exts-util";
description = "Helper functions for working with haskell-src-exts trees";
license = stdenv.lib.licenses.bsd3;

}) {};
"haskell-src-meta" = callPackage
({
  mkDerivation
, base
, haskell-src-exts
, pretty
, stdenv
, syb
, template-haskell
, th-orphans
}:
mkDerivation {

pname = "haskell-src-meta";
version = "0.8.0.2";
sha256 = "4b7b143b94fcf147b96bb34822c2feeae29daadd3a22796ee36cadd5ca262c8b";
revision = "1";
editedCabalFile = "07xxp2r8amd420bzl7xlyfydhyrcrvaxq24ydnx7y2sz4v2nlzsz";
libraryHaskellDepends = [
base
haskell-src-exts
pretty
syb
template-haskell
th-orphans
];
doHaddock = false;
doCheck = false;
description = "Parse source to template-haskell abstract syntax";
license = stdenv.lib.licenses.bsd3;

}) {};
"haskell-tools-ast" = callPackage
({
  mkDerivation
, base
, classyplate
, ghc
, mtl
, pretty
, references
, stdenv
, template-haskell
, uniplate
}:
mkDerivation {

pname = "haskell-tools-ast";
version = "1.0.1.1";
sha256 = "6b90346b3fd8ad06e304b17bccc4b3a8644eb490fa30c8fd0b6f104437fe7a32";
libraryHaskellDepends = [
base
classyplate
ghc
mtl
pretty
references
template-haskell
uniplate
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/nboldi/haskell-tools";
description = "Haskell AST for efficient tooling";
license = stdenv.lib.licenses.bsd3;

}) {};
"haskell-tools-backend-ghc" = callPackage
({
  mkDerivation
, base
, bytestring
, containers
, ghc
, ghc-boot-th
, haskell-tools-ast
, mtl
, references
, safe
, split
, stdenv
, template-haskell
, transformers
, uniplate
}:
mkDerivation {

pname = "haskell-tools-backend-ghc";
version = "1.0.1.1";
sha256 = "b8ea79153e0a06c7c339d926d035de35b6885bc37a8a16a1207c89a57d3a7615";
libraryHaskellDepends = [
base
bytestring
containers
ghc
ghc-boot-th
haskell-tools-ast
mtl
references
safe
split
template-haskell
transformers
uniplate
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/nboldi/haskell-tools";
description = "Creating the Haskell-Tools AST from GHC's representations";
license = stdenv.lib.licenses.bsd3;

}) {};
"haskell-tools-prettyprint" = callPackage
({
  mkDerivation
, base
, containers
, ghc
, haskell-tools-ast
, mtl
, references
, split
, stdenv
, text
, uniplate
}:
mkDerivation {

pname = "haskell-tools-prettyprint";
version = "1.0.1.1";
sha256 = "5744c8b8c38a8902db984e9ff618581cec7cbbf732380f4a91fdf1af00553948";
libraryHaskellDepends = [
base
containers
ghc
haskell-tools-ast
mtl
references
split
text
uniplate
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/haskell-tools/haskell-tools";
description = "Pretty printing of Haskell-Tools AST";
license = stdenv.lib.licenses.bsd3;

}) {};
"haskell-tools-refactor" = callPackage
({
  mkDerivation
, aeson
, base
, Cabal
, containers
, directory
, filepath
, ghc
, ghc-paths
, haskell-tools-ast
, haskell-tools-backend-ghc
, haskell-tools-prettyprint
, haskell-tools-rewrite
, mtl
, references
, split
, stdenv
, template-haskell
, transformers
, uniplate
}:
mkDerivation {

pname = "haskell-tools-refactor";
version = "1.0.1.2";
sha256 = "d30ddea9ce07874ce8a09309fd473c3693659c8a5b919d35c3bfc2a9f3aa6e39";
libraryHaskellDepends = [
aeson
base
Cabal
containers
directory
filepath
ghc
ghc-paths
haskell-tools-ast
haskell-tools-backend-ghc
haskell-tools-prettyprint
haskell-tools-rewrite
mtl
references
split
template-haskell
transformers
uniplate
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/haskell-tools/haskell-tools";
description = "Refactoring Tool for Haskell";
license = stdenv.lib.licenses.bsd3;

}) {};
"haskell-tools-rewrite" = callPackage
({
  mkDerivation
, base
, containers
, ghc
, haskell-tools-ast
, haskell-tools-prettyprint
, mtl
, references
, stdenv
}:
mkDerivation {

pname = "haskell-tools-rewrite";
version = "1.0.1.1";
sha256 = "a286c7d7fdd9238012ad062c2bfce8d04d5a0318c9279b8455b1578816cffa86";
libraryHaskellDepends = [
base
containers
ghc
haskell-tools-ast
haskell-tools-prettyprint
mtl
references
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/haskell-tools/haskell-tools";
description = "Facilities for generating new parts of the Haskell-Tools AST";
license = stdenv.lib.licenses.bsd3;

}) {};
"haskintex" = callPackage
({
  mkDerivation
, base
, binary
, bytestring
, containers
, directory
, filepath
, haskell-src-exts
, HaTeX
, hint
, parsec
, process
, stdenv
, text
, transformers
}:
mkDerivation {

pname = "haskintex";
version = "0.8.0.0";
sha256 = "9d4974112f33baf47124a56f87b96892a0a37c10587098f851c71256d15cddd8";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
base
binary
bytestring
containers
directory
filepath
haskell-src-exts
HaTeX
hint
parsec
process
text
transformers
];
executableHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
homepage = "http://daniel-diaz.github.io/projects/haskintex";
description = "Haskell Evaluation inside of LaTeX code";
license = stdenv.lib.licenses.bsd3;

}) {};
"hasmin" = callPackage
({
  mkDerivation
, attoparsec
, base
, bytestring
, containers
, gitrev
, hopfli
, matrix
, mtl
, numbers
, optparse-applicative
, parsers
, stdenv
, text
}:
mkDerivation {

pname = "hasmin";
version = "1.0.2";
sha256 = "a985d77f796b9a39ea3e802034e07515051f216ee22c9d01e008592609a38b8d";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
attoparsec
base
containers
matrix
mtl
numbers
parsers
text
];
executableHaskellDepends = [
base
bytestring
gitrev
hopfli
optparse-applicative
text
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/contivero/hasmin#readme";
description = "CSS Minifier";
license = stdenv.lib.licenses.bsd3;

}) {};
"hasql" = callPackage
({
  mkDerivation
, attoparsec
, base
, base-prelude
, bytestring
, bytestring-strict-builder
, contravariant
, contravariant-extras
, data-default-class
, dlist
, hashable
, hashtables
, loch-th
, mtl
, placeholders
, postgresql-binary
, postgresql-libpq
, profunctors
, semigroups
, stdenv
, text
, transformers
, vector
}:
mkDerivation {

pname = "hasql";
version = "1.1.1";
sha256 = "262514375a08afac2445e725ebb2d749537ce676984c2ae74f737aea931d088b";
libraryHaskellDepends = [
attoparsec
base
base-prelude
bytestring
bytestring-strict-builder
contravariant
contravariant-extras
data-default-class
dlist
hashable
hashtables
loch-th
mtl
placeholders
postgresql-binary
postgresql-libpq
profunctors
semigroups
text
transformers
vector
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/nikita-volkov/hasql";
description = "An efficient PostgreSQL driver and a flexible mapping API";
license = stdenv.lib.licenses.mit;

}) {};
"hasql-migration" = callPackage
({
  mkDerivation
, base
, base64-bytestring
, bytestring
, contravariant
, cryptohash
, data-default-class
, directory
, hasql
, hasql-transaction
, stdenv
, text
, time
}:
mkDerivation {

pname = "hasql-migration";
version = "0.1.3";
sha256 = "2d49e3b7a5ed775150abf2164795b10d087d2e1c714b0a8320f0c0094df068b3";
revision = "1";
editedCabalFile = "156s0y5yfc3y0mgv95gcs6n3pv9nd0mgy06x0xriwsf68wjb07ap";
libraryHaskellDepends = [
base
base64-bytestring
bytestring
contravariant
cryptohash
data-default-class
directory
hasql
hasql-transaction
text
time
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/tvh/hasql-migration";
description = "PostgreSQL Schema Migrations";
license = stdenv.lib.licenses.bsd3;

}) {};
"hasql-optparse-applicative" = callPackage
({
  mkDerivation
, base-prelude
, hasql
, hasql-pool
, optparse-applicative
, stdenv
}:
mkDerivation {

pname = "hasql-optparse-applicative";
version = "0.3.0.1";
sha256 = "3369d9e4e4ce0414f3259a5a88c0e37efda37e08cf1a9725c3e448471e0e43a5";
libraryHaskellDepends = [
base-prelude
hasql
hasql-pool
optparse-applicative
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/sannsyn/hasql-optparse-applicative";
description = "\"optparse-applicative\" parsers for \"hasql\"";
license = stdenv.lib.licenses.mit;

}) {};
"hasql-pool" = callPackage
({
  mkDerivation
, base-prelude
, hasql
, resource-pool
, stdenv
, time
}:
mkDerivation {

pname = "hasql-pool";
version = "0.4.3";
sha256 = "124481643c6ba9a6150d1cc7ba9b9393b5a1a14cd70815d1a55a75163c80df21";
libraryHaskellDepends = [
base-prelude
hasql
resource-pool
time
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/nikita-volkov/hasql-pool";
description = "A pool of connections for Hasql";
license = stdenv.lib.licenses.mit;

}) {};
"hasql-transaction" = callPackage
({
  mkDerivation
, base
, base-prelude
, bytestring
, bytestring-tree-builder
, contravariant
, contravariant-extras
, hasql
, mtl
, stdenv
, transformers
}:
mkDerivation {

pname = "hasql-transaction";
version = "0.6";
sha256 = "cb800c098fe03eda6b9676ae250361ac28a22f22cf2f6ed6474832cdd1a9bd01";
libraryHaskellDepends = [
base
base-prelude
bytestring
bytestring-tree-builder
contravariant
contravariant-extras
hasql
mtl
transformers
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/nikita-volkov/hasql-transaction";
description = "A composable abstraction over the retryable transactions for Hasql";
license = stdenv.lib.licenses.mit;

}) {};
"hastache" = callPackage
({
  mkDerivation
, base
, blaze-builder
, bytestring
, containers
, directory
, filepath
, ieee754
, mtl
, process
, stdenv
, syb
, text
, transformers
}:
mkDerivation {

pname = "hastache";
version = "0.6.1";
sha256 = "8c8f89669d6125201d7163385ea9055ab8027a69d1513259f8fbdd53c244b464";
revision = "5";
editedCabalFile = "0fwd1jd6sqkscmy2yq1w3dcl4va4w9n8mhs6ldrilh1cj6b54r3f";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
base
blaze-builder
bytestring
containers
directory
filepath
ieee754
mtl
syb
text
transformers
];
executableHaskellDepends = [
base
blaze-builder
bytestring
containers
directory
filepath
ieee754
mtl
process
syb
text
transformers
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/lymar/hastache";
description = "Haskell implementation of Mustache templates";
license = stdenv.lib.licenses.bsd3;

}) {};
"hasty-hamiltonian" = callPackage
({
  mkDerivation
, base
, kan-extensions
, lens
, mcmc-types
, mwc-probability
, pipes
, primitive
, stdenv
, transformers
}:
mkDerivation {

pname = "hasty-hamiltonian";
version = "1.3.2";
sha256 = "e6299d72e145cfabea798e2088284580fc65f01638e3562e1f01cf9df018cc9e";
libraryHaskellDepends = [
base
kan-extensions
lens
mcmc-types
mwc-probability
pipes
primitive
transformers
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/jtobin/hasty-hamiltonian";
description = "Speedy traversal through parameter space";
license = stdenv.lib.licenses.mit;

}) {};
"haxl" = callPackage
({
  mkDerivation
, aeson
, base
, binary
, bytestring
, containers
, deepseq
, exceptions
, filepath
, ghc-prim
, hashable
, HUnit
, pretty
, stdenv
, text
, time
, transformers
, unordered-containers
, vector
}:
mkDerivation {

pname = "haxl";
version = "0.5.1.0";
sha256 = "49d485041646d3210385c312d34b0cc0c61d130e95ad935e06a695515f24a827";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
aeson
base
binary
bytestring
containers
deepseq
exceptions
filepath
ghc-prim
hashable
HUnit
pretty
text
time
transformers
unordered-containers
vector
];
executableHaskellDepends = [
base
hashable
time
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/facebook/Haxl";
description = "A Haskell library for efficient, concurrent, and concise data access";
license = "unknown";

}) {};
"haxr" = callPackage
({
  mkDerivation
, array
, base
, base-compat
, base64-bytestring
, blaze-builder
, bytestring
, HaXml
, HsOpenSSL
, http-streams
, http-types
, io-streams
, mtl
, mtl-compat
, network
, network-uri
, old-locale
, old-time
, stdenv
, template-haskell
, text
, time
, utf8-string
}:
mkDerivation {

pname = "haxr";
version = "3000.11.2";
sha256 = "ebcda06d7ee79d5e635a7ec34f86400dd54ddd2434eda082aac6d3c8fd6e8b47";
libraryHaskellDepends = [
array
base
base-compat
base64-bytestring
blaze-builder
bytestring
HaXml
HsOpenSSL
http-streams
http-types
io-streams
mtl
mtl-compat
network
network-uri
old-locale
old-time
template-haskell
text
time
utf8-string
];
doHaddock = false;
doCheck = false;
homepage = "http://www.haskell.org/haskellwiki/HaXR";
description = "XML-RPC client and server library";
license = stdenv.lib.licenses.bsd3;

}) {};
"hbeanstalk" = callPackage
({
  mkDerivation
, attoparsec
, base
, blaze-builder
, bytestring
, containers
, network
, stdenv
}:
mkDerivation {

pname = "hbeanstalk";
version = "0.2.4";
sha256 = "feaf97fd18fedb3e5abf337e61c98a03108d917d9f87f885c8d02b6b838aac8f";
libraryHaskellDepends = [
attoparsec
base
blaze-builder
bytestring
containers
network
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/scsibug/hbeanstalk/";
description = "Client for the beanstalkd workqueue service";
license = stdenv.lib.licenses.bsd3;

}) {};
"hdaemonize" = callPackage
({
  mkDerivation
, base
, bytestring
, extensible-exceptions
, filepath
, hsyslog
, mtl
, stdenv
, unix
}:
mkDerivation {

pname = "hdaemonize";
version = "0.5.5";
sha256 = "d250cb0c066ec45aa9b8e9e0df094677f9e7788b01eaf51ab5bc9bbd52fe029f";
libraryHaskellDepends = [
base
bytestring
extensible-exceptions
filepath
hsyslog
mtl
unix
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/greydot/hdaemonize";
description = "Library to handle the details of writing daemons for UNIX";
license = stdenv.lib.licenses.bsd3;

}) {};
"hdevtools" = callPackage
({
  mkDerivation
, base
, Cabal
, cmdargs
, directory
, filepath
, ghc
, ghc-boot
, ghc-paths
, network
, process
, stdenv
, syb
, time
, transformers
, unix
}:
mkDerivation {

pname = "hdevtools";
version = "0.1.6.1";
sha256 = "e7e46acf4a6567159e431739f4c4103b91eae257394560e4b1aaa8e427393440";
isLibrary = false;
isExecutable = true;
executableHaskellDepends = [
base
Cabal
cmdargs
directory
filepath
ghc
ghc-boot
ghc-paths
network
process
syb
time
transformers
unix
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/hdevtools/hdevtools/";
description = "Persistent GHC powered background server for FAST haskell development tools";
license = stdenv.lib.licenses.mit;

}) {};
"heap" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "heap";
version = "1.0.4";
sha256 = "a4c2489e1031e9e8d96dff61ac8c15e5fcd3541080d81e0e47e298b3aad3172a";
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
description = "Heaps in Haskell";
license = stdenv.lib.licenses.bsd3;

}) {};
"heaps" = callPackage
({
  mkDerivation
, base
, Cabal
, cabal-doctest
, stdenv
}:
mkDerivation {

pname = "heaps";
version = "0.3.6";
sha256 = "181c3cd7f2be698f903dc9649e5ec9311245ad2b9fed91b61f05d0dd7b7dddb2";
revision = "3";
editedCabalFile = "0k6wsm1hwn3vaxdvw8p7cidxg7p8zply2ig4w4qrbpyjhl6dj9x9";
setupHaskellDepends = [
base
Cabal
cabal-doctest
];
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/ekmett/heaps/";
description = "Asymptotically optimal Brodal/Okasaki heaps";
license = stdenv.lib.licenses.bsd3;

}) {};
"heatshrink" = callPackage
({
  mkDerivation
, base
, bytestring
, c2hs
, cereal
, stdenv
}:
mkDerivation {

pname = "heatshrink";
version = "0.1.0.0";
sha256 = "59dd111b2deb207b606d6615a3e5ca7ea3ddead77ea7b525e10e0cf26e4df37f";
libraryHaskellDepends = [
base
bytestring
cereal
];
libraryToolDepends = [
c2hs
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/fpinsight/heatshrink#readme";
description = "Compression and decompression using heatshrink";
license = stdenv.lib.licenses.bsd3;

}) {};
"hebrew-time" = callPackage
({
  mkDerivation
, base
, stdenv
, time
}:
mkDerivation {

pname = "hebrew-time";
version = "0.1.1";
sha256 = "c7997ee86df43d5d734df63c5e091543bb7fd75a93d530c1857067e27a8b7932";
libraryHaskellDepends = [
base
time
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/snoyberg/hebrew-time";
description = "Hebrew dates and prayer times";
license = stdenv.lib.licenses.mit;

}) {};
"hedgehog" = callPackage
({
  mkDerivation
, ansi-terminal
, async
, base
, bytestring
, concurrent-output
, containers
, directory
, exceptions
, lifted-async
, mmorph
, monad-control
, mtl
, pretty-show
, primitive
, random
, resourcet
, semigroups
, stdenv
, stm
, template-haskell
, text
, th-lift
, time
, transformers
, transformers-base
, unix
, wl-pprint-annotated
}:
mkDerivation {

pname = "hedgehog";
version = "0.5.3";
sha256 = "a4739630d3dec1762e69b371e11d1caaa5e6a50aa13abe41dd0e34b3a7dd68ef";
revision = "1";
editedCabalFile = "0hhzkl88xk9j62897y11f4xx84qdh0mdap55iw30cl4zwlgp10ir";
libraryHaskellDepends = [
ansi-terminal
async
base
bytestring
concurrent-output
containers
directory
exceptions
lifted-async
mmorph
monad-control
mtl
pretty-show
primitive
random
resourcet
semigroups
stm
template-haskell
text
th-lift
time
transformers
transformers-base
unix
wl-pprint-annotated
];
doHaddock = false;
doCheck = false;
homepage = "https://hedgehog.qa";
description = "Hedgehog will eat all your bugs";
license = stdenv.lib.licenses.bsd3;

}) {};
"hedgehog-quickcheck" = callPackage
({
  mkDerivation
, base
, hedgehog
, QuickCheck
, stdenv
, transformers
}:
mkDerivation {

pname = "hedgehog-quickcheck";
version = "0.1";
sha256 = "610a5ccdfcdb4d657f5b25da622ad62562d1854ddb2e7381328e0b63a66f8412";
revision = "1";
editedCabalFile = "1l6gpzhi56mj4a4nqmqhndhly3pdffkpbxinypk5ra77nxqns6n5";
libraryHaskellDepends = [
base
hedgehog
QuickCheck
transformers
];
doHaddock = false;
doCheck = false;
homepage = "https://hedgehog.qa";
description = "Use QuickCheck generators in Hedgehog and vice versa";
license = stdenv.lib.licenses.bsd3;

}) {};
"hedis" = callPackage
({
  mkDerivation
, async
, base
, bytestring
, bytestring-lexing
, deepseq
, errors
, HTTP
, mtl
, network
, network-uri
, resource-pool
, scanner
, stdenv
, stm
, text
, time
, unordered-containers
, vector
}:
mkDerivation {

pname = "hedis";
version = "0.10.1";
sha256 = "56afcf52d8b32f23a79de7c50bcaf309f0dfd610cceacb6174dfdce0c051f5f7";
libraryHaskellDepends = [
async
base
bytestring
bytestring-lexing
deepseq
errors
HTTP
mtl
network
network-uri
resource-pool
scanner
stm
text
time
unordered-containers
vector
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/informatikr/hedis";
description = "Client library for the Redis datastore: supports full command set, pipelining";
license = stdenv.lib.licenses.bsd3;

}) {};
"heist" = callPackage
({
  mkDerivation
, aeson
, attoparsec
, base
, blaze-builder
, blaze-html
, bytestring
, containers
, directory
, directory-tree
, dlist
, filepath
, hashable
, lifted-base
, map-syntax
, monad-control
, mtl
, process
, random
, stdenv
, text
, time
, transformers
, transformers-base
, unordered-containers
, vector
, xmlhtml
}:
mkDerivation {

pname = "heist";
version = "1.0.1.2";
sha256 = "e1ec5f0f95f6fb0131a3a7fc0ce8f184e10ee98305b4ae44a082b423072bf64e";
revision = "3";
editedCabalFile = "0siqhy0svk9lfi8rx7lhjhjihrmjk6plvyjnhhyhvyakmycggqpc";
libraryHaskellDepends = [
aeson
attoparsec
base
blaze-builder
blaze-html
bytestring
containers
directory
directory-tree
dlist
filepath
hashable
lifted-base
map-syntax
monad-control
mtl
process
random
text
time
transformers
transformers-base
unordered-containers
vector
xmlhtml
];
doHaddock = false;
doCheck = false;
homepage = "http://snapframework.com/";
description = "An Haskell template system supporting both HTML5 and XML";
license = stdenv.lib.licenses.bsd3;

}) {};
"here" = callPackage
({
  mkDerivation
, base
, haskell-src-meta
, mtl
, parsec
, stdenv
, template-haskell
}:
mkDerivation {

pname = "here";
version = "1.2.13";
sha256 = "406f9c27ba1e59cd662d078d81dcf2908840a77df15aed31d75dd017b7773c00";
libraryHaskellDepends = [
base
haskell-src-meta
mtl
parsec
template-haskell
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/tmhedberg/here";
description = "Here docs & interpolated strings via quasiquotation";
license = stdenv.lib.licenses.bsd3;

}) {};
"heredoc" = callPackage
({
  mkDerivation
, base
, stdenv
, template-haskell
}:
mkDerivation {

pname = "heredoc";
version = "0.2.0.0";
sha256 = "c90d9fc61cb8cd812be510845493b6a6eddcc4b772581fd40a9433ed8f130f40";
libraryHaskellDepends = [
base
template-haskell
];
doHaddock = false;
doCheck = false;
homepage = "http://hackage.haskell.org/package/heredoc";
description = "multi-line string / here document using QuasiQuotes";
license = stdenv.lib.licenses.publicDomain;

}) {};
"herms" = callPackage
({
  mkDerivation
, ansi-terminal
, base
, brick
, directory
, microlens
, microlens-th
, optparse-applicative
, semigroups
, split
, stdenv
, vty
}:
mkDerivation {

pname = "herms";
version = "1.8.1.4";
sha256 = "6c09005c6b456b076e5018d1fb75d8d157de2cc26e4da735c0dc199cc6e5f9c1";
isLibrary = false;
isExecutable = true;
enableSeparateDataOutput = true;
executableHaskellDepends = [
ansi-terminal
base
brick
directory
microlens
microlens-th
optparse-applicative
semigroups
split
vty
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/JackKiefer/herms";
description = "A command-line manager for delicious kitchen recipes";
license = stdenv.lib.licenses.gpl3;

}) {};
"heterocephalus" = callPackage
({
  mkDerivation
, base
, blaze-html
, blaze-markup
, containers
, dlist
, mtl
, parsec
, shakespeare
, stdenv
, template-haskell
, text
, transformers
}:
mkDerivation {

pname = "heterocephalus";
version = "1.0.5.2";
sha256 = "50b829508715ba246f095accd1b49f7c5f67380948d349df355bac39f4155923";
libraryHaskellDepends = [
base
blaze-html
blaze-markup
containers
dlist
mtl
parsec
shakespeare
template-haskell
text
transformers
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/arowM/heterocephalus#readme";
description = "A type-safe template engine for working with popular front end development tools";
license = stdenv.lib.licenses.mit;

}) {};
"hex" = callPackage
({
  mkDerivation
, base
, bytestring
, stdenv
}:
mkDerivation {

pname = "hex";
version = "0.1.2";
sha256 = "12ee1243edd80570a486521565fb0c9b5e39374f21a12f050636e71d55ec61ec";
libraryHaskellDepends = [
base
bytestring
];
doHaddock = false;
doCheck = false;
description = "Convert strings into hexadecimal and back";
license = stdenv.lib.licenses.bsd3;

}) {};
"hexml" = callPackage
({
  mkDerivation
, base
, bytestring
, extra
, stdenv
}:
mkDerivation {

pname = "hexml";
version = "0.3.3";
sha256 = "c4edcc6087df13ad9d9c30de9c1e8be527add3835cb94d59c32b1c5dce861cd2";
libraryHaskellDepends = [
base
bytestring
extra
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/ndmitchell/hexml#readme";
description = "XML subset DOM parser";
license = stdenv.lib.licenses.bsd3;

}) {};
"hexml-lens" = callPackage
({
  mkDerivation
, base
, bytestring
, contravariant
, foundation
, hexml
, lens
, profunctors
, stdenv
, text
}:
mkDerivation {

pname = "hexml-lens";
version = "0.2.1";
sha256 = "baa34ef7206ff924b2559a83da8f8f07bf970e9993a171c956b8de7b70cc496b";
libraryHaskellDepends = [
base
bytestring
contravariant
foundation
hexml
lens
profunctors
text
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/pepeiborra/hexml-lens#readme";
description = "Lenses for the hexml package";
license = stdenv.lib.licenses.bsd3;

}) {};
"hexpat" = callPackage
({
  mkDerivation
, base
, bytestring
, containers
, deepseq
, expat
, List
, stdenv
, text
, transformers
, utf8-string
}:
mkDerivation {

pname = "hexpat";
version = "0.20.13";
sha256 = "46e1a0e651c1603c1f064c6ca8d4c66cb27e7a66974bfb45ecaa8f9ccc753fd1";
libraryHaskellDepends = [
base
bytestring
containers
deepseq
List
text
transformers
utf8-string
];
librarySystemDepends = [
expat
];
doHaddock = false;
doCheck = false;
homepage = "http://haskell.org/haskellwiki/Hexpat/";
description = "XML parser/formatter based on expat";
license = stdenv.lib.licenses.bsd3;

}) {inherit (pkgs) expat;};
"hexstring" = callPackage
({
  mkDerivation
, aeson
, base
, base16-bytestring
, binary
, bytestring
, stdenv
, text
}:
mkDerivation {

pname = "hexstring";
version = "0.11.1";
sha256 = "40d8dbfe22f572ffdb73f28c448b228a75008e83cc3bf78e939add0c9d800914";
enableSeparateDataOutput = true;
libraryHaskellDepends = [
aeson
base
base16-bytestring
binary
bytestring
text
];
doHaddock = false;
doCheck = false;
homepage = "http://www.leonmergen.com/opensource.html";
description = "Fast and safe representation of a hex string";
license = stdenv.lib.licenses.mit;

}) {};
"hformat" = callPackage
({
  mkDerivation
, ansi-terminal
, base
, base-unicode-symbols
, stdenv
, text
}:
mkDerivation {

pname = "hformat";
version = "0.3.2.0";
sha256 = "a93fa94b10c1a4bc8e4eeee0482969935944e6c01bd57f89a624abf3007fc19c";
libraryHaskellDepends = [
ansi-terminal
base
base-unicode-symbols
text
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/mvoidex/hformat";
description = "Simple Haskell formatting";
license = stdenv.lib.licenses.bsd3;

}) {};
"hfsevents" = callPackage
({
  mkDerivation
, base
, bytestring
, cereal
, Cocoa
, CoreServices
, mtl
, stdenv
, text
}:
mkDerivation {

pname = "hfsevents";
version = "0.1.6";
sha256 = "74c3f3f3a5e55fff320c352a2d481069ff915860a0ab970864c6a0e6b65d3f05";
libraryHaskellDepends = [
base
bytestring
cereal
mtl
text
];
librarySystemDepends = [
Cocoa
];
libraryToolDepends = [
CoreServices
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/luite/hfsevents";
description = "File/folder watching for OS X";
license = stdenv.lib.licenses.bsd3;
platforms = [
"x86_64-darwin"
];

}) {inherit (pkgs.darwin.apple_sdk.frameworks) Cocoa;};
"hid" = callPackage
({
  mkDerivation
, base
, bytestring
, c2hs
, hidapi
, stdenv
, transformers
}:
mkDerivation {

pname = "hid";
version = "0.2.2";
sha256 = "0dd5c562b871626cfad11846d0d3b788823adc12fe009403a42e5f56108773d2";
libraryHaskellDepends = [
base
bytestring
transformers
];
libraryPkgconfigDepends = [
hidapi
];
libraryToolDepends = [
c2hs
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/phaazon/hid";
description = "Interface to hidapi library";
license = stdenv.lib.licenses.bsd3;

}) {inherit (pkgs) hidapi;};
"hidapi" = callPackage
({
  mkDerivation
, base
, bytestring
, deepseq
, deepseq-generics
, stdenv
, systemd
}:
mkDerivation {

pname = "hidapi";
version = "0.1.4";
sha256 = "fc40ea58320f9f1459a8da6463419bb15930d2e6d8273d5592cde509d4c96a75";
libraryHaskellDepends = [
base
bytestring
deepseq
deepseq-generics
];
librarySystemDepends = [
systemd
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/vahokif/haskell-hidapi";
description = "Haskell bindings to HIDAPI";
license = stdenv.lib.licenses.mit;

}) {inherit (pkgs) systemd;};
"hidden-char" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "hidden-char";
version = "0.1.0.2";
sha256 = "ea909372a7cc06cda7ee8e9c1a6a5c16be19fef256ad4bd2c0b39e61d940f498";
revision = "2";
editedCabalFile = "1d0k297hxff31k0x5xbli6l7c151d2y9wq4w0x0prgagjc0l7z5n";
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/rcook/hidden-char#readme";
description = "Provides cross-platform getHiddenChar function";
license = stdenv.lib.licenses.mit;

}) {};
"hierarchical-clustering" = callPackage
({
  mkDerivation
, array
, base
, containers
, stdenv
}:
mkDerivation {

pname = "hierarchical-clustering";
version = "0.4.6";
sha256 = "75f17f09b9c38d51a208edee10da2f4706ee784b5cdfe8efc31f7f86bbcdccb1";
libraryHaskellDepends = [
array
base
containers
];
doHaddock = false;
doCheck = false;
description = "Fast algorithms for single, average/UPGMA and complete linkage clustering";
license = stdenv.lib.licenses.bsd3;

}) {};
"higher-leveldb" = callPackage
({
  mkDerivation
, base
, bytestring
, cereal
, data-default
, exceptions
, leveldb-haskell
, mtl
, resourcet
, stdenv
, transformers
, transformers-base
, unliftio-core
}:
mkDerivation {

pname = "higher-leveldb";
version = "0.5.0.1";
sha256 = "44fc8de63416b7878e67d8c93f0ae25e3cba4a7fad2149bb5eac34d2b8d2f95c";
libraryHaskellDepends = [
base
bytestring
cereal
data-default
exceptions
leveldb-haskell
mtl
resourcet
transformers
transformers-base
unliftio-core
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/jeremyjh/higher-leveldb";
description = "A rich monadic API for working with leveldb databases";
license = stdenv.lib.licenses.bsd3;

}) {};
"highjson" = callPackage
({
  mkDerivation
, aeson
, base
, hvect
, lens
, stdenv
, text
}:
mkDerivation {

pname = "highjson";
version = "0.4.0.0";
sha256 = "c3eb05ed1abd9dd59eedcd22bd60b326059d0c3dcaee2a9f8238b0ac08a26962";
libraryHaskellDepends = [
aeson
base
hvect
lens
text
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/agrafix/highjson";
description = "Spec based JSON parsing/serialisation";
license = stdenv.lib.licenses.mit;

}) {};
"highjson-swagger" = callPackage
({
  mkDerivation
, base
, highjson
, hvect
, insert-ordered-containers
, lens
, stdenv
, swagger2
, text
}:
mkDerivation {

pname = "highjson-swagger";
version = "0.4.0.0";
sha256 = "2df02d2fd764fd5386094de59e181314ba152bd87dc2905d9869fefd4cb87e1f";
libraryHaskellDepends = [
base
highjson
hvect
insert-ordered-containers
lens
swagger2
text
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/agrafix/highjson";
description = "Derive swagger instances from highjson specs";
license = stdenv.lib.licenses.mit;

}) {};
"highjson-th" = callPackage
({
  mkDerivation
, aeson
, base
, highjson
, highjson-swagger
, stdenv
, swagger2
, template-haskell
, text
}:
mkDerivation {

pname = "highjson-th";
version = "0.4.0.0";
sha256 = "f30c4937a9db6eb1cea8b9efef76855af3b4745e3a620798681b8cf3c73202c5";
libraryHaskellDepends = [
aeson
base
highjson
highjson-swagger
swagger2
template-haskell
text
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/agrafix/highjson";
description = "Template Haskell helpers for highjson specs";
license = stdenv.lib.licenses.mit;

}) {};
"highlighting-kate" = callPackage
({
  mkDerivation
, base
, blaze-html
, bytestring
, containers
, mtl
, parsec
, pcre-light
, stdenv
, utf8-string
}:
mkDerivation {

pname = "highlighting-kate";
version = "0.6.4";
sha256 = "d8b83385f5da2ea7aa59f28eb860fd7eba0d35a4c36192a5044ee7ea1e001baf";
configureFlags = [
"-fpcre-light"
];
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
base
blaze-html
bytestring
containers
mtl
parsec
pcre-light
utf8-string
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/jgm/highlighting-kate";
description = "Syntax highlighting";
license = "GPL";

}) {};
"hindent" = callPackage
({
  mkDerivation
, base
, bytestring
, Cabal
, containers
, deepseq
, descriptive
, directory
, exceptions
, filepath
, ghc-prim
, haskell-src-exts
, monad-loops
, mtl
, path
, path-io
, stdenv
, text
, transformers
, unix-compat
, utf8-string
, yaml
}:
mkDerivation {

pname = "hindent";
version = "5.2.5";
sha256 = "2f701737a6b05c9535b2e087a8742cac81f0d82e8fc2e3330f0d79acf99f8ca6";
isLibrary = true;
isExecutable = true;
enableSeparateDataOutput = true;
libraryHaskellDepends = [
base
bytestring
Cabal
containers
directory
exceptions
filepath
haskell-src-exts
monad-loops
mtl
text
transformers
utf8-string
yaml
];
executableHaskellDepends = [
base
bytestring
deepseq
descriptive
directory
exceptions
ghc-prim
haskell-src-exts
path
path-io
text
transformers
unix-compat
utf8-string
yaml
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/commercialhaskell/hindent";
description = "Extensible Haskell pretty printer";
license = stdenv.lib.licenses.bsd3;

}) {};
"hinotify" = callPackage
({
  mkDerivation
, async
, base
, containers
, directory
, stdenv
, unix
}:
mkDerivation {

pname = "hinotify";
version = "0.3.9";
sha256 = "f2480e4c08a516831c2221eebc6a9d3242e892932d9315c34cbe92a101c5df99";
revision = "1";
editedCabalFile = "0df5pak0586626k3ryzg2lb26ys562l3i94jr9vpa0krs8iia209";
libraryHaskellDepends = [
async
base
containers
directory
unix
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/kolmodin/hinotify.git";
description = "Haskell binding to inotify";
license = stdenv.lib.licenses.bsd3;

}) {};
"hint" = callPackage
({
  mkDerivation
, base
, directory
, exceptions
, filepath
, ghc
, ghc-paths
, mtl
, random
, stdenv
, unix
}:
mkDerivation {

pname = "hint";
version = "0.7.0";
sha256 = "299a735848bd6b2e0bdeeee4b47d9d52f865198fbb9403df3f6571801b3e8155";
revision = "2";
editedCabalFile = "1w96sfg6vlrw5q7cjdg1rz9jf2yl47fyas9qg3jfa9bcfmvs8cg2";
libraryHaskellDepends = [
base
directory
exceptions
filepath
ghc
ghc-paths
mtl
random
unix
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/mvdan/hint";
description = "Runtime Haskell interpreter (GHC API wrapper)";
license = stdenv.lib.licenses.bsd3;

}) {};
"histogram-fill" = callPackage
({
  mkDerivation
, base
, deepseq
, ghc-prim
, primitive
, stdenv
, vector
}:
mkDerivation {

pname = "histogram-fill";
version = "0.8.5.0";
sha256 = "fbdd167d6f27c0d88f9aa8647ae95a313101c63a827275ac8d016d6028975133";
revision = "1";
editedCabalFile = "0pa5i5187g0y7r7ngy4gf9lqp76k9saz5qjri4nx0f98kwsacagg";
libraryHaskellDepends = [
base
deepseq
ghc-prim
primitive
vector
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/Shimuuar/histogram-fill/";
description = "Library for histograms creation";
license = stdenv.lib.licenses.bsd3;

}) {};
"hit" = callPackage
({
  mkDerivation
, attoparsec
, base
, byteable
, bytestring
, containers
, cryptohash
, hourglass
, mtl
, parsec
, patience
, random
, stdenv
, system-fileio
, system-filepath
, unix-compat
, utf8-string
, vector
, zlib
, zlib-bindings
}:
mkDerivation {

pname = "hit";
version = "0.6.3";
sha256 = "db86b3712029a4e40d1306dd6cc9ca2c9f4c77fe65a2b74106f1cbd2de26e471";
isLibrary = true;
isExecutable = true;
enableSeparateDataOutput = true;
libraryHaskellDepends = [
attoparsec
base
byteable
bytestring
containers
cryptohash
hourglass
mtl
parsec
patience
random
system-fileio
system-filepath
unix-compat
utf8-string
vector
zlib
zlib-bindings
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/vincenthz/hit";
description = "Git operations in haskell";
license = stdenv.lib.licenses.bsd3;

}) {};
"hjsmin" = callPackage
({
  mkDerivation
, base
, blaze-builder
, bytestring
, containers
, language-javascript
, optparse-applicative
, stdenv
, text
}:
mkDerivation {

pname = "hjsmin";
version = "0.2.0.2";
sha256 = "bec153d2396962c63998eb12d0a2c7c9f7df6f774cb00e41b6cdb1f5a4905484";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
base
blaze-builder
bytestring
containers
language-javascript
text
];
executableHaskellDepends = [
base
blaze-builder
bytestring
containers
language-javascript
optparse-applicative
text
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/erikd/hjsmin";
description = "Haskell implementation of a javascript minifier";
license = stdenv.lib.licenses.bsd3;

}) {};
"hjsonpointer" = callPackage
({
  mkDerivation
, aeson
, base
, hashable
, QuickCheck
, semigroups
, stdenv
, text
, unordered-containers
, vector
}:
mkDerivation {

pname = "hjsonpointer";
version = "1.3.0";
sha256 = "445b496c6408ed0a84b8f4df9cc96f5faa10b437d2ba26ef850171ce3335d831";
revision = "1";
editedCabalFile = "053x0iy7kzmf8b9mqr94lapv95d2rm2zm14lvvviyccqsd3k5gjd";
libraryHaskellDepends = [
aeson
base
hashable
QuickCheck
semigroups
text
unordered-containers
vector
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/seagreen/hjsonpointer";
description = "JSON Pointer library";
license = stdenv.lib.licenses.mit;

}) {};
"hjsonschema" = callPackage
({
  mkDerivation
, aeson
, base
, bytestring
, containers
, file-embed
, filepath
, hashable
, hjsonpointer
, http-client
, http-types
, pcre-heavy
, profunctors
, protolude
, QuickCheck
, scientific
, semigroups
, stdenv
, text
, unordered-containers
, vector
}:
mkDerivation {

pname = "hjsonschema";
version = "1.7.2";
sha256 = "0381b49800e1928b28f7abf626af0b0ba3eae3d418f58206eafd1f0a1d77fdb3";
libraryHaskellDepends = [
aeson
base
bytestring
containers
file-embed
filepath
hashable
hjsonpointer
http-client
http-types
pcre-heavy
profunctors
protolude
QuickCheck
scientific
semigroups
text
unordered-containers
vector
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/seagreen/hjsonschema";
description = "JSON Schema library";
license = stdenv.lib.licenses.mit;

}) {};
"hledger" = callPackage
({
  mkDerivation
, ansi-terminal
, base
, base-compat
, bytestring
, cmdargs
, containers
, csv
, data-default
, Decimal
, Diff
, directory
, file-embed
, filepath
, hashable
, haskeline
, here
, hledger-lib
, HUnit
, megaparsec
, mtl
, mtl-compat
, old-time
, parsec
, pretty-show
, process
, regex-tdfa
, safe
, shakespeare
, split
, stdenv
, tabular
, temporary
, terminfo
, text
, time
, transformers
, unordered-containers
, utf8-string
, utility-ht
, wizards
}:
mkDerivation {

pname = "hledger";
version = "1.5";
sha256 = "0185e2d24a72eae917ca08a8d1de42dceeb93357331c1162156a7adaa092af56";
isLibrary = true;
isExecutable = true;
enableSeparateDataOutput = true;
libraryHaskellDepends = [
ansi-terminal
base
base-compat
bytestring
cmdargs
containers
csv
data-default
Decimal
Diff
directory
file-embed
filepath
hashable
haskeline
here
hledger-lib
HUnit
megaparsec
mtl
mtl-compat
old-time
pretty-show
process
regex-tdfa
safe
shakespeare
split
tabular
temporary
terminfo
text
time
transformers
unordered-containers
utf8-string
utility-ht
wizards
];
executableHaskellDepends = [
ansi-terminal
base
base-compat
bytestring
cmdargs
containers
csv
data-default
Decimal
directory
file-embed
filepath
haskeline
here
hledger-lib
HUnit
mtl
mtl-compat
old-time
parsec
pretty-show
process
regex-tdfa
safe
shakespeare
split
tabular
temporary
terminfo
text
time
unordered-containers
utf8-string
utility-ht
wizards
];
doHaddock = false;
doCheck = false;
homepage = "http://hledger.org";
description = "Command-line interface for the hledger accounting tool";
license = stdenv.lib.licenses.gpl3;

}) {};
"hledger-api" = callPackage
({
  mkDerivation
, aeson
, base
, bytestring
, containers
, Decimal
, docopt
, either
, hledger
, hledger-lib
, microlens
, microlens-platform
, safe
, servant-server
, servant-swagger
, stdenv
, swagger2
, text
, transformers
, wai
, wai-extra
, warp
}:
mkDerivation {

pname = "hledger-api";
version = "1.5";
sha256 = "2948a5f4e404180f3095e243564e583435d61e2a22772929b856b564085456f1";
isLibrary = false;
isExecutable = true;
enableSeparateDataOutput = true;
executableHaskellDepends = [
aeson
base
bytestring
containers
Decimal
docopt
either
hledger
hledger-lib
microlens
microlens-platform
safe
servant-server
servant-swagger
swagger2
text
transformers
wai
wai-extra
warp
];
doHaddock = false;
doCheck = false;
homepage = "http://hledger.org";
description = "Web API server for the hledger accounting tool";
license = stdenv.lib.licenses.gpl3;

}) {};
"hledger-iadd" = callPackage
({
  mkDerivation
, base
, brick
, containers
, directory
, free
, hledger-lib
, megaparsec
, microlens
, microlens-th
, optparse-applicative
, semigroups
, stdenv
, text
, text-zipper
, time
, transformers
, unordered-containers
, vector
, vty
, xdg-basedir
}:
mkDerivation {

pname = "hledger-iadd";
version = "1.3.5";
sha256 = "2c01e8702fd5f87ca5eb3df7e7ddf47a89a5eb4ed5e1eb7b1c2720e23694e856";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
base
brick
containers
directory
free
hledger-lib
megaparsec
microlens
microlens-th
optparse-applicative
semigroups
text
text-zipper
time
transformers
unordered-containers
vector
vty
xdg-basedir
];
executableHaskellDepends = [
base
brick
directory
free
hledger-lib
megaparsec
microlens
optparse-applicative
text
text-zipper
time
transformers
unordered-containers
vector
vty
xdg-basedir
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/hpdeifel/hledger-iadd#readme";
description = "A terminal UI as drop-in replacement for hledger add";
license = stdenv.lib.licenses.bsd3;

}) {};
"hledger-interest" = callPackage
({
  mkDerivation
, base
, Cabal
, Decimal
, hledger-lib
, mtl
, stdenv
, text
, time
}:
mkDerivation {

pname = "hledger-interest";
version = "1.5.1";
sha256 = "0a02354f4e8d53e75817e05b140c4760220ac4e414fbf9772abe4f20a9f90da6";
isLibrary = false;
isExecutable = true;
enableSeparateDataOutput = true;
executableHaskellDepends = [
base
Cabal
Decimal
hledger-lib
mtl
text
time
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/peti/hledger-interest";
description = "computes interest for a given account";
license = stdenv.lib.licenses.bsd3;

}) {};
"hledger-lib" = callPackage
({
  mkDerivation
, ansi-terminal
, array
, base
, base-compat
, blaze-markup
, bytestring
, cmdargs
, containers
, csv
, data-default
, Decimal
, deepseq
, directory
, extra
, filepath
, hashtables
, HUnit
, megaparsec
, mtl
, mtl-compat
, old-time
, parsec
, pretty-show
, regex-tdfa
, safe
, split
, stdenv
, text
, time
, transformers
, uglymemo
, utf8-string
}:
mkDerivation {

pname = "hledger-lib";
version = "1.5.1";
sha256 = "7d784bb96fd91a458ae9a14fe9f8a1164eaa891297fda17933cd9552a48262ae";
enableSeparateDataOutput = true;
libraryHaskellDepends = [
ansi-terminal
array
base
base-compat
blaze-markup
bytestring
cmdargs
containers
csv
data-default
Decimal
deepseq
directory
extra
filepath
hashtables
HUnit
megaparsec
mtl
mtl-compat
old-time
parsec
pretty-show
regex-tdfa
safe
split
text
time
transformers
uglymemo
utf8-string
];
doHaddock = false;
doCheck = false;
homepage = "http://hledger.org";
description = "Core data types, parsers and functionality for the hledger accounting tools";
license = stdenv.lib.licenses.gpl3;

}) {};
"hledger-ui" = callPackage
({
  mkDerivation
, ansi-terminal
, async
, base
, base-compat
, brick
, cmdargs
, containers
, data-default
, directory
, filepath
, fsnotify
, hledger
, hledger-lib
, HUnit
, megaparsec
, microlens
, microlens-platform
, pretty-show
, process
, safe
, split
, stdenv
, text
, text-zipper
, time
, transformers
, vector
, vty
}:
mkDerivation {

pname = "hledger-ui";
version = "1.5";
sha256 = "ddf0a2777f619b5a84409104ca7f208b126ac9095c2d57d3439bb776b1979b80";
isLibrary = false;
isExecutable = true;
enableSeparateDataOutput = true;
executableHaskellDepends = [
ansi-terminal
async
base
base-compat
brick
cmdargs
containers
data-default
directory
filepath
fsnotify
hledger
hledger-lib
HUnit
megaparsec
microlens
microlens-platform
pretty-show
process
safe
split
text
text-zipper
time
transformers
vector
vty
];
doHaddock = false;
doCheck = false;
homepage = "http://hledger.org";
description = "Curses-style user interface for the hledger accounting tool";
license = stdenv.lib.licenses.gpl3;

}) {};
"hledger-web" = callPackage
({
  mkDerivation
, base
, base-compat
, blaze-html
, blaze-markup
, bytestring
, clientsession
, cmdargs
, conduit-extra
, data-default
, directory
, filepath
, hjsmin
, hledger
, hledger-lib
, http-client
, http-conduit
, HUnit
, json
, megaparsec
, mtl
, parsec
, safe
, shakespeare
, stdenv
, template-haskell
, text
, time
, transformers
, wai
, wai-extra
, wai-handler-launch
, warp
, yaml
, yesod
, yesod-core
, yesod-form
, yesod-static
}:
mkDerivation {

pname = "hledger-web";
version = "1.5.1";
sha256 = "43c8841dddaf1fe2c7c7bd0f1217bfaa5e5f808c9469507c2b6587ad7aef723c";
isLibrary = true;
isExecutable = true;
enableSeparateDataOutput = true;
libraryHaskellDepends = [
base
base-compat
blaze-html
blaze-markup
bytestring
clientsession
cmdargs
conduit-extra
data-default
directory
filepath
hjsmin
hledger
hledger-lib
http-client
http-conduit
HUnit
json
megaparsec
mtl
parsec
safe
shakespeare
template-haskell
text
time
transformers
wai
wai-extra
wai-handler-launch
warp
yaml
yesod
yesod-core
yesod-form
yesod-static
];
executableHaskellDepends = [
base
base-compat
blaze-html
blaze-markup
bytestring
clientsession
cmdargs
conduit-extra
data-default
directory
filepath
hjsmin
hledger
hledger-lib
http-client
http-conduit
HUnit
json
megaparsec
mtl
parsec
safe
shakespeare
template-haskell
text
time
transformers
wai
wai-extra
wai-handler-launch
warp
yaml
yesod
yesod-core
yesod-form
yesod-static
];
doHaddock = false;
doCheck = false;
homepage = "http://hledger.org";
description = "Web interface for the hledger accounting tool";
license = stdenv.lib.licenses.gpl3;

}) {};
"hlibgit2" = callPackage
({
  mkDerivation
, base
, bindings-DSL
, openssl
, stdenv
, zlib
}:
mkDerivation {

pname = "hlibgit2";
version = "0.18.0.16";
sha256 = "199e4027faafe0a39d18ca3168923d44c57b386b960c72398df1c0fb7eff8e5e";
libraryHaskellDepends = [
base
bindings-DSL
zlib
];
librarySystemDepends = [
openssl
];
doHaddock = false;
doCheck = false;
description = "Low-level bindings to libgit2";
license = stdenv.lib.licenses.mit;

}) {inherit (pkgs) openssl;};
"hlibsass" = callPackage
({
  mkDerivation
, base
, Cabal
, directory
, libsass
, stdenv
}:
mkDerivation {

pname = "hlibsass";
version = "0.1.6.1";
sha256 = "3e120a4f266445f50299a0009c24bd0a69a7af4c88376de0e1882a505d580849";
configureFlags = [
"-fexternalLibsass"
];
setupHaskellDepends = [
base
Cabal
directory
];
libraryHaskellDepends = [
base
];
librarySystemDepends = [
libsass
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/jakubfijalkowski/hlibsass";
description = "Low-level bindings to Libsass";
license = stdenv.lib.licenses.mit;

}) {inherit (pkgs) libsass;};
"hlint" = callPackage
({
  mkDerivation
, aeson
, ansi-terminal
, base
, bytestring
, cmdargs
, containers
, cpphs
, data-default
, directory
, extra
, filepath
, haskell-src-exts
, haskell-src-exts-util
, hscolour
, process
, refact
, stdenv
, text
, transformers
, uniplate
, unordered-containers
, vector
, yaml
}:
mkDerivation {

pname = "hlint";
version = "2.1.5";
sha256 = "41f21566627d02f69f5715d883ebffd54e64e8f2af1d2376830b6880565a7102";
isLibrary = true;
isExecutable = true;
enableSeparateDataOutput = true;
libraryHaskellDepends = [
aeson
ansi-terminal
base
bytestring
cmdargs
containers
cpphs
data-default
directory
extra
filepath
haskell-src-exts
haskell-src-exts-util
hscolour
process
refact
text
transformers
uniplate
unordered-containers
vector
yaml
];
executableHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/ndmitchell/hlint#readme";
description = "Source code suggestions";
license = stdenv.lib.licenses.bsd3;

}) {};
"hmatrix" = callPackage
({
  mkDerivation
, array
, base
, binary
, bytestring
, deepseq
, openblasCompat
, random
, semigroups
, split
, stdenv
, storable-complex
, vector
}:
mkDerivation {

pname = "hmatrix";
version = "0.18.2.0";
sha256 = "960cdc81143d68841a036f7c642a06c5303bf8ded9737bcfc560755fef138560";
configureFlags = [
"-fdisable-default-paths"
"-fopenblas"
];
libraryHaskellDepends = [
array
base
binary
bytestring
deepseq
random
semigroups
split
storable-complex
vector
];
librarySystemDepends = [
openblasCompat
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/albertoruiz/hmatrix";
description = "Numeric Linear Algebra";
license = stdenv.lib.licenses.bsd3;

}) {inherit (pkgs) openblasCompat;};
"hmatrix-backprop" = callPackage
({
  mkDerivation
, ANum
, backprop
, base
, finite-typelits
, ghc-typelits-knownnat
, ghc-typelits-natnormalise
, hmatrix
, hmatrix-vector-sized
, microlens
, stdenv
, vector
, vector-sized
}:
mkDerivation {

pname = "hmatrix-backprop";
version = "0.1.2.0";
sha256 = "4ce16590ae86bb84eadc5a5af97ae4f662d536a62592f5b4fb7b22da7ff12d53";
libraryHaskellDepends = [
ANum
backprop
base
finite-typelits
ghc-typelits-knownnat
ghc-typelits-natnormalise
hmatrix
hmatrix-vector-sized
microlens
vector
vector-sized
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/mstksg/hmatrix-backprop#readme";
description = "hmatrix operations lifted for backprop";
license = stdenv.lib.licenses.bsd3;

}) {};
"hmatrix-gsl" = callPackage
({
  mkDerivation
, array
, base
, gsl
, hmatrix
, process
, random
, stdenv
, vector
}:
mkDerivation {

pname = "hmatrix-gsl";
version = "0.18.2.0";
sha256 = "dac92397269deaa2ecd2b2175a85eb35c5634c269e6323100268d2adfc826f3f";
libraryHaskellDepends = [
array
base
hmatrix
process
random
vector
];
libraryPkgconfigDepends = [
gsl
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/albertoruiz/hmatrix";
description = "Numerical computation";
license = "GPL";

}) {inherit (pkgs) gsl;};
"hmatrix-gsl-stats" = callPackage
({
  mkDerivation
, base
, binary
, gsl
, hmatrix
, stdenv
, storable-complex
, vector
}:
mkDerivation {

pname = "hmatrix-gsl-stats";
version = "0.4.1.7";
sha256 = "4a0f8b6ea1caefebd30f1e726c94f238d96c0f873bdeb5d920367e8aca7c54bf";
libraryHaskellDepends = [
base
binary
hmatrix
storable-complex
vector
];
libraryPkgconfigDepends = [
gsl
];
doHaddock = false;
doCheck = false;
homepage = "http://code.haskell.org/hmatrix-gsl-stats";
description = "GSL Statistics interface";
license = stdenv.lib.licenses.bsd3;

}) {inherit (pkgs) gsl;};
"hmatrix-morpheus" = callPackage
({
  mkDerivation
, base
, blas
, hmatrix
, liblapack
, stdenv
}:
mkDerivation {

pname = "hmatrix-morpheus";
version = "0.1.1.1";
sha256 = "729b81f4b434e0132e13508e02e688a9af182390120c0ba2144702b11f9fecf8";
libraryHaskellDepends = [
base
hmatrix
];
librarySystemDepends = [
blas
liblapack
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/Alexander-Ignatyev/morpheus/tree/master/hmatrix-morpheus";
description = "Low-level machine learning auxiliary functions";
license = stdenv.lib.licenses.bsd3;

}) {inherit (pkgs) blas; inherit (pkgs) liblapack;};
"hmatrix-repa" = callPackage
({
  mkDerivation
, base
, hmatrix
, repa
, stdenv
, vector
}:
mkDerivation {

pname = "hmatrix-repa";
version = "0.1.2.2";
sha256 = "51c3a46800aea072258b05047cb0c6f24999bbb626268ce32809c5872e0e71be";
libraryHaskellDepends = [
base
hmatrix
repa
vector
];
doHaddock = false;
doCheck = false;
homepage = "http://code.haskell.org/hmatrix-repa";
description = "Adaptors for interoperability between hmatrix and repa";
license = stdenv.lib.licenses.bsd3;

}) {};
"hmatrix-special" = callPackage
({
  mkDerivation
, base
, hmatrix
, hmatrix-gsl
, stdenv
}:
mkDerivation {

pname = "hmatrix-special";
version = "0.4.0.1";
sha256 = "72a9c9c559da6b6314e6042ddfd53d638fdf1b819978a630fc339e0859c3ec4e";
libraryHaskellDepends = [
base
hmatrix
hmatrix-gsl
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/albertoruiz/hmatrix";
description = "Interface to GSL special functions";
license = "GPL";

}) {};
"hmatrix-vector-sized" = callPackage
({
  mkDerivation
, base
, hmatrix
, stdenv
, vector
, vector-sized
}:
mkDerivation {

pname = "hmatrix-vector-sized";
version = "0.1.1.0";
sha256 = "8b4edc591aa301ee2c4d2f5894ad690db8d88c9d48754f6d13c30d3eacc03b1d";
libraryHaskellDepends = [
base
hmatrix
vector
vector-sized
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/mstksg/hmatrix-vector-sized#readme";
description = "Conversions between hmatrix and vector-sized types";
license = stdenv.lib.licenses.bsd3;

}) {};
"hmpfr" = callPackage
({
  mkDerivation
, base
, integer-gmp
, mpfr
, stdenv
}:
mkDerivation {

pname = "hmpfr";
version = "0.4.4";
sha256 = "2badebf032a24f6ab3bde068d5246bc9cc00bf5a8ac17da8cc0bd45c882816f5";
enableSeparateDataOutput = true;
libraryHaskellDepends = [
base
integer-gmp
];
librarySystemDepends = [
mpfr
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/michalkonecny/hmpfr";
description = "Haskell binding to the MPFR library";
license = stdenv.lib.licenses.bsd3;

}) {inherit (pkgs) mpfr;};
"hocilib" = callPackage
({
  mkDerivation
, base
, bytestring
, c2hs
, containers
, inline-c
, ocilib
, stdenv
, template-haskell
}:
mkDerivation {

pname = "hocilib";
version = "0.2.0";
sha256 = "7c29cc84e7ac320cd1ddfb9d387d19c7c03fea3eedfb41713115d0e94aeafb78";
libraryHaskellDepends = [
base
bytestring
containers
inline-c
template-haskell
];
librarySystemDepends = [
ocilib
];
libraryToolDepends = [
c2hs
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/fpinsight/hocilib";
description = "FFI binding to OCILIB";
license = stdenv.lib.licenses.bsd3;

}) {inherit (pkgs) ocilib;};
"hoogle" = callPackage
({
  mkDerivation
, aeson
, base
, binary
, bytestring
, cmdargs
, conduit
, conduit-extra
, connection
, containers
, deepseq
, directory
, extra
, filepath
, haskell-src-exts
, http-conduit
, http-types
, js-flot
, js-jquery
, mmap
, network
, network-uri
, old-locale
, process-extras
, QuickCheck
, resourcet
, stdenv
, storable-tuple
, tar
, template-haskell
, text
, time
, transformers
, uniplate
, utf8-string
, vector
, wai
, wai-logger
, warp
, warp-tls
, zlib
}:
mkDerivation {

pname = "hoogle";
version = "5.0.17.3";
sha256 = "66bebaf75600fef1c5fc0613ccc55c137aaed4c8f69653cf903f4fb003b98f9c";
isLibrary = true;
isExecutable = true;
enableSeparateDataOutput = true;
libraryHaskellDepends = [
aeson
base
binary
bytestring
cmdargs
conduit
conduit-extra
connection
containers
deepseq
directory
extra
filepath
haskell-src-exts
http-conduit
http-types
js-flot
js-jquery
mmap
network
network-uri
old-locale
process-extras
QuickCheck
resourcet
storable-tuple
tar
template-haskell
text
time
transformers
uniplate
utf8-string
vector
wai
wai-logger
warp
warp-tls
zlib
];
executableHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
testTarget = "--test-option=--no-net";
homepage = "http://hoogle.haskell.org/";
description = "Haskell API Search";
license = stdenv.lib.licenses.bsd3;

}) {};
"hoopl" = callPackage
({
  mkDerivation
, base
, containers
, stdenv
}:
mkDerivation {

pname = "hoopl";
version = "3.10.2.2";
sha256 = "097b1316d5f1c8ffe71133223209eb2b095fe13f43dc01d1fe43fd8a545a2b97";
revision = "2";
editedCabalFile = "0j6pz4jzhvviyrhhn1j22ikmjvzrg60nzvq26lbpkcb6y4q6rlyx";
libraryHaskellDepends = [
base
containers
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/haskell/hoopl";
description = "A library to support dataflow analysis and optimization";
license = stdenv.lib.licenses.bsd3;

}) {};
"hopenssl" = callPackage
({
  mkDerivation
, base
, bytestring
, Cabal
, cabal-doctest
, openssl
, stdenv
}:
mkDerivation {

pname = "hopenssl";
version = "2.2.1";
sha256 = "7031aac15f132057f8013f819774081cd8fc4a14fb076bc3dffb478d66d0abdf";
setupHaskellDepends = [
base
Cabal
cabal-doctest
];
libraryHaskellDepends = [
base
bytestring
];
librarySystemDepends = [
openssl
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/peti/hopenssl";
description = "FFI Bindings to OpenSSL's EVP Digest Interface";
license = stdenv.lib.licenses.bsd3;

}) {inherit (pkgs) openssl;};
"hopfli" = callPackage
({
  mkDerivation
, base
, bytestring
, stdenv
, zlib
}:
mkDerivation {

pname = "hopfli";
version = "0.2.2.1";
sha256 = "4d71dc0f599c87445c22403b447ce310bf8567d6b10cc82efbdd00a4d4d12a18";
revision = "1";
editedCabalFile = "116jns5im51sb9xiwpx308wz3pr67335633anrf8f704pz8vwjka";
libraryHaskellDepends = [
base
bytestring
zlib
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/ananthakumaran/hopfli";
description = "Bidings to Google's Zopfli compression library";
license = stdenv.lib.licenses.asl20;

}) {};
"hosc" = callPackage
({
  mkDerivation
, base
, binary
, blaze-builder
, bytestring
, data-binary-ieee754
, network
, stdenv
, time
, transformers
}:
mkDerivation {

pname = "hosc";
version = "0.16";
sha256 = "72ed7430ca8b3121cb59325973c4dd75fe9df27c4023618d888eff3fef9c45f6";
enableSeparateDataOutput = true;
libraryHaskellDepends = [
base
binary
blaze-builder
bytestring
data-binary-ieee754
network
time
transformers
];
doHaddock = false;
doCheck = false;
homepage = "http://rd.slavepianos.org/t/hosc";
description = "Haskell Open Sound Control";
license = "GPL";

}) {};
"hostname" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "hostname";
version = "1.0";
sha256 = "9b43dab1b6da521f35685b20555da00738c8e136eb972458c786242406a9cf5c";
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
description = "A very simple package providing a cross-platform means of determining the hostname";
license = stdenv.lib.licenses.bsd3;

}) {};
"hostname-validate" = callPackage
({
  mkDerivation
, attoparsec
, base
, bytestring
, stdenv
}:
mkDerivation {

pname = "hostname-validate";
version = "1.0.0";
sha256 = "7fafb1e0cfe19d453030754962e74cdb8f3e791ec5b974623cbf26872779c857";
libraryHaskellDepends = [
attoparsec
base
bytestring
];
doHaddock = false;
doCheck = false;
description = "Validate hostnames e.g. localhost or foo.co.uk.";
license = stdenv.lib.licenses.bsd3;

}) {};
"hourglass" = callPackage
({
  mkDerivation
, base
, deepseq
, stdenv
}:
mkDerivation {

pname = "hourglass";
version = "0.2.11";
sha256 = "18a6bb303fc055275cca45aaffc17b6a04b2e9d7509aa5aa5bb9d9239f4e4f51";
libraryHaskellDepends = [
base
deepseq
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/vincenthz/hs-hourglass";
description = "simple performant time related library";
license = stdenv.lib.licenses.bsd3;

}) {};
"hourglass-orphans" = callPackage
({
  mkDerivation
, aeson
, base
, hourglass
, stdenv
}:
mkDerivation {

pname = "hourglass-orphans";
version = "0.1.0.0";
sha256 = "9f0ba9f3b3cdd391b26daf3dce0bac44ab1f9dd883eaff063af9ebfb0b373d64";
libraryHaskellDepends = [
aeson
base
hourglass
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/psibi/hourglass-orphans#readme";
description = "Orphan Aeson instances to hourglass";
license = stdenv.lib.licenses.bsd3;

}) {};
"hp2pretty" = callPackage
({
  mkDerivation
, array
, attoparsec
, base
, containers
, filepath
, floatshow
, mtl
, optparse-applicative
, semigroups
, stdenv
, text
}:
mkDerivation {

pname = "hp2pretty";
version = "0.8.0.2";
sha256 = "2fd19796845be73b605ee8830704a6f1f23a80f43731cd36a216fb2b3bb179c8";
isLibrary = false;
isExecutable = true;
executableHaskellDepends = [
array
attoparsec
base
containers
filepath
floatshow
mtl
optparse-applicative
semigroups
text
];
doHaddock = false;
doCheck = false;
homepage = "https://code.mathr.co.uk/hp2pretty";
description = "generate pretty graphs from heap profiles";
license = stdenv.lib.licenses.bsd3;

}) {};
"hpack" = callPackage
({
  mkDerivation
, aeson
, base
, bifunctors
, bytestring
, Cabal
, containers
, cryptonite
, deepseq
, directory
, filepath
, Glob
, http-client
, http-client-tls
, http-types
, pretty
, scientific
, stdenv
, text
, transformers
, unordered-containers
, vector
, yaml
}:
mkDerivation {

pname = "hpack";
version = "0.27.0";
sha256 = "d54744d77b645eb61d9498409904fca909c6d994402e806ad3c9c65596702bef";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
aeson
base
bifunctors
bytestring
Cabal
containers
cryptonite
deepseq
directory
filepath
Glob
http-client
http-client-tls
http-types
pretty
scientific
text
transformers
unordered-containers
vector
yaml
];
executableHaskellDepends = [
aeson
base
bifunctors
bytestring
Cabal
containers
cryptonite
deepseq
directory
filepath
Glob
http-client
http-client-tls
http-types
pretty
scientific
text
transformers
unordered-containers
vector
yaml
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/sol/hpack#readme";
description = "An alternative format for Haskell packages";
license = stdenv.lib.licenses.mit;

}) {};
"hpc" = callPackage
({
  mkDerivation
, base
, containers
, directory
, filepath
, stdenv
, time
}:
mkDerivation {

pname = "hpc";
version = "0.6.0.3";
sha256 = "16dac73e55899815a32715c35fa5986da077d7e7887ce8ef1c72b4f33a73a2aa";
revision = "1";
editedCabalFile = "1bddfsgn48kh8qa72asgmx7z4ym00zkh09g3hqp6l6yl919drn2i";
libraryHaskellDepends = [
base
containers
directory
filepath
time
];
doHaddock = false;
doCheck = false;
description = "Code Coverage Library for Haskell";
license = stdenv.lib.licenses.bsd3;

}) {};
"hpc-coveralls" = callPackage
({
  mkDerivation
, aeson
, async
, base
, bytestring
, Cabal
, cmdargs
, containers
, curl
, directory
, directory-tree
, hpc
, process
, pureMD5
, regex-posix
, retry
, safe
, split
, stdenv
, transformers
}:
mkDerivation {

pname = "hpc-coveralls";
version = "1.0.10";
sha256 = "e222c0d36a6d266205957d0c71e1baeb1581847e79b0b5b9d883a4ef7381d0d9";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
aeson
base
bytestring
Cabal
cmdargs
containers
curl
directory
directory-tree
hpc
process
pureMD5
retry
safe
split
transformers
];
executableHaskellDepends = [
aeson
async
base
bytestring
Cabal
cmdargs
containers
curl
directory
directory-tree
hpc
process
pureMD5
regex-posix
retry
safe
split
transformers
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/guillaume-nargeot/hpc-coveralls";
description = "Coveralls.io support for Haskell.";
license = stdenv.lib.licenses.bsd3;

}) {};
"hpio" = callPackage
({
  mkDerivation
, async
, base
, bytestring
, containers
, directory
, exceptions
, filepath
, monad-control
, monad-logger
, mtl
, optparse-applicative
, protolude
, QuickCheck
, stdenv
, text
, transformers
, transformers-base
, unix
, unix-bytestring
}:
mkDerivation {

pname = "hpio";
version = "0.9.0.6";
sha256 = "bd1bd338a962d4d5c8a355ef75a24e9bae5b96734a2289ce637c066ed61c841c";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
base
bytestring
containers
directory
exceptions
filepath
monad-control
monad-logger
mtl
protolude
QuickCheck
text
transformers
transformers-base
unix
unix-bytestring
];
executableHaskellDepends = [
async
base
exceptions
mtl
optparse-applicative
protolude
text
transformers
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/quixoftic/hpio#readme";
description = "Monads for GPIO in Haskell";
license = stdenv.lib.licenses.bsd3;

}) {};
"hpp" = callPackage
({
  mkDerivation
, base
, bytestring
, bytestring-trie
, directory
, filepath
, ghc-prim
, stdenv
, time
, transformers
}:
mkDerivation {

pname = "hpp";
version = "0.5.2";
sha256 = "8ced49fbdd2e54be8c1fe99e3a8c908475b063c583cb3d305199759683563ae4";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
base
bytestring
bytestring-trie
directory
filepath
ghc-prim
time
transformers
];
executableHaskellDepends = [
base
directory
filepath
time
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/acowley/hpp";
description = "A Haskell pre-processor";
license = stdenv.lib.licenses.bsd3;

}) {};
"hpqtypes" = callPackage
({
  mkDerivation
, aeson
, base
, bytestring
, Cabal
, containers
, data-default-class
, directory
, exceptions
, filepath
, lifted-base
, monad-control
, mtl
, postgresql
, resource-pool
, semigroups
, stdenv
, text
, text-show
, time
, transformers
, transformers-base
, vector
}:
mkDerivation {

pname = "hpqtypes";
version = "1.5.2.0";
sha256 = "fc0da2a7119e1da3bc77a05d99c1c654ff6103f267e58fa745a66aeabdca183e";
setupHaskellDepends = [
base
Cabal
directory
filepath
];
libraryHaskellDepends = [
aeson
base
bytestring
containers
data-default-class
exceptions
lifted-base
monad-control
mtl
resource-pool
semigroups
text
text-show
time
transformers
transformers-base
vector
];
librarySystemDepends = [
postgresql
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/scrive/hpqtypes";
description = "Haskell bindings to libpqtypes";
license = stdenv.lib.licenses.bsd3;

}) {inherit (pkgs) postgresql;};
"hquantlib" = callPackage
({
  mkDerivation
, base
, containers
, hmatrix
, hmatrix-gsl
, hmatrix-special
, mersenne-random-pure64
, parallel
, random
, statistics
, stdenv
, time
, vector
, vector-algorithms
}:
mkDerivation {

pname = "hquantlib";
version = "0.0.4.0";
sha256 = "b7b2b9ce5e8113dd2d54a1dfce34b661620bd5e0dd43516604395276d7c44474";
revision = "2";
editedCabalFile = "1wx32kkv1as3rras5b1y3v77abx0sqsam6ssa5s7vm83pncx38y4";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
base
containers
hmatrix
hmatrix-gsl
hmatrix-special
mersenne-random-pure64
parallel
random
statistics
time
vector
vector-algorithms
];
executableHaskellDepends = [
base
containers
mersenne-random-pure64
parallel
time
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/paulrzcz/hquantlib.git";
description = "HQuantLib is a port of essencial parts of QuantLib to Haskell";
license = "LGPL";

}) {};
"hreader" = callPackage
({
  mkDerivation
, base
, exceptions
, hset
, mmorph
, monad-control
, mtl
, stdenv
, tagged
, transformers
, transformers-base
}:
mkDerivation {

pname = "hreader";
version = "1.1.0";
sha256 = "2a2b02c059b343ab7ff0d340b6545a003b0d563fb8a1ad2d53d6c2f4759a7d3a";
libraryHaskellDepends = [
base
exceptions
hset
mmorph
monad-control
mtl
tagged
transformers
transformers-base
];
doHaddock = false;
doCheck = false;
homepage = "https://bitbucket.org/s9gf4ult/hreader";
description = "Generalization of MonadReader and ReaderT using hset";
license = stdenv.lib.licenses.bsd3;

}) {};
"hreader-lens" = callPackage
({
  mkDerivation
, base
, comonad
, hreader
, hset
, lens
, lens-action
, profunctors
, stdenv
}:
mkDerivation {

pname = "hreader-lens";
version = "0.1.3.0";
sha256 = "408f0a2c6ce4bc5c00746947262f43f421f0e8fb9cc29c0cd2563ee1e87502d0";
libraryHaskellDepends = [
base
comonad
hreader
hset
lens
lens-action
profunctors
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/dredozubov/hreader-lens";
description = "Optics for hreader package";
license = stdenv.lib.licenses.mit;

}) {};
"hruby" = callPackage
({
  mkDerivation
, aeson
, attoparsec
, base
, bytestring
, ruby
, scientific
, stdenv
, stm
, text
, unordered-containers
, vector
}:
mkDerivation {

pname = "hruby";
version = "0.3.5.1";
sha256 = "969b829f28d369a3a99960e3890427470459425b3434576e54f8fd3ca13fef3f";
libraryHaskellDepends = [
aeson
attoparsec
base
bytestring
scientific
stm
text
unordered-containers
vector
];
librarySystemDepends = [
ruby
];
doHaddock = false;
doCheck = false;
description = "Embed a Ruby intepreter in your Haskell program !";
license = stdenv.lib.licenses.bsd3;

}) {inherit (pkgs) ruby;};
"hs-GeoIP" = callPackage
({
  mkDerivation
, base
, bytestring
, deepseq
, GeoIP
, stdenv
}:
mkDerivation {

pname = "hs-GeoIP";
version = "0.3";
sha256 = "8e5ff6a132d8944336f10dcaa69d8852cdd7953a5ff18248ae06cb2819a1ab8c";
libraryHaskellDepends = [
base
bytestring
deepseq
];
librarySystemDepends = [
GeoIP
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/ozataman/hs-GeoIP";
description = "Haskell bindings to the MaxMind GeoIPCity database via the C library";
license = stdenv.lib.licenses.bsd3;

}) {inherit (pkgs) GeoIP;};
"hs-bibutils" = callPackage
({
  mkDerivation
, base
, stdenv
, syb
}:
mkDerivation {

pname = "hs-bibutils";
version = "6.2.0.1";
sha256 = "4b668090049bf67f107b8bcd39a4664c00b78ff596de9ccb63720af49ed4a630";
libraryHaskellDepends = [
base
syb
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/wilx/hs-bibutils";
description = "Haskell bindings to bibutils, the bibliography conversion utilities";
license = "GPL";

}) {};
"hsass" = callPackage
({
  mkDerivation
, base
, bytestring
, data-default-class
, filepath
, hlibsass
, monad-loops
, stdenv
, transformers
}:
mkDerivation {

pname = "hsass";
version = "0.5.0";
sha256 = "8dc4c6a7455a1182ec2dba36c489f89d7e5c1053388b2c63c4ddba6080b7501e";
revision = "1";
editedCabalFile = "00va8x51p6rbg8jbkxpyz74pa2pfm5dsrpi57icbyickx39iaydd";
libraryHaskellDepends = [
base
bytestring
data-default-class
filepath
hlibsass
monad-loops
transformers
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/jakubfijalkowski/hsass";
description = "Integrating Sass into Haskell applications";
license = stdenv.lib.licenses.mit;

}) {};
"hsb2hs" = callPackage
({
  mkDerivation
, base
, bytestring
, containers
, directory
, filepath
, preprocessor-tools
, stdenv
}:
mkDerivation {

pname = "hsb2hs";
version = "0.3.1";
sha256 = "8ad800820554f273ada083dfce2f463d920fb1ceb053255023a4c883b090f9d8";
isLibrary = false;
isExecutable = true;
executableHaskellDepends = [
base
bytestring
containers
directory
filepath
preprocessor-tools
];
doHaddock = false;
doCheck = false;
description = "Preprocesses a file, adding blobs from files as string literals";
license = stdenv.lib.licenses.bsd3;

}) {};
"hscolour" = callPackage
({
  mkDerivation
, base
, containers
, stdenv
}:
mkDerivation {

pname = "hscolour";
version = "1.24.4";
sha256 = "243332b082294117f37b2c2c68079fa61af68b36223b3fc07594f245e0e5321d";
isLibrary = true;
isExecutable = true;
enableSeparateDataOutput = true;
libraryHaskellDepends = [
base
containers
];
executableHaskellDepends = [
base
containers
];
doHaddock = false;
doCheck = false;
homepage = "http://code.haskell.org/~malcolm/hscolour/";
description = "Colourise Haskell code";
license = "LGPL";

}) {};
"hsdns" = callPackage
({
  mkDerivation
, adns
, base
, containers
, network
, stdenv
}:
mkDerivation {

pname = "hsdns";
version = "1.7.1";
sha256 = "4fcd00e85cde989652ab5c6b179610c9514180a00cd7b161ea33ebfec3b8a044";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
base
containers
network
];
librarySystemDepends = [
adns
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/peti/hsdns";
description = "Asynchronous DNS Resolver";
license = stdenv.lib.licenses.lgpl3;

}) {inherit (pkgs) adns;};
"hsebaysdk" = callPackage
({
  mkDerivation
, aeson
, base
, bytestring
, http-client
, http-types
, stdenv
, text
, time
, transformers
, unordered-containers
}:
mkDerivation {

pname = "hsebaysdk";
version = "0.4.0.0";
sha256 = "0738d0df113b15bb9148ecbe02f0a34562c557d8f64b65065122925e29df8901";
libraryHaskellDepends = [
aeson
base
bytestring
http-client
http-types
text
time
transformers
unordered-containers
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/creichert/hsebaysdk";
description = "Haskell eBay SDK";
license = stdenv.lib.licenses.bsd3;

}) {};
"hsemail" = callPackage
({
  mkDerivation
, base
, mtl
, old-time
, parsec
, stdenv
}:
mkDerivation {

pname = "hsemail";
version = "2";
sha256 = "f5f08a879444abd1f9a8a3e620d7fc83bc632ae3ba9b545bebdf58d5f4bfa8d9";
libraryHaskellDepends = [
base
mtl
old-time
parsec
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/peti/hsemail#readme";
description = "Parsec parsers for the RFC2822 Internet Message format";
license = stdenv.lib.licenses.bsd3;

}) {};
"hset" = callPackage
({
  mkDerivation
, base
, deepseq
, stdenv
, tagged
, type-fun
}:
mkDerivation {

pname = "hset";
version = "2.2.0";
sha256 = "b8747a0826aeaca2ca814e7a334f9de5a02f36ac83faea5e1c32c8f6040bf130";
libraryHaskellDepends = [
base
deepseq
tagged
type-fun
];
doHaddock = false;
doCheck = false;
homepage = "https://bitbucket.org/s9gf4ult/hset";
description = "Primitive list with elements of unique types";
license = stdenv.lib.licenses.bsd3;

}) {};
"hsexif" = callPackage
({
  mkDerivation
, base
, binary
, bytestring
, containers
, iconv
, stdenv
, text
, time
}:
mkDerivation {

pname = "hsexif";
version = "0.6.1.5";
sha256 = "2f12ea1060adb46c9afb74d32b82989b3883968403e21ff125f5cf9da869b06e";
libraryHaskellDepends = [
base
binary
bytestring
containers
iconv
text
time
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/emmanueltouzery/hsexif";
description = "EXIF handling library in pure Haskell";
license = stdenv.lib.licenses.bsd3;

}) {};
"hsignal" = callPackage
({
  mkDerivation
, array
, base
, binary
, blas
, bytestring
, gsl
, hmatrix
, hmatrix-gsl
, hmatrix-gsl-stats
, hstatistics
, liblapack
, mtl
, stdenv
, storable-complex
, vector
}:
mkDerivation {

pname = "hsignal";
version = "0.2.7.5";
sha256 = "0f61f820556c431c3811643cc40e49a6d6c68075da1be0b39298a41c1c7119ac";
libraryHaskellDepends = [
array
base
binary
bytestring
hmatrix
hmatrix-gsl
hmatrix-gsl-stats
hstatistics
mtl
storable-complex
vector
];
librarySystemDepends = [
blas
liblapack
];
libraryPkgconfigDepends = [
gsl
];
doHaddock = false;
doCheck = false;
homepage = "http://code.haskell.org/hsignal";
description = "Signal processing and EEG data analysis";
license = stdenv.lib.licenses.bsd3;

}) {inherit (pkgs) blas; inherit (pkgs) gsl; inherit (pkgs) liblapack;};
"hsinstall" = callPackage
({
  mkDerivation
, base
, directory
, filepath
, stdenv
}:
mkDerivation {

pname = "hsinstall";
version = "1.6";
sha256 = "061090c68bdcdad5efef879c4fc0e4c67c26d34221c333fe4c9880216635c811";
isLibrary = true;
isExecutable = true;
enableSeparateDataOutput = true;
libraryHaskellDepends = [
base
directory
filepath
];
executableHaskellDepends = [
base
directory
filepath
];
doHaddock = false;
doCheck = false;
description = "Install Haskell software";
license = stdenv.lib.licenses.isc;

}) {};
"hslogger" = callPackage
({
  mkDerivation
, base
, containers
, directory
, mtl
, network
, old-locale
, process
, stdenv
, time
, unix
}:
mkDerivation {

pname = "hslogger";
version = "1.2.10";
sha256 = "d7ca6e94a4aacb47a8dc30e3960ab8deff482d2ec9dca9a87b225e03e97e452b";
libraryHaskellDepends = [
base
containers
directory
mtl
network
old-locale
process
time
unix
];
doHaddock = false;
doCheck = false;
homepage = "http://software.complete.org/hslogger";
description = "Versatile logging framework";
license = stdenv.lib.licenses.bsd3;

}) {};
"hslua" = callPackage
({
  mkDerivation
, base
, bytestring
, containers
, exceptions
, fail
, lua5_3
, mtl
, stdenv
, text
}:
mkDerivation {

pname = "hslua";
version = "0.9.5.2";
sha256 = "0e4d26f8a76cbfb219851f33d31417c4a3c8f193123367a0749f047103d8bbe5";
configureFlags = [
"-fsystem-lua"
];
libraryHaskellDepends = [
base
bytestring
containers
exceptions
fail
mtl
text
];
librarySystemDepends = [
lua5_3
];
doHaddock = false;
doCheck = false;
description = "A Lua language interpreter embedding in Haskell";
license = stdenv.lib.licenses.mit;

}) {inherit (pkgs) lua5_3;};
"hslua-aeson" = callPackage
({
  mkDerivation
, aeson
, base
, hashable
, hslua
, scientific
, stdenv
, text
, unordered-containers
, vector
}:
mkDerivation {

pname = "hslua-aeson";
version = "0.3.0.1";
sha256 = "5c90d514239f8764ebeb6697dc35fe0c6133244c3bdf684c236d9ea7161a9440";
revision = "1";
editedCabalFile = "02p97fsn7g6n0l5i9k0mrffqhw2a3y74vi0zaynsl224r4vwqsbp";
libraryHaskellDepends = [
aeson
base
hashable
hslua
scientific
text
unordered-containers
vector
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/tarleb/hslua-aeson#readme";
description = "Allow aeson data types to be used with lua";
license = stdenv.lib.licenses.mit;

}) {};
"hslua-module-text" = callPackage
({
  mkDerivation
, base
, hslua
, stdenv
, text
}:
mkDerivation {

pname = "hslua-module-text";
version = "0.1.2.1";
sha256 = "aeb384f9743b76360f3779e44065fe297fb60f27519933f203b75bd8c2ba8e2d";
revision = "1";
editedCabalFile = "0vajlsd7y6pwa08635q0cx8z5c1c55bk7fvavw7g2vmyvxqjzx6n";
libraryHaskellDepends = [
base
hslua
text
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/hslua/hslua-module-test";
description = "Lua module for text";
license = stdenv.lib.licenses.mit;

}) {};
"hsndfile" = callPackage
({
  mkDerivation
, base
, c2hs
, libsndfile
, stdenv
}:
mkDerivation {

pname = "hsndfile";
version = "0.8.0";
sha256 = "e97e7ef4c26b0dba9400d9a77d3d5001735f64094b93f9733443f58f7f568efb";
libraryHaskellDepends = [
base
];
librarySystemDepends = [
libsndfile
];
libraryToolDepends = [
c2hs
];
doHaddock = false;
doCheck = false;
homepage = "http://haskell.org/haskellwiki/Hsndfile";
description = "Haskell bindings for libsndfile";
license = stdenv.lib.licenses.lgpl21;

}) {inherit (pkgs) libsndfile;};
"hsndfile-vector" = callPackage
({
  mkDerivation
, base
, hsndfile
, stdenv
, vector
}:
mkDerivation {

pname = "hsndfile-vector";
version = "0.5.2";
sha256 = "2ffe11eb9a3e63aae24e8e06d2e04e8ca4a617ccf1238843cc71517a905b2895";
libraryHaskellDepends = [
base
hsndfile
vector
];
doHaddock = false;
doCheck = false;
homepage = "http://haskell.org/haskellwiki/Hsndfile";
description = "Haskell bindings for libsndfile (Data.Vector interface)";
license = stdenv.lib.licenses.lgpl2;

}) {};
"hsp" = callPackage
({
  mkDerivation
, base
, mtl
, stdenv
, text
}:
mkDerivation {

pname = "hsp";
version = "0.10.0";
sha256 = "4ed3905a9db91001bde09f060290833af462e87e35476ab0def1579a1ff7ceab";
libraryHaskellDepends = [
base
mtl
text
];
doHaddock = false;
doCheck = false;
homepage = "http://hub.darcs.net/nibro/hsp";
description = "Haskell Server Pages is a library for writing dynamic server-side web pages";
license = stdenv.lib.licenses.bsd3;

}) {};
"hspec" = callPackage
({
  mkDerivation
, base
, call-stack
, hspec-core
, hspec-discover
, hspec-expectations
, HUnit
, QuickCheck
, stdenv
, transformers
}:
mkDerivation {

pname = "hspec";
version = "2.4.8";
sha256 = "94d4e0d688db1c62791c33b35cffc7b17f5a2d43387e1bb20d2b18f3dd6ceda2";
libraryHaskellDepends = [
base
call-stack
hspec-core
hspec-discover
hspec-expectations
HUnit
QuickCheck
transformers
];
doHaddock = false;
doCheck = false;
homepage = "http://hspec.github.io/";
description = "A Testing Framework for Haskell";
license = stdenv.lib.licenses.mit;

}) {};
"hspec-attoparsec" = callPackage
({
  mkDerivation
, attoparsec
, base
, bytestring
, hspec-expectations
, stdenv
, text
}:
mkDerivation {

pname = "hspec-attoparsec";
version = "0.1.0.2";
sha256 = "ea7a8b3f2989abde8c8537cec1a2ae312e88df80086b9b01ed12e5324137fb64";
libraryHaskellDepends = [
attoparsec
base
bytestring
hspec-expectations
text
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/alpmestan/hspec-attoparsec";
description = "Utility functions for testing your attoparsec parsers with hspec";
license = stdenv.lib.licenses.bsd3;

}) {};
"hspec-checkers" = callPackage
({
  mkDerivation
, base
, checkers
, hspec
, stdenv
}:
mkDerivation {

pname = "hspec-checkers";
version = "0.1.0.2";
sha256 = "e7db79dc527cf5b806723bbe3d511a074297976a0c7042968b9abc57f8337e99";
libraryHaskellDepends = [
base
checkers
hspec
];
doHaddock = false;
doCheck = false;
description = "Allows to use checkers properties from hspec";
license = stdenv.lib.licenses.bsd3;

}) {};
"hspec-contrib" = callPackage
({
  mkDerivation
, base
, hspec-core
, HUnit
, stdenv
}:
mkDerivation {

pname = "hspec-contrib";
version = "0.4.0";
sha256 = "6f9e2201ee176c723f91ee932b7fc8b677e0d54376f897f52c133c8ca9860c16";
revision = "2";
editedCabalFile = "029h7dl49vlrhn62v8kgk8zdavjjc80ga1m8fwhl0pnmvnfkn7sq";
libraryHaskellDepends = [
base
hspec-core
HUnit
];
doHaddock = false;
doCheck = false;
homepage = "http://hspec.github.io/";
description = "Contributed functionality for Hspec";
license = stdenv.lib.licenses.mit;

}) {};
"hspec-core" = callPackage
({
  mkDerivation
, ansi-terminal
, array
, base
, call-stack
, deepseq
, directory
, filepath
, hspec-expectations
, HUnit
, QuickCheck
, quickcheck-io
, random
, setenv
, stdenv
, stm
, tf-random
, time
, transformers
}:
mkDerivation {

pname = "hspec-core";
version = "2.4.8";
sha256 = "24ca82ca29cf9379c24133f510decc5dd1dbe447c3a9bc82dbcc365c8f35f90b";
libraryHaskellDepends = [
ansi-terminal
array
base
call-stack
deepseq
directory
filepath
hspec-expectations
HUnit
QuickCheck
quickcheck-io
random
setenv
stm
tf-random
time
transformers
];
doHaddock = false;
doCheck = false;
testTarget = "--test-option=--skip --test-option='Test.Hspec.Core.Runner.hspecResult runs specs in parallel'";
homepage = "http://hspec.github.io/";
description = "A Testing Framework for Haskell";
license = stdenv.lib.licenses.mit;

}) {};
"hspec-discover" = callPackage
({
  mkDerivation
, base
, directory
, filepath
, stdenv
}:
mkDerivation {

pname = "hspec-discover";
version = "2.4.8";
sha256 = "6ad28a1f1ae52f71fa9e5c1188abfd58d5b41a75802b86723bf1ba27af6b9c52";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
base
directory
filepath
];
executableHaskellDepends = [
base
directory
filepath
];
doHaddock = false;
doCheck = false;
homepage = "http://hspec.github.io/";
description = "Automatically discover and run Hspec tests";
license = stdenv.lib.licenses.mit;

}) {};
"hspec-expectations" = callPackage
({
  mkDerivation
, base
, call-stack
, HUnit
, stdenv
}:
mkDerivation {

pname = "hspec-expectations";
version = "0.8.2";
sha256 = "819607ea1faf35ce5be34be61c6f50f3389ea43892d56fb28c57a9f5d54fb4ef";
libraryHaskellDepends = [
base
call-stack
HUnit
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/hspec/hspec-expectations#readme";
description = "Catchy combinators for HUnit";
license = stdenv.lib.licenses.mit;

}) {};
"hspec-expectations-lifted" = callPackage
({
  mkDerivation
, base
, hspec-expectations
, stdenv
, transformers
}:
mkDerivation {

pname = "hspec-expectations-lifted";
version = "0.10.0";
sha256 = "22cdf1509b396fea2f53a0bb88dec3552f540d58cc60962a82970264c1e73828";
libraryHaskellDepends = [
base
hspec-expectations
transformers
];
doHaddock = false;
doCheck = false;
description = "A version of hspec-expectations generalized to MonadIO";
license = stdenv.lib.licenses.mit;

}) {};
"hspec-expectations-pretty-diff" = callPackage
({
  mkDerivation
, ansi-terminal
, base
, Diff
, hscolour
, HUnit
, nicify-lib
, stdenv
, text
}:
mkDerivation {

pname = "hspec-expectations-pretty-diff";
version = "0.7.2.4";
sha256 = "1bbfd524330be3cb0b27945556d01f48e3005e042ee475cdf6e441ba21b51b0a";
libraryHaskellDepends = [
ansi-terminal
base
Diff
hscolour
HUnit
nicify-lib
text
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/myfreeweb/hspec-expectations-pretty-diff#readme";
description = "Catchy combinators for HUnit";
license = stdenv.lib.licenses.mit;

}) {};
"hspec-golden-aeson" = callPackage
({
  mkDerivation
, aeson
, aeson-pretty
, base
, bytestring
, directory
, filepath
, hspec
, QuickCheck
, quickcheck-arbitrary-adt
, random
, stdenv
, transformers
}:
mkDerivation {

pname = "hspec-golden-aeson";
version = "0.5.1.0";
sha256 = "981a4de2b6bef9c688527f390ab22d3b2485435e86976f6420882ac008e17c34";
libraryHaskellDepends = [
aeson
aeson-pretty
base
bytestring
directory
filepath
hspec
QuickCheck
quickcheck-arbitrary-adt
random
transformers
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/plow-technologies/hspec-golden-aeson#readme";
description = "Use tests to monitor changes in Aeson serialization";
license = stdenv.lib.licenses.bsd3;

}) {};
"hspec-megaparsec" = callPackage
({
  mkDerivation
, base
, containers
, hspec-expectations
, megaparsec
, stdenv
}:
mkDerivation {

pname = "hspec-megaparsec";
version = "1.0.0";
sha256 = "14961ae19fde7104f5099624195d0f21b4759e5e635e79d9e63f9f2affca4eb5";
libraryHaskellDepends = [
base
containers
hspec-expectations
megaparsec
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/mrkkrp/hspec-megaparsec";
description = "Utility functions for testing Megaparsec parsers with Hspec";
license = stdenv.lib.licenses.bsd3;

}) {};
"hspec-meta" = callPackage
({
  mkDerivation
, ansi-terminal
, array
, async
, base
, call-stack
, deepseq
, directory
, filepath
, hspec-expectations
, HUnit
, QuickCheck
, quickcheck-io
, random
, setenv
, stdenv
, time
, transformers
}:
mkDerivation {

pname = "hspec-meta";
version = "2.4.6";
sha256 = "2b31671bfbfe5df0604516278bb1051db42b1e55dfe474ecd446a6630398bb62";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
ansi-terminal
array
async
base
call-stack
deepseq
directory
filepath
hspec-expectations
HUnit
QuickCheck
quickcheck-io
random
setenv
time
transformers
];
executableHaskellDepends = [
ansi-terminal
array
async
base
call-stack
deepseq
directory
filepath
hspec-expectations
HUnit
QuickCheck
quickcheck-io
random
setenv
time
transformers
];
doHaddock = false;
doCheck = false;
homepage = "http://hspec.github.io/";
description = "A version of Hspec which is used to test Hspec itself";
license = stdenv.lib.licenses.mit;

}) {};
"hspec-pg-transact" = callPackage
({
  mkDerivation
, base
, bytestring
, hspec
, pg-transact
, postgresql-simple
, resource-pool
, stdenv
, text
, tmp-postgres
}:
mkDerivation {

pname = "hspec-pg-transact";
version = "0.1.0.2";
sha256 = "a5ec2a978a730500f03c15d16eff7e207a4135ebc63afe4cbca7392ad5f01c0c";
libraryHaskellDepends = [
base
bytestring
hspec
pg-transact
postgresql-simple
resource-pool
text
tmp-postgres
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/jfischoff/pg-transact-hspec#readme";
description = "Helpers for creating database tests with hspec and pg-transact";
license = stdenv.lib.licenses.bsd3;

}) {};
"hspec-smallcheck" = callPackage
({
  mkDerivation
, base
, call-stack
, hspec-core
, HUnit
, smallcheck
, stdenv
}:
mkDerivation {

pname = "hspec-smallcheck";
version = "0.5.0";
sha256 = "353c74dce3c42f17d012bea96b62e88ca21b0b24ac14d0daf1a5a08a4b02ce51";
libraryHaskellDepends = [
base
call-stack
hspec-core
HUnit
smallcheck
];
doHaddock = false;
doCheck = false;
homepage = "http://hspec.github.io/";
description = "SmallCheck support for the Hspec testing framework";
license = stdenv.lib.licenses.mit;

}) {};
"hspec-wai" = callPackage
({
  mkDerivation
, base
, base-compat
, bytestring
, case-insensitive
, hspec-core
, hspec-expectations
, http-types
, QuickCheck
, stdenv
, text
, transformers
, wai
, wai-extra
}:
mkDerivation {

pname = "hspec-wai";
version = "0.9.0";
sha256 = "c8fe9ed0a1b77d6ad09b3d9c34e4dc65a2e5f1f0bbc6f7b8e2106d3d7556dfba";
libraryHaskellDepends = [
base
base-compat
bytestring
case-insensitive
hspec-core
hspec-expectations
http-types
QuickCheck
text
transformers
wai
wai-extra
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/hspec/hspec-wai#readme";
description = "Experimental Hspec support for testing WAI applications";
license = stdenv.lib.licenses.mit;

}) {};
"hspec-wai-json" = callPackage
({
  mkDerivation
, aeson
, aeson-qq
, base
, bytestring
, case-insensitive
, hspec-wai
, stdenv
, template-haskell
}:
mkDerivation {

pname = "hspec-wai-json";
version = "0.9.0";
sha256 = "a1c5401fa7fc7ffc46950274702a0ef30045568c2d2f5bc528cd6bf26ae28085";
libraryHaskellDepends = [
aeson
aeson-qq
base
bytestring
case-insensitive
hspec-wai
template-haskell
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/hspec/hspec-wai#readme";
description = "Testing JSON APIs with hspec-wai";
license = stdenv.lib.licenses.mit;

}) {};
"hspec-webdriver" = callPackage
({
  mkDerivation
, aeson
, base
, data-default
, hashable
, hspec
, hspec-core
, HUnit
, lifted-base
, stdenv
, stm
, text
, transformers
, unordered-containers
, webdriver
}:
mkDerivation {

pname = "hspec-webdriver";
version = "1.2.0";
sha256 = "05d0f818de7f21e3dcb10860f60fe53b393fad75892ec1c520815dd53a0385c8";
libraryHaskellDepends = [
aeson
base
data-default
hashable
hspec
hspec-core
HUnit
lifted-base
stm
text
transformers
unordered-containers
webdriver
];
doHaddock = false;
doCheck = false;
homepage = "https://bitbucket.org/wuzzeb/webdriver-utils";
description = "Write end2end web application tests using webdriver and hspec";
license = stdenv.lib.licenses.mit;

}) {};
"hsshellscript" = callPackage
({
  mkDerivation
, base
, c2hs
, directory
, parsec
, random
, stdenv
, unix
}:
mkDerivation {

pname = "hsshellscript";
version = "3.4.5";
sha256 = "7dbfd595832e4ecd7d12d8b36ce8a82192d79a764631c98071440a7daa7ec634";
libraryHaskellDepends = [
base
directory
parsec
random
unix
];
libraryToolDepends = [
c2hs
];
doHaddock = false;
doCheck = false;
homepage = "http://www.volker-wysk.de/hsshellscript/";
description = "Haskell for Unix shell scripting tasks";
license = "LGPL";

}) {};
"hstatistics" = callPackage
({
  mkDerivation
, array
, base
, hmatrix
, hmatrix-gsl-stats
, random
, stdenv
, vector
}:
mkDerivation {

pname = "hstatistics";
version = "0.3";
sha256 = "7af3f698d1bded8690b1ec05017ae05310fad1f2d25ec138fb72994b0812eeec";
libraryHaskellDepends = [
array
base
hmatrix
hmatrix-gsl-stats
random
vector
];
doHaddock = false;
doCheck = false;
homepage = "http://code.haskell.org/hstatistics";
description = "Statistics";
license = stdenv.lib.licenses.bsd3;

}) {};
"hstatsd" = callPackage
({
  mkDerivation
, base
, bytestring
, mtl
, network
, stdenv
, text
}:
mkDerivation {

pname = "hstatsd";
version = "0.1";
sha256 = "446779594257c0fa02d5271c997ee0c22f74f7636d89e34394ad87e5bd285824";
libraryHaskellDepends = [
base
bytestring
mtl
network
text
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/mokus0/hstatsd";
description = "Quick and dirty statsd interface";
license = stdenv.lib.licenses.publicDomain;

}) {};
"hsx-jmacro" = callPackage
({
  mkDerivation
, base
, hsp
, jmacro
, mtl
, stdenv
, text
, wl-pprint-text
}:
mkDerivation {

pname = "hsx-jmacro";
version = "7.3.8";
sha256 = "97c7efa3f8acc5159d697e080fb9ed7abddfca64e4f03d67cb66583fd7114495";
libraryHaskellDepends = [
base
hsp
jmacro
mtl
text
wl-pprint-text
];
doHaddock = false;
doCheck = false;
homepage = "http://www.happstack.com/";
description = "hsp+jmacro support";
license = stdenv.lib.licenses.bsd3;

}) {};
"hsyslog" = callPackage
({
  mkDerivation
, base
, Cabal
, cabal-doctest
, stdenv
}:
mkDerivation {

pname = "hsyslog";
version = "5.0.1";
sha256 = "86de0d8820a6cb7fe166e046ae00c1bbe37d27885cd3aa701deaca8fdf646016";
isLibrary = true;
isExecutable = true;
setupHaskellDepends = [
base
Cabal
cabal-doctest
];
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/peti/hsyslog";
description = "FFI interface to syslog(3) from POSIX.1-2001";
license = stdenv.lib.licenses.bsd3;

}) {};
"hsyslog-udp" = callPackage
({
  mkDerivation
, base
, bytestring
, hsyslog
, network
, stdenv
, text
, time
, unix
}:
mkDerivation {

pname = "hsyslog-udp";
version = "0.2.2";
sha256 = "a4c1240ee0ef72a65e3c67332809f8077ef3c7afb7e02170ba562b2e876528bb";
libraryHaskellDepends = [
base
bytestring
hsyslog
network
text
time
unix
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/ThoughtLeadr/hsyslog-udp";
description = "Log to syslog over a network via UDP";
license = stdenv.lib.licenses.bsd3;

}) {};
"htaglib" = callPackage
({
  mkDerivation
, base
, bytestring
, stdenv
, taglib
, text
, transformers
}:
mkDerivation {

pname = "htaglib";
version = "1.1.1";
sha256 = "238f11b9018946760a1a22cb7bfab5abe332e4798b20dfeaecf10f3202ff9928";
revision = "1";
editedCabalFile = "0znih19z9ly4m1nadwkalq28xz0vy6pc0yyamyz2fz5s5nv69lr0";
enableSeparateDataOutput = true;
libraryHaskellDepends = [
base
bytestring
text
transformers
];
librarySystemDepends = [
taglib
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/mrkkrp/htaglib";
description = "Bindings to TagLib, audio meta-data library";
license = stdenv.lib.licenses.bsd3;

}) {inherit (pkgs) taglib;};
"html" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "html";
version = "1.0.1.2";
sha256 = "0c35495ea33d65e69c69bc7441ec8e1af69fbb43433c2aa3406c0a13a3ab3061";
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
description = "HTML combinator library";
license = stdenv.lib.licenses.bsd3;

}) {};
"html-conduit" = callPackage
({
  mkDerivation
, base
, bytestring
, conduit
, containers
, resourcet
, stdenv
, tagstream-conduit
, text
, transformers
, xml-conduit
, xml-types
}:
mkDerivation {

pname = "html-conduit";
version = "1.3.0";
sha256 = "78bf09e175079bdd0f0dd363b3a4b2d32d095cc09413ca9d8069bc527809ee96";
libraryHaskellDepends = [
base
bytestring
conduit
containers
resourcet
tagstream-conduit
text
transformers
xml-conduit
xml-types
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/snoyberg/xml";
description = "Parse HTML documents using xml-conduit datatypes";
license = stdenv.lib.licenses.mit;

}) {};
"html-email-validate" = callPackage
({
  mkDerivation
, attoparsec
, base
, stdenv
, text
}:
mkDerivation {

pname = "html-email-validate";
version = "0.2.0.0";
sha256 = "3d2a3ec75b638cec71df57512473052d485dc118aec4662d5a8dae5e95aa6daf";
libraryHaskellDepends = [
attoparsec
base
text
];
doHaddock = false;
doCheck = false;
description = "Validating an email address against HTML standard";
license = stdenv.lib.licenses.bsd3;

}) {};
"html-entity-map" = callPackage
({
  mkDerivation
, base
, stdenv
, text
, unordered-containers
}:
mkDerivation {

pname = "html-entity-map";
version = "0.1.0.0";
sha256 = "983600c33e8515e6ca31742d25490fb5a7be02503331963621b0ba5cd70d344c";
revision = "2";
editedCabalFile = "1ycg39ys6zzfi6j88l03gdyyzwjpfzzlzy7dbs6i8p1l70ywizfr";
libraryHaskellDepends = [
base
text
unordered-containers
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/mrkkrp/html-entity-map";
description = "Map from HTML5 entity names to the corresponding Unicode text";
license = stdenv.lib.licenses.bsd3;

}) {};
"htoml" = callPackage
({
  mkDerivation
, aeson
, base
, containers
, old-locale
, parsec
, stdenv
, text
, time
, unordered-containers
, vector
}:
mkDerivation {

pname = "htoml";
version = "1.0.0.3";
sha256 = "08f8d88a326f80fb55c0abb9431941c3a2a30f2d58f49c94349961ceeb4c856f";
libraryHaskellDepends = [
aeson
base
containers
old-locale
parsec
text
time
unordered-containers
vector
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/cies/htoml";
description = "Parser for TOML files";
license = stdenv.lib.licenses.bsd3;

}) {};
"http-api-data" = callPackage
({
  mkDerivation
, attoparsec
, attoparsec-iso8601
, base
, bytestring
, Cabal
, cabal-doctest
, containers
, hashable
, http-types
, stdenv
, text
, time
, time-locale-compat
, unordered-containers
, uri-bytestring
, uuid-types
}:
mkDerivation {

pname = "http-api-data";
version = "0.3.7.2";
sha256 = "68516edab1c01d083a9f08baa9cb78adb60cb3f6e645f1096d02879a68bf6c82";
setupHaskellDepends = [
base
Cabal
cabal-doctest
];
libraryHaskellDepends = [
attoparsec
attoparsec-iso8601
base
bytestring
containers
hashable
http-types
text
time
time-locale-compat
unordered-containers
uri-bytestring
uuid-types
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/fizruk/http-api-data";
description = "Converting to/from HTTP API data like URL pieces, headers and query parameters";
license = stdenv.lib.licenses.bsd3;

}) {};
"http-client" = callPackage
({
  mkDerivation
, array
, base
, blaze-builder
, bytestring
, case-insensitive
, containers
, cookie
, deepseq
, exceptions
, filepath
, ghc-prim
, http-types
, memory
, mime-types
, network
, network-uri
, random
, stdenv
, stm
, streaming-commons
, text
, time
, transformers
}:
mkDerivation {

pname = "http-client";
version = "0.5.12.1";
sha256 = "4b5116324d217f0498d258d37135a52f3e69103d3a951b0999618b263c9bd63e";
revision = "1";
editedCabalFile = "03x2ms2nl3jjm2sfk8dwy02v920czhmdlkyfy3kqc1sg4nw2134y";
libraryHaskellDepends = [
array
base
blaze-builder
bytestring
case-insensitive
containers
cookie
deepseq
exceptions
filepath
ghc-prim
http-types
memory
mime-types
network
network-uri
random
stm
streaming-commons
text
time
transformers
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/snoyberg/http-client";
description = "An HTTP client engine";
license = stdenv.lib.licenses.mit;

}) {};
"http-client-openssl" = callPackage
({
  mkDerivation
, base
, HsOpenSSL
, http-client
, network
, stdenv
}:
mkDerivation {

pname = "http-client-openssl";
version = "0.2.1.1";
sha256 = "24ee231322d25ea17ad9503c9460f5b9c20e3ff11320e3abcac6b13e4e157a9c";
libraryHaskellDepends = [
base
HsOpenSSL
http-client
network
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/snoyberg/http-client";
description = "http-client backend using the OpenSSL library";
license = stdenv.lib.licenses.mit;

}) {};
"http-client-tls" = callPackage
({
  mkDerivation
, base
, bytestring
, case-insensitive
, connection
, containers
, cryptonite
, data-default-class
, exceptions
, http-client
, http-types
, memory
, network
, network-uri
, stdenv
, text
, tls
, transformers
}:
mkDerivation {

pname = "http-client-tls";
version = "0.3.5.3";
sha256 = "471abf8f29a909f40b21eab26a410c0e120ae12ce337512a61dae9f52ebb4362";
libraryHaskellDepends = [
base
bytestring
case-insensitive
connection
containers
cryptonite
data-default-class
exceptions
http-client
http-types
memory
network
network-uri
text
tls
transformers
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/snoyberg/http-client";
description = "http-client backend using the connection package and tls library";
license = stdenv.lib.licenses.mit;

}) {};
"http-common" = callPackage
({
  mkDerivation
, base
, base64-bytestring
, blaze-builder
, bytestring
, case-insensitive
, directory
, mtl
, network
, stdenv
, text
, transformers
, unordered-containers
}:
mkDerivation {

pname = "http-common";
version = "0.8.2.0";
sha256 = "2915e77b0d000a617d4c1304fdc46f45b70acc0942670066a95b2c8d4e504593";
libraryHaskellDepends = [
base
base64-bytestring
blaze-builder
bytestring
case-insensitive
directory
mtl
network
text
transformers
unordered-containers
];
doHaddock = false;
doCheck = false;
homepage = "http://research.operationaldynamics.com/projects/http-streams/";
description = "Common types for HTTP clients and servers";
license = stdenv.lib.licenses.bsd3;

}) {};
"http-conduit" = callPackage
({
  mkDerivation
, aeson
, base
, bytestring
, conduit
, conduit-extra
, http-client
, http-client-tls
, http-types
, mtl
, resourcet
, stdenv
, transformers
, unliftio-core
}:
mkDerivation {

pname = "http-conduit";
version = "2.3.1";
sha256 = "8251c3f0ab2a42b998bda4aaf2805e8c3325f0084462502661ce964f671f7859";
libraryHaskellDepends = [
aeson
base
bytestring
conduit
conduit-extra
http-client
http-client-tls
http-types
mtl
resourcet
transformers
unliftio-core
];
doHaddock = false;
doCheck = false;
homepage = "http://www.yesodweb.com/book/http-conduit";
description = "HTTP client package with conduit interface and HTTPS support";
license = stdenv.lib.licenses.bsd3;

}) {};
"http-date" = callPackage
({
  mkDerivation
, array
, attoparsec
, base
, bytestring
, stdenv
, time
}:
mkDerivation {

pname = "http-date";
version = "0.0.7";
sha256 = "cef9dc7e0fb512bd0c665b208b0687c1d939dc0a3d1f8fc513f7636c88d1ffc2";
libraryHaskellDepends = [
array
attoparsec
base
bytestring
time
];
doHaddock = false;
doCheck = false;
description = "HTTP Date parser/formatter";
license = stdenv.lib.licenses.bsd3;

}) {};
"http-link-header" = callPackage
({
  mkDerivation
, attoparsec
, base
, bytestring
, bytestring-conversion
, errors
, http-api-data
, network-uri
, stdenv
, text
}:
mkDerivation {

pname = "http-link-header";
version = "1.0.3";
sha256 = "59bd2db4e7d14b6f7ce86848af5e38b4bd2e9963e9ffe5068c7b1a710dbdd7fe";
libraryHaskellDepends = [
attoparsec
base
bytestring
bytestring-conversion
errors
http-api-data
network-uri
text
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/myfreeweb/http-link-header";
description = "A parser and writer for the HTTP Link header as specified in RFC 5988 \"Web Linking\"";
license = stdenv.lib.licenses.publicDomain;

}) {};
"http-media" = callPackage
({
  mkDerivation
, base
, bytestring
, case-insensitive
, containers
, stdenv
, utf8-string
}:
mkDerivation {

pname = "http-media";
version = "0.7.1.2";
sha256 = "fe93d57a5bfcaf3acf6a0b6f643c179afb69a91f81057f149c5e89e54dcb7b07";
revision = "1";
editedCabalFile = "0lxlig3mhw52ixqq65c9fzawviia2fl00d7hn1diny964h8klwgc";
libraryHaskellDepends = [
base
bytestring
case-insensitive
containers
utf8-string
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/zmthy/http-media";
description = "Processing HTTP Content-Type and Accept headers";
license = stdenv.lib.licenses.mit;

}) {};
"http-reverse-proxy" = callPackage
({
  mkDerivation
, async
, base
, blaze-builder
, bytestring
, case-insensitive
, conduit
, conduit-extra
, containers
, data-default-class
, http-client
, http-types
, lifted-base
, monad-control
, network
, resourcet
, stdenv
, streaming-commons
, text
, transformers
, wai
, wai-logger
, word8
}:
mkDerivation {

pname = "http-reverse-proxy";
version = "0.5.0.1";
sha256 = "5e50ad82e954c2fbb99fb43f7b961bb86dcfebc8a789d0fe3c6a9053ae7e84ba";
libraryHaskellDepends = [
async
base
blaze-builder
bytestring
case-insensitive
conduit
conduit-extra
containers
data-default-class
http-client
http-types
lifted-base
monad-control
network
resourcet
streaming-commons
text
transformers
wai
wai-logger
word8
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/fpco/http-reverse-proxy";
description = "Reverse proxy HTTP requests, either over raw sockets or with WAI";
license = stdenv.lib.licenses.bsd3;

}) {};
"http-streams" = callPackage
({
  mkDerivation
, aeson
, attoparsec
, base
, base64-bytestring
, blaze-builder
, bytestring
, Cabal
, case-insensitive
, directory
, HsOpenSSL
, http-common
, io-streams
, mtl
, network
, network-uri
, openssl-streams
, stdenv
, text
, transformers
, unordered-containers
}:
mkDerivation {

pname = "http-streams";
version = "0.8.6.1";
sha256 = "b8d71f2753ac7cda35b4f03ec64e4b3c7cc4ec5c2435b5e5237fe863cb687da3";
setupHaskellDepends = [
base
Cabal
];
libraryHaskellDepends = [
aeson
attoparsec
base
base64-bytestring
blaze-builder
bytestring
case-insensitive
directory
HsOpenSSL
http-common
io-streams
mtl
network
network-uri
openssl-streams
text
transformers
unordered-containers
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/afcowie/http-streams/";
description = "An HTTP client using io-streams";
license = stdenv.lib.licenses.bsd3;

}) {};
"http-types" = callPackage
({
  mkDerivation
, array
, base
, bytestring
, case-insensitive
, stdenv
, text
}:
mkDerivation {

pname = "http-types";
version = "0.12.1";
sha256 = "3fa7715428f375b6aa4998ef17822871d7bfe1b55ebd9329efbacd4dad9969f3";
libraryHaskellDepends = [
array
base
bytestring
case-insensitive
text
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/aristidb/http-types";
description = "Generic HTTP types for Haskell (for both client and server code)";
license = stdenv.lib.licenses.bsd3;

}) {};
"http2" = callPackage
({
  mkDerivation
, array
, base
, bytestring
, bytestring-builder
, case-insensitive
, containers
, psqueues
, stdenv
, stm
}:
mkDerivation {

pname = "http2";
version = "1.6.3";
sha256 = "61620eca0f57875a6a9bd24f9cc04c301b5c3c668bf98f85e9989aad5d069c43";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
array
base
bytestring
bytestring-builder
case-insensitive
containers
psqueues
stm
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/kazu-yamamoto/http2";
description = "HTTP/2 library including frames, priority queues and HPACK";
license = stdenv.lib.licenses.bsd3;

}) {};
"human-readable-duration" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "human-readable-duration";
version = "0.2.0.3";
sha256 = "93f3a91a2994588728ae757dcca5104e18a570b3591773aa7f03c524c97599da";
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/yogsototh/human-readable-duration#readme";
description = "Provide duration helper";
license = stdenv.lib.licenses.bsd3;

}) {};
"hunit-dejafu" = callPackage
({
  mkDerivation
, base
, dejafu
, exceptions
, HUnit
, stdenv
}:
mkDerivation {

pname = "hunit-dejafu";
version = "1.1.0.3";
sha256 = "74cde67dfd17af63238553c1c8c494adde7bbc69e353d49057b2817b0edbf7a3";
libraryHaskellDepends = [
base
dejafu
exceptions
HUnit
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/barrucadu/dejafu";
description = "Deja Fu support for the HUnit test framework";
license = stdenv.lib.licenses.mit;

}) {};
"hvect" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "hvect";
version = "0.4.0.0";
sha256 = "cb50ef1a7f189f8c217a7d0d55b5568b2fa9bbe415b14ce114a93d2e1d5e30b6";
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/agrafix/hvect";
description = "Simple strict heterogeneous lists";
license = stdenv.lib.licenses.mit;

}) {};
"hw-balancedparens" = callPackage
({
  mkDerivation
, base
, hw-bits
, hw-excess
, hw-prim
, hw-rankselect-base
, stdenv
, storable-tuple
, vector
}:
mkDerivation {

pname = "hw-balancedparens";
version = "0.2.0.1";
sha256 = "99d164e1f5b1fc50bfdcc887b1ef5f6cdfc42f702b847d06f31db5dd04b5e8cd";
libraryHaskellDepends = [
base
hw-bits
hw-excess
hw-prim
hw-rankselect-base
storable-tuple
vector
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/haskell-works/hw-balancedparens#readme";
description = "Balanced parentheses";
license = stdenv.lib.licenses.bsd3;

}) {};
"hw-bits" = callPackage
({
  mkDerivation
, base
, bytestring
, hw-int
, hw-prim
, hw-string-parse
, safe
, stdenv
, vector
}:
mkDerivation {

pname = "hw-bits";
version = "0.7.0.2";
sha256 = "38621e0166bac49c1f68f85122c3fbfcadc6a3c447dd7f48ff1020151ad10ae8";
revision = "1";
editedCabalFile = "1gvv5ryx1lrgb3hk362fkqz98rggdxfmjp7fy0id7mqvdz6lk2av";
libraryHaskellDepends = [
base
bytestring
hw-int
hw-prim
hw-string-parse
safe
vector
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/haskell-works/hw-bits#readme";
description = "Bit manipulation";
license = stdenv.lib.licenses.bsd3;

}) {};
"hw-conduit" = callPackage
({
  mkDerivation
, array
, base
, bytestring
, conduit
, conduit-combinators
, stdenv
, time
, word8
}:
mkDerivation {

pname = "hw-conduit";
version = "0.2.0.3";
sha256 = "6a20170fff38bb940121ecc922aa4cdb979b7869cfab6a0b18f00476eda3dca5";
revision = "1";
editedCabalFile = "0zr1r7px2qgpf5fgq18l6ziy2xaz773qbxc87cp84x0vpwas0yg7";
libraryHaskellDepends = [
array
base
bytestring
conduit
conduit-combinators
time
word8
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/haskell-works/hw-conduit#readme";
description = "Conduits for tokenizing streams";
license = stdenv.lib.licenses.mit;

}) {};
"hw-diagnostics" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "hw-diagnostics";
version = "0.0.0.5";
sha256 = "5ceaec01c446c5a507e889f514201e4739ea6f1cc22a4c68894bb023257bd931";
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/haskell-works/hw-diagnostics#readme";
description = "Diagnostics library";
license = stdenv.lib.licenses.bsd3;

}) {};
"hw-excess" = callPackage
({
  mkDerivation
, base
, hw-bits
, hw-prim
, hw-rankselect-base
, safe
, stdenv
, storable-record
, vector
}:
mkDerivation {

pname = "hw-excess";
version = "0.2.0.0";
sha256 = "f17a4b6098f5b0337d00d77025bbcbf2c0736576bcb36eeeec1aff3b00b561a9";
libraryHaskellDepends = [
base
hw-bits
hw-prim
hw-rankselect-base
safe
storable-record
vector
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/haskell-works/hw-excess#readme";
description = "Excess";
license = stdenv.lib.licenses.bsd3;

}) {};
"hw-fingertree" = callPackage
({
  mkDerivation
, base
, deepseq
, stdenv
}:
mkDerivation {

pname = "hw-fingertree";
version = "0.1.0.1";
sha256 = "c38d67decbed224e6b3e9c1648b54adfe55297209bb5395e10dc94104c5094da";
libraryHaskellDepends = [
base
deepseq
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/haskell-works/hw-fingertree#readme";
description = "Generic finger-tree structure, with example instances";
license = stdenv.lib.licenses.bsd3;

}) {};
"hw-fingertree-strict" = callPackage
({
  mkDerivation
, base
, deepseq
, stdenv
}:
mkDerivation {

pname = "hw-fingertree-strict";
version = "0.1.0.3";
sha256 = "95394973985057f4cead937fa29b5fecfd8baabb5679d692421ab9215ee8d20e";
revision = "1";
editedCabalFile = "027ds9pl198478hyimfqaff52r8qhwgmhzazck847z2i5igp30i2";
libraryHaskellDepends = [
base
deepseq
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/haskell-works/hw-fingertree-strict#readme";
description = "Generic strict finger-tree structure";
license = stdenv.lib.licenses.bsd3;

}) {};
"hw-hedgehog" = callPackage
({
  mkDerivation
, base
, hedgehog
, stdenv
, vector
}:
mkDerivation {

pname = "hw-hedgehog";
version = "0.1.0.1";
sha256 = "26177ea0748f5d85e70e1759ea6a88af15e5bfdbf0a174a80e7f28607addcf3a";
libraryHaskellDepends = [
base
hedgehog
vector
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/githubuser/hw-hedgehog#readme";
description = "Extra hedgehog functionality";
license = stdenv.lib.licenses.bsd3;

}) {};
"hw-hspec-hedgehog" = callPackage
({
  mkDerivation
, base
, call-stack
, hedgehog
, hspec
, HUnit
, stdenv
}:
mkDerivation {

pname = "hw-hspec-hedgehog";
version = "0.1.0.4";
sha256 = "58bd37f98e59d10cd27cf90fc04e6fdb459f3caff1f47b0e51e746aaa6ce99ee";
revision = "1";
editedCabalFile = "12bh7ms7kjmpk43fwmnbbaflsl41icjck3bn8pcjybp7f7j0mrk5";
libraryHaskellDepends = [
base
call-stack
hedgehog
hspec
HUnit
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/haskell-works/hw-hspec-hedgehog#readme";
description = "Interoperability between hspec and hedgehog";
license = stdenv.lib.licenses.bsd3;

}) {};
"hw-int" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "hw-int";
version = "0.0.0.3";
sha256 = "8336a5111638d3298266c9a1458233a09798bfa6d558219d4fe3bdd35d8d4a3f";
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/haskell-works/hw-int#readme";
description = "Integers";
license = stdenv.lib.licenses.bsd3;

}) {};
"hw-json" = callPackage
({
  mkDerivation
, ansi-wl-pprint
, array
, attoparsec
, base
, bytestring
, conduit
, containers
, criterion
, dlist
, hw-balancedparens
, hw-bits
, hw-conduit
, hw-diagnostics
, hw-mquery
, hw-parser
, hw-prim
, hw-rankselect
, hw-rankselect-base
, mmap
, mono-traversable
, resourcet
, stdenv
, text
, vector
, word8
}:
mkDerivation {

pname = "hw-json";
version = "0.6.0.0";
sha256 = "bb8e20e8a035279ee398c6d9162cda3f965d4f96e39c1d363be2456b1feb41d9";
revision = "1";
editedCabalFile = "18w22jnsjv8f4k2q3548vdzl80p4r80pn96rnp69f6l36ibmx771";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
ansi-wl-pprint
array
attoparsec
base
bytestring
conduit
containers
dlist
hw-balancedparens
hw-bits
hw-conduit
hw-mquery
hw-parser
hw-prim
hw-rankselect
hw-rankselect-base
mmap
mono-traversable
resourcet
text
vector
word8
];
executableHaskellDepends = [
ansi-wl-pprint
array
attoparsec
base
bytestring
conduit
containers
criterion
dlist
hw-balancedparens
hw-bits
hw-conduit
hw-diagnostics
hw-mquery
hw-parser
hw-prim
hw-rankselect
hw-rankselect-base
mmap
mono-traversable
resourcet
text
vector
word8
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/haskell-works/hw-json#readme";
description = "Memory efficient JSON parser";
license = stdenv.lib.licenses.bsd3;

}) {};
"hw-mquery" = callPackage
({
  mkDerivation
, ansi-wl-pprint
, base
, dlist
, stdenv
}:
mkDerivation {

pname = "hw-mquery";
version = "0.1.0.1";
sha256 = "724aa5b0490b57a89fb71b7042a3770f7978a4c975aa3d1b671576b0e83e113d";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
ansi-wl-pprint
base
dlist
];
executableHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/haskell-works/hw-mquery#readme";
description = "Conduits for tokenizing streams";
license = stdenv.lib.licenses.mit;

}) {};
"hw-parser" = callPackage
({
  mkDerivation
, attoparsec
, base
, bytestring
, hw-prim
, mono-traversable
, stdenv
, text
}:
mkDerivation {

pname = "hw-parser";
version = "0.0.0.3";
sha256 = "dd8417c76ef5da89df2842b42767d825815ec3594c8e80e28e96570d8046c6f2";
libraryHaskellDepends = [
attoparsec
base
bytestring
hw-prim
mono-traversable
text
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/haskell-works/hw-parser#readme";
description = "Simple parser support";
license = stdenv.lib.licenses.bsd3;

}) {};
"hw-prim" = callPackage
({
  mkDerivation
, base
, bytestring
, mmap
, stdenv
, vector
}:
mkDerivation {

pname = "hw-prim";
version = "0.5.0.5";
sha256 = "93c678b816b122aafe2669d7f3fb24f4d66d3332015b8607a277a3cb9a9381ae";
revision = "1";
editedCabalFile = "0i40x22z95zdzhnz0kz8nlaajdykviplgyyxh4v21z0i69xqlxgr";
libraryHaskellDepends = [
base
bytestring
mmap
vector
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/haskell-works/hw-prim#readme";
description = "Primitive functions and data types";
license = stdenv.lib.licenses.bsd3;

}) {};
"hw-rankselect" = callPackage
({
  mkDerivation
, base
, deepseq
, directory
, hw-balancedparens
, hw-bits
, hw-prim
, hw-rankselect-base
, mmap
, stdenv
, vector
}:
mkDerivation {

pname = "hw-rankselect";
version = "0.10.0.3";
sha256 = "aa1d079f56064c649bc820219b55ae16d723faed663283ab73760db4f2f514cb";
revision = "1";
editedCabalFile = "1rkni89h3sq02y03phb2bgx4yrx4gly9mzan6r4ziph0qayf09wf";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
base
deepseq
hw-balancedparens
hw-bits
hw-prim
hw-rankselect-base
vector
];
executableHaskellDepends = [
base
directory
hw-bits
hw-prim
hw-rankselect-base
mmap
vector
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/haskell-works/hw-rankselect#readme";
description = "Rank-select";
license = stdenv.lib.licenses.bsd3;

}) {};
"hw-rankselect-base" = callPackage
({
  mkDerivation
, base
, hw-bits
, hw-int
, hw-prim
, hw-string-parse
, safe
, stdenv
, vector
}:
mkDerivation {

pname = "hw-rankselect-base";
version = "0.2.0.2";
sha256 = "de4f88db97ae2f477c3ca1ec18947a086b10a6f4815f0de0a2686d190fbae27a";
libraryHaskellDepends = [
base
hw-bits
hw-int
hw-prim
hw-string-parse
safe
vector
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/haskell-works/hw-rankselect-base#readme";
description = "Rank-select base";
license = stdenv.lib.licenses.bsd3;

}) {};
"hw-string-parse" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "hw-string-parse";
version = "0.0.0.4";
sha256 = "64a1ebf8d311e255f293c40febfb346da23a55a454b67f2d5e33de1cb7e9f2b7";
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/haskell-works/hw-string-parse#readme";
description = "String parser";
license = stdenv.lib.licenses.bsd3;

}) {};
"hw-succinct" = callPackage
({
  mkDerivation
, attoparsec
, base
, bytestring
, conduit
, containers
, hw-balancedparens
, hw-bits
, hw-prim
, hw-rankselect
, hw-rankselect-base
, mmap
, mono-traversable
, stdenv
, text
, vector
, word8
}:
mkDerivation {

pname = "hw-succinct";
version = "0.1.0.1";
sha256 = "002c578c1ff7a33cbef089b2a943218777c14125629f6bf63dea9e7c8e3749db";
libraryHaskellDepends = [
attoparsec
base
bytestring
conduit
containers
hw-balancedparens
hw-bits
hw-prim
hw-rankselect
hw-rankselect-base
mmap
mono-traversable
text
vector
word8
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/haskell-works/hw-succinct#readme";
description = "Succint datastructures";
license = stdenv.lib.licenses.mit;

}) {};
"hw-xml" = callPackage
({
  mkDerivation
, ansi-wl-pprint
, array
, attoparsec
, base
, bytestring
, cereal
, conduit
, containers
, deepseq
, ghc-prim
, hw-balancedparens
, hw-bits
, hw-conduit
, hw-parser
, hw-prim
, hw-rankselect
, hw-rankselect-base
, lens
, mtl
, resourcet
, stdenv
, transformers
, vector
, word8
}:
mkDerivation {

pname = "hw-xml";
version = "0.1.0.3";
sha256 = "27a9a8212331c8c91d4a66baf8f0785c4ce90c087c02359bd16dfaeabc627e97";
isLibrary = true;
isExecutable = true;
enableSeparateDataOutput = true;
libraryHaskellDepends = [
ansi-wl-pprint
array
attoparsec
base
bytestring
cereal
conduit
containers
deepseq
ghc-prim
hw-balancedparens
hw-bits
hw-conduit
hw-parser
hw-prim
hw-rankselect
hw-rankselect-base
lens
mtl
resourcet
transformers
vector
word8
];
executableHaskellDepends = [
base
bytestring
hw-balancedparens
hw-bits
hw-prim
hw-rankselect
vector
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/haskell-works/hw-xml#readme";
description = "Conduits for tokenizing streams";
license = stdenv.lib.licenses.bsd3;

}) {};
"hweblib" = callPackage
({
  mkDerivation
, attoparsec
, base
, bytestring
, containers
, mtl
, stdenv
, text
, transformers
}:
mkDerivation {

pname = "hweblib";
version = "0.6.3";
sha256 = "1e8ee12baac496d56831935a60e78f54eb43d2b7268bf7d31acb6b9a63e9b50d";
libraryHaskellDepends = [
attoparsec
base
bytestring
containers
mtl
text
transformers
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/aycanirican/hweblib";
description = "Haskell Web Library";
license = stdenv.lib.licenses.bsd3;

}) {};
"hworker" = callPackage
({
  mkDerivation
, aeson
, attoparsec
, base
, bytestring
, hedis
, stdenv
, text
, time
, uuid
}:
mkDerivation {

pname = "hworker";
version = "0.1.0.1";
sha256 = "34cbcc4db8f190ab0dc02a072adcf1fc75b7beab7e545982872bf265a1223f1d";
revision = "1";
editedCabalFile = "0w2bpvfr68n2qipvr8gc5096dain3g2536m4n9kqx1fahf12mwy5";
libraryHaskellDepends = [
aeson
attoparsec
base
bytestring
hedis
text
time
uuid
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/dbp/hworker";
description = "A reliable at-least-once job queue built on top of redis";
license = stdenv.lib.licenses.isc;

}) {};
"hxt" = callPackage
({
  mkDerivation
, base
, binary
, bytestring
, containers
, deepseq
, directory
, filepath
, hxt-charproperties
, hxt-regex-xmlschema
, hxt-unicode
, mtl
, network-uri
, parsec
, stdenv
}:
mkDerivation {

pname = "hxt";
version = "9.3.1.16";
sha256 = "0d55e35cc718891d0987b7c8e6c43499efa727c68bc92e88e8b99461dff403e3";
libraryHaskellDepends = [
base
binary
bytestring
containers
deepseq
directory
filepath
hxt-charproperties
hxt-regex-xmlschema
hxt-unicode
mtl
network-uri
parsec
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/UweSchmidt/hxt";
description = "A collection of tools for processing XML with Haskell";
license = stdenv.lib.licenses.mit;

}) {};
"hxt-charproperties" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "hxt-charproperties";
version = "9.2.0.1";
sha256 = "e46614d6bf0390b2a6a1aeeb0771e6d366944da40fb21c12c2f8a94d1f47b4d6";
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/UweSchmidt/hxt";
description = "Character properties and classes for XML and Unicode";
license = stdenv.lib.licenses.mit;

}) {};
"hxt-css" = callPackage
({
  mkDerivation
, base
, hxt
, parsec
, split
, stdenv
}:
mkDerivation {

pname = "hxt-css";
version = "0.1.0.3";
sha256 = "0244fc145d5923df0522ad80949e9b221b01a028c755ebfc4740339881ef65b7";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
base
hxt
parsec
split
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/redneb/hxt-css";
description = "CSS selectors for HXT";
license = stdenv.lib.licenses.bsd3;

}) {};
"hxt-curl" = callPackage
({
  mkDerivation
, base
, bytestring
, curl
, hxt
, parsec
, stdenv
}:
mkDerivation {

pname = "hxt-curl";
version = "9.1.1.1";
sha256 = "cdc1cc8bf9b8699cabdee965c9737d497c199b5cf82eabc66a5fe3f2ffb3c5ea";
libraryHaskellDepends = [
base
bytestring
curl
hxt
parsec
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/UweSchmidt/hxt";
description = "LibCurl interface for HXT";
license = "unknown";

}) {};
"hxt-expat" = callPackage
({
  mkDerivation
, base
, bytestring
, hexpat
, hxt
, stdenv
}:
mkDerivation {

pname = "hxt-expat";
version = "9.1.1";
sha256 = "10d9c43c20c82e879fbc06944fcfed373f8b43bd3e0a44f9c712db30a27022d6";
libraryHaskellDepends = [
base
bytestring
hexpat
hxt
];
doHaddock = false;
doCheck = false;
homepage = "http://www.fh-wedel.de/~si/HXmlToolbox/index.html";
description = "Expat parser for HXT";
license = "unknown";

}) {};
"hxt-http" = callPackage
({
  mkDerivation
, base
, bytestring
, HTTP
, hxt
, network
, network-uri
, parsec
, stdenv
}:
mkDerivation {

pname = "hxt-http";
version = "9.1.5.2";
sha256 = "6fa19d03991d53c34f4525a4fdfaafde56dd48459093b4502832a1fdd9dfdd0b";
libraryHaskellDepends = [
base
bytestring
HTTP
hxt
network
network-uri
parsec
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/UweSchmidt/hxt";
description = "Interface to native Haskell HTTP package HTTP";
license = stdenv.lib.licenses.mit;

}) {};
"hxt-pickle-utils" = callPackage
({
  mkDerivation
, base
, hxt
, mtl
, stdenv
}:
mkDerivation {

pname = "hxt-pickle-utils";
version = "0.1.0.3";
sha256 = "9ddba19f27d9d8c155012da4dd9598fb318cab862da10f14ee4bc3eb5321a9c5";
revision = "3";
editedCabalFile = "0d5fg718y7xzw76ip33q0w1liqk70q9074qkd198mjnijxjcrkf3";
libraryHaskellDepends = [
base
hxt
mtl
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/silkapp/hxt-pickle-utils";
description = "Utility functions for using HXT picklers";
license = stdenv.lib.licenses.bsd3;

}) {};
"hxt-regex-xmlschema" = callPackage
({
  mkDerivation
, base
, bytestring
, hxt-charproperties
, parsec
, stdenv
, text
}:
mkDerivation {

pname = "hxt-regex-xmlschema";
version = "9.2.0.3";
sha256 = "f4743ba65498d6001cdfcf5cbc3317d4bc43941be5c7030b60beb83408c892b0";
libraryHaskellDepends = [
base
bytestring
hxt-charproperties
parsec
text
];
doHaddock = false;
doCheck = false;
homepage = "http://www.haskell.org/haskellwiki/Regular_expressions_for_XML_Schema";
description = "A regular expression library for W3C XML Schema regular expressions";
license = stdenv.lib.licenses.mit;

}) {};
"hxt-tagsoup" = callPackage
({
  mkDerivation
, base
, hxt
, hxt-charproperties
, hxt-unicode
, stdenv
, tagsoup
}:
mkDerivation {

pname = "hxt-tagsoup";
version = "9.1.4";
sha256 = "d77b290d63acf0ac8e5a07c5c69753f9984b97e0c9d2c0befadd7dd5b144b283";
libraryHaskellDepends = [
base
hxt
hxt-charproperties
hxt-unicode
tagsoup
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/UweSchmidt/hxt";
description = "TagSoup parser for HXT";
license = "unknown";

}) {};
"hxt-unicode" = callPackage
({
  mkDerivation
, base
, hxt-charproperties
, stdenv
}:
mkDerivation {

pname = "hxt-unicode";
version = "9.0.2.4";
sha256 = "7b5823f3bd94b57022d9d84ab3555303653c5121eaaef2ee1fd4918f3c434466";
libraryHaskellDepends = [
base
hxt-charproperties
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/UweSchmidt/hxt";
description = "Unicode en-/decoding functions for utf8, iso-latin-* and other encodings";
license = stdenv.lib.licenses.mit;

}) {};
"hybrid-vectors" = callPackage
({
  mkDerivation
, base
, deepseq
, primitive
, semigroups
, stdenv
, vector
}:
mkDerivation {

pname = "hybrid-vectors";
version = "0.2.2";
sha256 = "41c6c371df64b9083354e66101ad8c92f87458474fed2a149e4632db644f86d7";
libraryHaskellDepends = [
base
deepseq
primitive
semigroups
vector
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/ekmett/hybrid-vectors";
description = "Hybrid vectors e.g. Mixed Boxed/Unboxed vectors";
license = stdenv.lib.licenses.bsd3;

}) {};
"hyperloglog" = callPackage
({
  mkDerivation
, approximate
, base
, binary
, bits
, bytes
, Cabal
, cabal-doctest
, cereal
, cereal-vector
, comonad
, deepseq
, distributive
, hashable
, lens
, reflection
, safecopy
, semigroupoids
, semigroups
, siphash
, stdenv
, tagged
, vector
}:
mkDerivation {

pname = "hyperloglog";
version = "0.4.2";
sha256 = "f5b83cfcc2c9d1e40e04bbc9724428b2655c3b54b26beef714c98dabee5f1048";
setupHaskellDepends = [
base
Cabal
cabal-doctest
];
libraryHaskellDepends = [
approximate
base
binary
bits
bytes
cereal
cereal-vector
comonad
deepseq
distributive
hashable
lens
reflection
safecopy
semigroupoids
semigroups
siphash
tagged
vector
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/analytics/hyperloglog";
description = "An approximate streaming (constant space) unique object counter";
license = stdenv.lib.licenses.bsd3;

}) {};
"hyphenation" = callPackage
({
  mkDerivation
, base
, bytestring
, Cabal
, cabal-doctest
, containers
, stdenv
, unordered-containers
, zlib
}:
mkDerivation {

pname = "hyphenation";
version = "0.7.1";
sha256 = "a25c5073f42896ccf81ff5936f3a42f290730f61da7f225b126ad22ff601b1c0";
revision = "3";
editedCabalFile = "0pphkzschnqs2xj6kdg52gg2fjsg51lv0djxin8pqqjrdnyq4igy";
enableSeparateDataOutput = true;
setupHaskellDepends = [
base
Cabal
cabal-doctest
];
libraryHaskellDepends = [
base
bytestring
containers
unordered-containers
zlib
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/ekmett/hyphenation";
description = "Configurable Knuth-Liang hyphenation";
license = stdenv.lib.licenses.bsd2;

}) {};
"iconv" = callPackage
({
  mkDerivation
, base
, bytestring
, stdenv
}:
mkDerivation {

pname = "iconv";
version = "0.4.1.3";
sha256 = "36425168e3314bc83ba5ee95152872d52e94ee0f9503f3591f84d458e005b554";
libraryHaskellDepends = [
base
bytestring
];
doHaddock = false;
doCheck = false;
description = "String encoding conversion";
license = stdenv.lib.licenses.bsd3;

}) {};
"identicon" = callPackage
({
  mkDerivation
, base
, bytestring
, JuicyPixels
, stdenv
}:
mkDerivation {

pname = "identicon";
version = "0.2.2";
sha256 = "3679b4fcc0a5bcc93b6ed2009f43e3ec87bf9549aee3eef182f7403d0c10f263";
revision = "3";
editedCabalFile = "0vya6zm3nnbdv3wmj3dwqwwjgsagql8q17078knhjddv2lm8m49q";
enableSeparateDataOutput = true;
libraryHaskellDepends = [
base
bytestring
JuicyPixels
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/mrkkrp/identicon";
description = "Flexible generation of identicons";
license = stdenv.lib.licenses.bsd3;

}) {};
"ieee754" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "ieee754";
version = "0.8.0";
sha256 = "0e2dff9c37f59acf5c64f978ec320005e9830f276f9f314e4bfed3f482289ad1";
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/patperry/hs-ieee754";
description = "Utilities for dealing with IEEE floating point numbers";
license = stdenv.lib.licenses.bsd3;

}) {};
"if" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "if";
version = "0.1.0.0";
sha256 = "28f673e867dbe0f51324d97fcb7884673a34912593746520a470116b167a141d";
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/winterland1989/if";
description = "(?) and (?>) conditional operator";
license = stdenv.lib.licenses.bsd3;

}) {};
"iff" = callPackage
({
  mkDerivation
, base
, binary
, bytestring
, stdenv
}:
mkDerivation {

pname = "iff";
version = "0.0.6";
sha256 = "6b8845808481307e2d374fd8d17e82a5de1284e612cf8ade27db8785e9e12837";
libraryHaskellDepends = [
base
binary
bytestring
];
doHaddock = false;
doCheck = false;
homepage = "http://code.haskell.org/~thielema/iff/";
description = "Constructing and dissecting IFF files";
license = "GPL";

}) {};
"ignore" = callPackage
({
  mkDerivation
, base
, directory
, Glob
, mtl
, path
, pcre-heavy
, stdenv
, text
}:
mkDerivation {

pname = "ignore";
version = "0.1.1.0";
sha256 = "aaf481fdab8bdc5a506e4726eadf56697726f82086a3cd0439526b9442c73575";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
base
directory
Glob
mtl
path
pcre-heavy
text
];
executableHaskellDepends = [
base
directory
path
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/agrafix/ignore";
description = "Handle ignore files of different VCSes";
license = stdenv.lib.licenses.bsd3;

}) {};
"ihaskell" = callPackage
({
  mkDerivation
, aeson
, base
, base64-bytestring
, bytestring
, cereal
, cmdargs
, containers
, directory
, filepath
, ghc
, ghc-boot
, ghc-parser
, ghc-paths
, haskeline
, haskell-src-exts
, hlint
, http-client
, http-client-tls
, ipython-kernel
, mtl
, parsec
, process
, random
, shelly
, split
, stdenv
, stm
, strict
, system-argv0
, text
, transformers
, unix
, unordered-containers
, utf8-string
, uuid
, vector
}:
mkDerivation {

pname = "ihaskell";
version = "0.9.0.3";
sha256 = "9720c1037f0bf79f36b2aaa960e8afd30d9672b8b5d7b5b75e4f24cf0fa38b8d";
isLibrary = true;
isExecutable = true;
enableSeparateDataOutput = true;
libraryHaskellDepends = [
aeson
base
base64-bytestring
bytestring
cereal
cmdargs
containers
directory
filepath
ghc
ghc-boot
ghc-parser
ghc-paths
haskeline
haskell-src-exts
hlint
http-client
http-client-tls
ipython-kernel
mtl
parsec
process
random
shelly
split
stm
strict
system-argv0
text
transformers
unix
unordered-containers
utf8-string
uuid
vector
];
executableHaskellDepends = [
aeson
base
bytestring
containers
directory
ghc
ipython-kernel
process
strict
text
transformers
unix
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/gibiansky/IHaskell";
description = "A Haskell backend kernel for the IPython project";
license = stdenv.lib.licenses.mit;

}) {};
"ihs" = callPackage
({
  mkDerivation
, base
, process
, stdenv
}:
mkDerivation {

pname = "ihs";
version = "0.1.0.2";
sha256 = "98477e742e5f131c8ceae4f2ca451bee3de7135340005252d107fc791edaf932";
isLibrary = false;
isExecutable = true;
executableHaskellDepends = [
base
process
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/minad/ihs";
description = "Interpolated Haskell";
license = stdenv.lib.licenses.publicDomain;

}) {};
"ilist" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "ilist";
version = "0.3.1.0";
sha256 = "e898e1dd1077e5a268f66e2de15f15ef64eddac94133954c9e054d59092afe97";
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/aelve/ilist";
description = "Optimised list functions for doing index-related things";
license = stdenv.lib.licenses.bsd3;

}) {};
"imagesize-conduit" = callPackage
({
  mkDerivation
, base
, bytestring
, conduit
, conduit-extra
, exceptions
, stdenv
}:
mkDerivation {

pname = "imagesize-conduit";
version = "1.1";
sha256 = "31c5784578b305921b89f7ab6fca35747e5a35f12884770b78c31e3a0a01ac19";
revision = "3";
editedCabalFile = "0p4zmizr01pg3d7gb0q88j1alvvlzbdvzyf1wbgajng68a4g0li9";
libraryHaskellDepends = [
base
bytestring
conduit
conduit-extra
exceptions
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/silkapp/imagesize-conduit";
description = "Determine the size of some common image formats";
license = stdenv.lib.licenses.bsd3;

}) {};
"immortal" = callPackage
({
  mkDerivation
, base
, lifted-base
, monad-control
, stdenv
, stm
, transformers-base
}:
mkDerivation {

pname = "immortal";
version = "0.2.2.1";
sha256 = "ed4aa1a2883a693a73fec47c8c2d5332d61a0626a2013403e1a8fb25cc6c8d8e";
libraryHaskellDepends = [
base
lifted-base
monad-control
stm
transformers-base
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/feuerbach/immortal";
description = "Spawn threads that never die (unless told to do so)";
license = stdenv.lib.licenses.mit;

}) {};
"imprint" = callPackage
({
  mkDerivation
, base
, binary
, bytestring
, constraints
, stdenv
}:
mkDerivation {

pname = "imprint";
version = "0.0.1.0";
sha256 = "9b90827c27a7766a060f50989c6a7fb63f3bd91b6cd3ebf0669b1baf8cffa638";
revision = "1";
editedCabalFile = "13418pfcsanj7cl651v4qqbypgjkrpld2gs560kpw3k2lj6w4wa0";
libraryHaskellDepends = [
base
binary
bytestring
constraints
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/mrkkrp/imprint";
description = "Serialization of arbitrary Haskell expressions";
license = stdenv.lib.licenses.bsd3;

}) {};
"include-file" = callPackage
({
  mkDerivation
, base
, bytestring
, random
, stdenv
, template-haskell
}:
mkDerivation {

pname = "include-file";
version = "0.1.0.3";
sha256 = "208f1f3bdc717f5f953cb7c9935c84d6a6291b7cd5ed8a22fa8567184be33d29";
libraryHaskellDepends = [
base
bytestring
random
template-haskell
];
doHaddock = false;
doCheck = false;
description = "Inclusion of files in executables at compile-time";
license = stdenv.lib.licenses.bsd3;

}) {};
"incremental-parser" = callPackage
({
  mkDerivation
, base
, monoid-subclasses
, stdenv
}:
mkDerivation {

pname = "incremental-parser";
version = "0.2.5.4";
sha256 = "dce497f80af7d6528e2e4b5548514bd4fdb74674c6f1f11c5d5426ba00a92121";
libraryHaskellDepends = [
base
monoid-subclasses
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/blamario/incremental-parser";
description = "Generic parser library capable of providing partial results from partial input";
license = stdenv.lib.licenses.gpl3;

}) {};
"indentation-core" = callPackage
({
  mkDerivation
, base
, mtl
, stdenv
}:
mkDerivation {

pname = "indentation-core";
version = "0.0.0.1";
sha256 = "21b78035e8933dddc15a8e90244c89daebea3043957b10a3f37a6775879dda8c";
libraryHaskellDepends = [
base
mtl
];
doHaddock = false;
doCheck = false;
homepage = "https://bitbucket.org/adamsmd/indentation";
description = "Indentation sensitive parsing combinators core library";
license = stdenv.lib.licenses.bsd3;

}) {};
"indentation-parsec" = callPackage
({
  mkDerivation
, base
, indentation-core
, mtl
, parsec
, stdenv
}:
mkDerivation {

pname = "indentation-parsec";
version = "0.0.0.1";
sha256 = "9716e5f757891a8ae07f9e67dd18952c151da66160a9ffed3c4fd013118b478b";
libraryHaskellDepends = [
base
indentation-core
mtl
parsec
];
doHaddock = false;
doCheck = false;
homepage = "https://bitbucket.org/adamsmd/indentation";
description = "Indentation sensitive parsing combinators for Parsec";
license = stdenv.lib.licenses.bsd3;

}) {};
"indents" = callPackage
({
  mkDerivation
, base
, mtl
, parsec
, stdenv
}:
mkDerivation {

pname = "indents";
version = "0.4.0.1";
sha256 = "14cfec09c5f54b47c9905b897cd29acdb5f7975ae3512aea938e846cecaf687f";
libraryHaskellDepends = [
base
mtl
parsec
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/jaspervdj/indents";
description = "indentation sensitive parser-combinators for parsec";
license = stdenv.lib.licenses.bsd3;

}) {};
"indexed-list-literals" = callPackage
({
  mkDerivation
, base
, OneTuple
, stdenv
}:
mkDerivation {

pname = "indexed-list-literals";
version = "0.1.0.1";
sha256 = "4d61c0736f5c94998787a6ba2bea48ef92bd3ae83acd41becbda3d9034e868d0";
libraryHaskellDepends = [
base
OneTuple
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/davidm-d/indexed-list-literals";
description = "Type safe indexed list literals";
license = stdenv.lib.licenses.bsd3;

}) {};
"inflections" = callPackage
({
  mkDerivation
, base
, exceptions
, megaparsec
, stdenv
, text
, unordered-containers
}:
mkDerivation {

pname = "inflections";
version = "0.4.0.3";
sha256 = "bda19185f3948a8988a53b1d6b7dc8f6676033c988c1d0d3c2e615fd6e920d09";
libraryHaskellDepends = [
base
exceptions
megaparsec
text
unordered-containers
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/stackbuilders/inflections-hs";
description = "Inflections library for Haskell";
license = stdenv.lib.licenses.mit;

}) {};
"influxdb" = callPackage
({
  mkDerivation
, aeson
, attoparsec
, base
, bytestring
, Cabal
, cabal-doctest
, clock
, containers
, foldl
, http-client
, http-types
, lens
, network
, optional-args
, scientific
, stdenv
, text
, time
, unordered-containers
, vector
}:
mkDerivation {

pname = "influxdb";
version = "1.3.0.1";
sha256 = "d4ad306d04da0f7efeaa5c5aae6c8e05fb684beb3d6c5832d1e5edcaa85b2722";
isLibrary = true;
isExecutable = true;
setupHaskellDepends = [
base
Cabal
cabal-doctest
];
libraryHaskellDepends = [
aeson
attoparsec
base
bytestring
clock
containers
foldl
http-client
http-types
lens
network
optional-args
scientific
text
time
unordered-containers
vector
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/maoe/influxdb-haskell";
description = "Haskell client library for InfluxDB";
license = stdenv.lib.licenses.bsd3;

}) {};
"ini" = callPackage
({
  mkDerivation
, attoparsec
, base
, stdenv
, text
, unordered-containers
}:
mkDerivation {

pname = "ini";
version = "0.3.6";
sha256 = "fcbbe3745a125e80dd6d0b4fe9b3a590507cf73dfaa62e115b20a46f0fd53cd9";
revision = "1";
editedCabalFile = "0gfikdal67aws20i5r4wg4r0lgn844glykcn3nnmbmyvwsks049l";
libraryHaskellDepends = [
attoparsec
base
text
unordered-containers
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/chrisdone/ini";
description = "Quick and easy configuration files in the INI format";
license = stdenv.lib.licenses.bsd3;

}) {};
"inline-c" = callPackage
({
  mkDerivation
, ansi-wl-pprint
, base
, bytestring
, containers
, hashable
, mtl
, parsec
, parsers
, stdenv
, template-haskell
, transformers
, unordered-containers
, vector
}:
mkDerivation {

pname = "inline-c";
version = "0.6.0.6";
sha256 = "9130e5837075c6fb78ed2a7793e558c9976607eb7e4ee1b48a50d3a19bb5ee3d";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
ansi-wl-pprint
base
bytestring
containers
hashable
mtl
parsec
parsers
template-haskell
transformers
unordered-containers
vector
];
doHaddock = false;
doCheck = false;
description = "Write Haskell source files including C code inline. No FFI required.";
license = stdenv.lib.licenses.mit;

}) {};
"inline-c-cpp" = callPackage
({
  mkDerivation
, base
, inline-c
, safe-exceptions
, stdenv
, template-haskell
}:
mkDerivation {

pname = "inline-c-cpp";
version = "0.2.1.0";
sha256 = "37a690b7d1d798f16b81f6634d9597811dbf057be2d21b6d8ed6cb9cece0a70a";
libraryHaskellDepends = [
base
inline-c
safe-exceptions
template-haskell
];
doHaddock = false;
doCheck = false;
description = "Lets you embed C++ code into Haskell";
license = stdenv.lib.licenses.mit;

}) {};
"inline-java" = callPackage
({
  mkDerivation
, base
, bytestring
, Cabal
, directory
, filepath
, ghc
, jni
, jvm
, language-java
, mtl
, process
, stdenv
, template-haskell
, temporary
, text
}:
mkDerivation {

pname = "inline-java";
version = "0.8.2";
sha256 = "be72beed3bc8c7483394a2c8c59b892aa62aa0f3230bdb24fef9f7242ee16838";
libraryHaskellDepends = [
base
bytestring
Cabal
directory
filepath
ghc
jni
jvm
language-java
mtl
process
template-haskell
temporary
text
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/tweag/inline-java#readme";
description = "Java interop via inline Java code in Haskell modules";
license = stdenv.lib.licenses.bsd3;

}) {};
"inline-r" = callPackage
({
  mkDerivation
, aeson
, base
, bytestring
, containers
, data-default-class
, deepseq
, exceptions
, inline-c
, mtl
, pretty
, primitive
, process
, R
, reflection
, setenv
, singletons
, stdenv
, template-haskell
, text
, th-lift
, th-orphans
, transformers
, unix
, vector
}:
mkDerivation {

pname = "inline-r";
version = "0.9.1";
sha256 = "5a65cf0ebc8c1b7647e9f690f518b10e9328e823461dae769fd29bc29ef2fbf2";
libraryHaskellDepends = [
aeson
base
bytestring
containers
data-default-class
deepseq
exceptions
inline-c
mtl
pretty
primitive
process
reflection
setenv
singletons
template-haskell
text
th-lift
th-orphans
transformers
unix
vector
];
libraryPkgconfigDepends = [
R
];
doHaddock = false;
doCheck = false;
homepage = "https://tweag.github.io/HaskellR";
description = "Seamlessly call R from Haskell and vice versa. No FFI required.";
license = stdenv.lib.licenses.bsd3;

}) {inherit (pkgs) R;};
"insert-ordered-containers" = callPackage
({
  mkDerivation
, aeson
, base
, base-compat
, hashable
, lens
, semigroupoids
, semigroups
, stdenv
, text
, transformers
, unordered-containers
}:
mkDerivation {

pname = "insert-ordered-containers";
version = "0.2.1.0";
sha256 = "d71d126bf455898492e1d2ba18b2ad04453f8b0e4daff3926a67f0560a712298";
revision = "7";
editedCabalFile = "1mqdqrr25igra0bhqkjsc5y87q9ciwm5w14gmchx2p7xy7x0xy9b";
libraryHaskellDepends = [
aeson
base
base-compat
hashable
lens
semigroupoids
semigroups
text
transformers
unordered-containers
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/phadej/insert-ordered-containers#readme";
description = "Associative containers retaining insertion order for traversals";
license = stdenv.lib.licenses.bsd3;

}) {};
"inspection-testing" = callPackage
({
  mkDerivation
, base
, containers
, ghc
, mtl
, stdenv
, template-haskell
, transformers
}:
mkDerivation {

pname = "inspection-testing";
version = "0.2.0.1";
sha256 = "1f699bf8e95ab90d36725a8a090ad052dbb051cce379fd45a664f561e66ea194";
libraryHaskellDepends = [
base
containers
ghc
mtl
template-haskell
transformers
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/nomeata/inspection-testing";
description = "GHC plugin to do inspection testing";
license = stdenv.lib.licenses.mit;

}) {};
"instance-control" = callPackage
({
  mkDerivation
, base
, mtl
, stdenv
, transformers
}:
mkDerivation {

pname = "instance-control";
version = "0.1.2.0";
sha256 = "7d6dd381d8fb449584cdb016464cd02794e3ccc527c0589aab16d8a2221c6b73";
libraryHaskellDepends = [
base
mtl
transformers
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/lazac/instance-control";
description = "Controls how the compiler searches for instances using type families";
license = stdenv.lib.licenses.bsd3;

}) {};
"integer-logarithms" = callPackage
({
  mkDerivation
, array
, base
, ghc-prim
, integer-gmp
, stdenv
}:
mkDerivation {

pname = "integer-logarithms";
version = "1.0.2.1";
sha256 = "32ad4a482a60ec957d1af1268952e2a6b382b67438c14f74f6c2aef2e49b48f2";
libraryHaskellDepends = [
array
base
ghc-prim
integer-gmp
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/phadej/integer-logarithms";
description = "Integer logarithms";
license = stdenv.lib.licenses.mit;

}) {};
"integration" = callPackage
({
  mkDerivation
, base
, parallel
, stdenv
}:
mkDerivation {

pname = "integration";
version = "0.2.1";
sha256 = "0c27385eadc10a580e78f7b7d4bc919c346b2c9b1e73aea7e7804d824d53582f";
libraryHaskellDepends = [
base
parallel
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/ekmett/integration";
description = "Fast robust numeric integration via tanh-sinh quadrature";
license = stdenv.lib.licenses.bsd3;

}) {};
"intern" = callPackage
({
  mkDerivation
, array
, base
, bytestring
, hashable
, stdenv
, text
, unordered-containers
}:
mkDerivation {

pname = "intern";
version = "0.9.2";
sha256 = "93a3b20e96dad8d83c9145dfc68bd9d2a6a72c9f64e4a7bc257d330070f42e20";
libraryHaskellDepends = [
array
base
bytestring
hashable
text
unordered-containers
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/ekmett/intern/";
description = "Efficient hash-consing for arbitrary data types";
license = stdenv.lib.licenses.bsd3;

}) {};
"interpolate" = callPackage
({
  mkDerivation
, base
, haskell-src-meta
, stdenv
, template-haskell
}:
mkDerivation {

pname = "interpolate";
version = "0.2.0";
sha256 = "6e112006073f2d91e7e93432ccb147b79a21fcc21a9dedd0d8c38cef51926abe";
libraryHaskellDepends = [
base
haskell-src-meta
template-haskell
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/sol/interpolate#readme";
description = "String interpolation done right";
license = stdenv.lib.licenses.mit;

}) {};
"interpolatedstring-perl6" = callPackage
({
  mkDerivation
, base
, bytestring
, haskell-src-meta
, stdenv
, template-haskell
, text
}:
mkDerivation {

pname = "interpolatedstring-perl6";
version = "1.0.0";
sha256 = "65e0b2ad2d7482755570637212417b84d1db3bcc3cd1aa348b6b37f57911a1d3";
enableSeparateDataOutput = true;
libraryHaskellDepends = [
base
bytestring
haskell-src-meta
template-haskell
text
];
doHaddock = false;
doCheck = false;
description = "QuasiQuoter for Perl6-style multi-line interpolated strings";
license = stdenv.lib.licenses.publicDomain;

}) {};
"interpolation" = callPackage
({
  mkDerivation
, base
, stdenv
, utility-ht
}:
mkDerivation {

pname = "interpolation";
version = "0.1.0.2";
sha256 = "18839b5b8a55bc7844c3d9839eaace933bad160a1879151b403df46eba0450e2";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
base
utility-ht
];
doHaddock = false;
doCheck = false;
homepage = "http://hub.darcs.net/thielema/interpolation/";
description = "piecewise linear and cubic Hermite interpolation";
license = stdenv.lib.licenses.bsd3;

}) {};
"intervals" = callPackage
({
  mkDerivation
, array
, base
, Cabal
, cabal-doctest
, distributive
, ghc-prim
, stdenv
}:
mkDerivation {

pname = "intervals";
version = "0.8.1";
sha256 = "9ce3bf9d31b9ab2296fccc25031fd52e1c3e4abeca5d3bb452a725b586eb7e03";
revision = "4";
editedCabalFile = "1qx3q0v13l1zaln9zdk8chxpxhshbz5x0vqm0qda7d1kpv7h6a7r";
setupHaskellDepends = [
base
Cabal
cabal-doctest
];
libraryHaskellDepends = [
array
base
distributive
ghc-prim
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/ekmett/intervals";
description = "Interval Arithmetic";
license = stdenv.lib.licenses.bsd3;

}) {};
"intro" = callPackage
({
  mkDerivation
, base
, binary
, bytestring
, containers
, deepseq
, dlist
, extra
, hashable
, mtl
, safe
, stdenv
, text
, transformers
, unordered-containers
, writer-cps-mtl
}:
mkDerivation {

pname = "intro";
version = "0.3.1.0";
sha256 = "da5e5e2c1a44d935271ad97b921e97be121f85a923152b5d0a756261ba357492";
libraryHaskellDepends = [
base
binary
bytestring
containers
deepseq
dlist
extra
hashable
mtl
safe
text
transformers
unordered-containers
writer-cps-mtl
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/minad/intro#readme";
description = "\"Fixed Prelude\" - Mostly total and safe, provides Text and Monad transformers";
license = stdenv.lib.licenses.mit;

}) {};
"invariant" = callPackage
({
  mkDerivation
, array
, base
, bifunctors
, comonad
, containers
, contravariant
, ghc-prim
, profunctors
, semigroups
, StateVar
, stdenv
, stm
, tagged
, template-haskell
, th-abstraction
, transformers
, transformers-compat
, unordered-containers
}:
mkDerivation {

pname = "invariant";
version = "0.5";
sha256 = "80bbcaeaeeeb69dfbb28648d7737b48e1d1d6cc4e7ee0d192eaade9a6351e9ff";
revision = "1";
editedCabalFile = "04sxa2jfv613ff3fxpnk0cn31f6fr80gzr7va47nrc0abp34vd7y";
libraryHaskellDepends = [
array
base
bifunctors
comonad
containers
contravariant
ghc-prim
profunctors
semigroups
StateVar
stm
tagged
template-haskell
th-abstraction
transformers
transformers-compat
unordered-containers
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/nfrisby/invariant-functors";
description = "Haskell98 invariant functors";
license = stdenv.lib.licenses.bsd2;

}) {};
"invertible" = callPackage
({
  mkDerivation
, base
, haskell-src-meta
, invariant
, lens
, partial-isomorphisms
, semigroupoids
, stdenv
, template-haskell
, transformers
}:
mkDerivation {

pname = "invertible";
version = "0.2.0.5";
sha256 = "0a0adaa1f371f739fd2c506ff2ba3c4db278bbdfda0171bd8329d678c15b8dbb";
libraryHaskellDepends = [
base
haskell-src-meta
invariant
lens
partial-isomorphisms
semigroupoids
template-haskell
transformers
];
doHaddock = false;
doCheck = false;
description = "bidirectional arrows, bijective functions, and invariant functors";
license = stdenv.lib.licenses.bsd3;

}) {};
"io-choice" = callPackage
({
  mkDerivation
, base
, lifted-base
, monad-control
, stdenv
, template-haskell
, transformers
, transformers-base
}:
mkDerivation {

pname = "io-choice";
version = "0.0.6";
sha256 = "612b281110d18615000704f24fdb54a3b4401f7a39dcfe358433d7b4c22e1cef";
libraryHaskellDepends = [
base
lifted-base
monad-control
template-haskell
transformers
transformers-base
];
doHaddock = false;
doCheck = false;
description = "Choice for IO and lifted IO";
license = stdenv.lib.licenses.bsd3;

}) {};
"io-machine" = callPackage
({
  mkDerivation
, base
, stdenv
, time
}:
mkDerivation {

pname = "io-machine";
version = "0.2.0.0";
sha256 = "05dcc8d5fcbb6f0d7f3519488ebf743eaa776bc93c2f8b0d4bbd866ac1331ccb";
libraryHaskellDepends = [
base
time
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/YoshikuniJujo/io-machine#readme";
description = "Easy I/O model to learn IO monad";
license = stdenv.lib.licenses.bsd3;

}) {};
"io-manager" = callPackage
({
  mkDerivation
, base
, containers
, stdenv
}:
mkDerivation {

pname = "io-manager";
version = "0.1.0.2";
sha256 = "bf0aa7740a8aaf31fc4f2570a47957365ae7d9248edd309e694053f1cd804138";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
base
containers
];
executableHaskellDepends = [
base
containers
];
doHaddock = false;
doCheck = false;
description = "Skeleton library around the IO monad";
license = stdenv.lib.licenses.bsd3;

}) {};
"io-memoize" = callPackage
({
  mkDerivation
, async
, base
, stdenv
}:
mkDerivation {

pname = "io-memoize";
version = "1.1.1.0";
sha256 = "c753a1b1a2fb286bf608d6467e6e7599cde8e641c619885197f298bf1b2f483d";
libraryHaskellDepends = [
async
base
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/DanBurton/io-memoize";
description = "Memoize IO actions";
license = stdenv.lib.licenses.bsd3;

}) {};
"io-region" = callPackage
({
  mkDerivation
, base
, stdenv
, stm
}:
mkDerivation {

pname = "io-region";
version = "0.1.1";
sha256 = "ee303f66c2b3d33fae877b0dbb7c64624109fc759dffa669ca182e387f1015f1";
libraryHaskellDepends = [
base
stm
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/Yuras/io-region/wiki";
description = "Exception safe resource management with dynamic regions";
license = stdenv.lib.licenses.bsd3;

}) {};
"io-storage" = callPackage
({
  mkDerivation
, base
, containers
, stdenv
}:
mkDerivation {

pname = "io-storage";
version = "0.3";
sha256 = "9a0df5cc7ff2eeef11e29e1362fea284f535bc2fe67469bba6dbc41c4f5b49bd";
libraryHaskellDepends = [
base
containers
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/willdonnelly/io-storage";
description = "A key-value store in the IO monad";
license = stdenv.lib.licenses.bsd3;

}) {};
"io-streams" = callPackage
({
  mkDerivation
, attoparsec
, base
, bytestring
, bytestring-builder
, network
, primitive
, process
, stdenv
, text
, time
, transformers
, vector
, zlib-bindings
}:
mkDerivation {

pname = "io-streams";
version = "1.5.0.1";
sha256 = "5dcb3717933197a84f31be74abf545126b3d25eb0e0d64f722c480d3c46b2c8b";
revision = "1";
editedCabalFile = "1d7rpwi10rqcry58d4hc651xvk9xzni6n6k22wm9532l14i3x21c";
configureFlags = [
"-fNoInteractiveTests"
];
libraryHaskellDepends = [
attoparsec
base
bytestring
bytestring-builder
network
primitive
process
text
time
transformers
vector
zlib-bindings
];
doHaddock = false;
doCheck = false;
description = "Simple, composable, and easy-to-use stream I/O";
license = stdenv.lib.licenses.bsd3;

}) {};
"io-streams-haproxy" = callPackage
({
  mkDerivation
, attoparsec
, base
, bytestring
, io-streams
, network
, stdenv
, transformers
}:
mkDerivation {

pname = "io-streams-haproxy";
version = "1.0.0.2";
sha256 = "77814f8258b5c32707a13e0d30ab2e144e7ad073aee821d6def65554024ed086";
revision = "2";
editedCabalFile = "0jrasbn4s6ac0691bf88fbflpha2vn24bd45gk0s3znvl395dxgr";
libraryHaskellDepends = [
attoparsec
base
bytestring
io-streams
network
transformers
];
doHaddock = false;
doCheck = false;
homepage = "http://snapframework.com/";
description = "HAProxy protocol 1.5 support for io-streams";
license = stdenv.lib.licenses.bsd3;

}) {};
"ip" = callPackage
({
  mkDerivation
, aeson
, attoparsec
, base
, bytestring
, hashable
, primitive
, stdenv
, text
, vector
}:
mkDerivation {

pname = "ip";
version = "1.1.2";
sha256 = "5201cba09422ea754cb7128332f3669bce79616963929c10e444ef2b335b729b";
libraryHaskellDepends = [
aeson
attoparsec
base
bytestring
hashable
primitive
text
vector
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/andrewthad/haskell-ip#readme";
description = "Library for IP and MAC addresses";
license = stdenv.lib.licenses.bsd3;

}) {};
"ip6addr" = callPackage
({
  mkDerivation
, base
, cmdargs
, IPv6Addr
, stdenv
, text
}:
mkDerivation {

pname = "ip6addr";
version = "0.5.3";
sha256 = "1ff90994e691785a6eb4bc080d71556761f0ef6f91f0a3a1452c58a8b06e03c6";
isLibrary = false;
isExecutable = true;
executableHaskellDepends = [
base
cmdargs
IPv6Addr
text
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/MichelBoucey/ip6addr";
description = "Commandline tool to generate IPv6 address text representations";
license = stdenv.lib.licenses.bsd3;

}) {};
"iproute" = callPackage
({
  mkDerivation
, appar
, base
, byteorder
, containers
, network
, stdenv
}:
mkDerivation {

pname = "iproute";
version = "1.7.5";
sha256 = "ed638e0b0a098ee4a0f5c5fe48b2a803939c0be4a3612b2d86e16fa447b581ef";
libraryHaskellDepends = [
appar
base
byteorder
containers
network
];
doHaddock = false;
doCheck = false;
homepage = "http://www.mew.org/~kazu/proj/iproute/";
description = "IP Routing Table";
license = stdenv.lib.licenses.bsd3;

}) {};
"ipython-kernel" = callPackage
({
  mkDerivation
, aeson
, base
, bytestring
, cereal
, containers
, directory
, filepath
, mtl
, process
, SHA
, stdenv
, temporary
, text
, transformers
, unordered-containers
, uuid
, zeromq4-haskell
}:
mkDerivation {

pname = "ipython-kernel";
version = "0.9.0.2";
sha256 = "5923468f359c50c2e9313cf1aadc1d0ba09b571a621129ff672f8e337d158206";
isLibrary = true;
isExecutable = true;
enableSeparateDataOutput = true;
libraryHaskellDepends = [
aeson
base
bytestring
cereal
containers
directory
filepath
mtl
process
SHA
temporary
text
transformers
unordered-containers
uuid
zeromq4-haskell
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/gibiansky/IHaskell";
description = "A library for creating kernels for IPython frontends";
license = stdenv.lib.licenses.mit;

}) {};
"irc" = callPackage
({
  mkDerivation
, attoparsec
, base
, bytestring
, stdenv
}:
mkDerivation {

pname = "irc";
version = "0.6.1.0";
sha256 = "3816ead4dfb32d61c03265e3a2a45053508cb27ca3132595773a27ef381637e1";
libraryHaskellDepends = [
attoparsec
base
bytestring
];
doHaddock = false;
doCheck = false;
description = "A small library for parsing IRC messages";
license = stdenv.lib.licenses.bsd3;

}) {};
"irc-client" = callPackage
({
  mkDerivation
, base
, bytestring
, conduit
, connection
, containers
, contravariant
, exceptions
, irc-conduit
, irc-ctcp
, mtl
, network-conduit-tls
, old-locale
, profunctors
, stdenv
, stm
, stm-chans
, text
, time
, tls
, transformers
, x509
, x509-store
, x509-validation
}:
mkDerivation {

pname = "irc-client";
version = "1.1.0.3";
sha256 = "bee3aa29121bdd0c094427c4207cad702e78222c492bd13a05fa1e3a693882d3";
libraryHaskellDepends = [
base
bytestring
conduit
connection
containers
contravariant
exceptions
irc-conduit
irc-ctcp
mtl
network-conduit-tls
old-locale
profunctors
stm
stm-chans
text
time
tls
transformers
x509
x509-store
x509-validation
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/barrucadu/irc-client";
description = "An IRC client library";
license = stdenv.lib.licenses.mit;

}) {};
"irc-conduit" = callPackage
({
  mkDerivation
, async
, base
, bytestring
, conduit
, conduit-extra
, connection
, irc
, irc-ctcp
, network-conduit-tls
, profunctors
, stdenv
, text
, time
, tls
, transformers
, x509-validation
}:
mkDerivation {

pname = "irc-conduit";
version = "0.3.0.1";
sha256 = "b0a8f935eb3b4613e74efce7a913592f72835194b8977271f35eb09c578b3b52";
libraryHaskellDepends = [
async
base
bytestring
conduit
conduit-extra
connection
irc
irc-ctcp
network-conduit-tls
profunctors
text
time
tls
transformers
x509-validation
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/barrucadu/irc-conduit";
description = "Streaming IRC message library using conduits";
license = stdenv.lib.licenses.mit;

}) {};
"irc-ctcp" = callPackage
({
  mkDerivation
, base
, bytestring
, stdenv
, text
}:
mkDerivation {

pname = "irc-ctcp";
version = "0.1.3.0";
sha256 = "d67cd91a5521173565033777cea76636e4d2be6e6224f681392d9e726f4bb79a";
libraryHaskellDepends = [
base
bytestring
text
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/barrucadu/irc-ctcp";
description = "A CTCP encoding and decoding library for IRC clients";
license = stdenv.lib.licenses.mit;

}) {};
"irc-dcc" = callPackage
({
  mkDerivation
, attoparsec
, base
, binary
, bytestring
, io-streams
, iproute
, irc-ctcp
, mtl
, network
, path
, safe-exceptions
, stdenv
, transformers
, utf8-string
}:
mkDerivation {

pname = "irc-dcc";
version = "2.0.1";
sha256 = "6408a28733743d3463664677c5e3ad72e46c168799dad458988067039f25d2df";
revision = "8";
editedCabalFile = "1ya1bl8pdzbs3gxkq7hsyvkaajf8prrdhr1lx5hm9pi1nqsi879z";
libraryHaskellDepends = [
attoparsec
base
binary
bytestring
io-streams
iproute
irc-ctcp
mtl
network
path
safe-exceptions
transformers
utf8-string
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/JanGe/irc-dcc";
description = "A DCC message parsing and helper library for IRC clients";
license = stdenv.lib.licenses.mit;

}) {};
"islink" = callPackage
({
  mkDerivation
, base
, stdenv
, unordered-containers
}:
mkDerivation {

pname = "islink";
version = "0.1.0.0";
sha256 = "cfbf9c1a6dc46327b7ed7bf9336e245a255626c9d04aeba3d887d90f26d2aed7";
libraryHaskellDepends = [
base
unordered-containers
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/redneb/islink";
description = "Check if an HTML element is a link";
license = stdenv.lib.licenses.bsd3;

}) {};
"iso3166-country-codes" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "iso3166-country-codes";
version = "0.20140203.8";
sha256 = "b4d6e01cd61bcaef9a8e455c331a8e7a2298531cb587ef6f23675eae7a6b0a36";
revision = "1";
editedCabalFile = "0n01pmvkqi0w9l203i1v7kb6bb867plv4h5hmzlkpnhrf5abf0zf";
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
description = "A datatype for ISO 3166 country codes";
license = "LGPL";

}) {};
"iso639" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "iso639";
version = "0.1.0.3";
sha256 = "124b8322fabaedb4de3dbc39880b36d0eab0e28d5775954aadb6630bc0da25e8";
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/HugoDaniel/iso639";
description = "ISO-639-1 language codes";
license = stdenv.lib.licenses.bsd3;

}) {};
"iso8601-time" = callPackage
({
  mkDerivation
, base
, stdenv
, time
}:
mkDerivation {

pname = "iso8601-time";
version = "0.1.4";
sha256 = "761d737ea0841ee8fd3660cfe20041e9458be8ab424de8b3b661bb249b930126";
libraryHaskellDepends = [
base
time
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/nh2/iso8601-time";
description = "Convert to/from the ISO 8601 time format";
license = stdenv.lib.licenses.mit;

}) {};
"iterable" = callPackage
({
  mkDerivation
, base
, mtl
, stdenv
, tagged
, template-haskell
, vector
}:
mkDerivation {

pname = "iterable";
version = "3.0";
sha256 = "6cd13d621144e937cc88acfed1663bd2e208dcbe54be4bad1f7b7279250a87a4";
enableSeparateDataOutput = true;
libraryHaskellDepends = [
base
mtl
tagged
template-haskell
vector
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/BioHaskell/iterable";
description = "API for hierarchical multilevel collections";
license = stdenv.lib.licenses.bsd3;

}) {};
"ix-shapable" = callPackage
({
  mkDerivation
, array
, base
, stdenv
}:
mkDerivation {

pname = "ix-shapable";
version = "0.1.0";
sha256 = "5007ffb6a8a7bb490f962cedceed5ceb7c435126d09bc565441070cbfda79222";
libraryHaskellDepends = [
array
base
];
doHaddock = false;
doCheck = false;
description = "Reshape multi-dimensional arrays";
license = stdenv.lib.licenses.bsd3;

}) {};
"ixset" = callPackage
({
  mkDerivation
, base
, containers
, safecopy
, stdenv
, syb
, syb-with-class
, template-haskell
}:
mkDerivation {

pname = "ixset";
version = "1.0.7";
sha256 = "2f0e5a581b1d3c5e4685da8b109b2089177632fe8931ae68f5973fba687b42d1";
libraryHaskellDepends = [
base
containers
safecopy
syb
syb-with-class
template-haskell
];
doHaddock = false;
doCheck = false;
homepage = "http://happstack.com";
description = "Efficient relational queries on Haskell sets";
license = stdenv.lib.licenses.bsd3;

}) {};
"ixset-typed" = callPackage
({
  mkDerivation
, base
, containers
, deepseq
, safecopy
, stdenv
, syb
, template-haskell
}:
mkDerivation {

pname = "ixset-typed";
version = "0.3.1.1";
sha256 = "d06b466c2cc56df15035d0b79f3a3eb6e7d39d878ae27dea3a7fbb9c78addc12";
libraryHaskellDepends = [
base
containers
deepseq
safecopy
syb
template-haskell
];
doHaddock = false;
doCheck = false;
description = "Efficient relational queries on Haskell sets";
license = stdenv.lib.licenses.bsd3;

}) {};
"jack" = callPackage
({
  mkDerivation
, array
, base
, bytestring
, enumset
, event-list
, explicit-exception
, libjack2
, midi
, non-negative
, semigroups
, stdenv
, transformers
}:
mkDerivation {

pname = "jack";
version = "0.7.1.3";
sha256 = "8cbc488ebfdb359d55f89b2ace9ea233c3875b359bee300f6171233ca6b51fd8";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
array
base
bytestring
enumset
event-list
explicit-exception
midi
non-negative
semigroups
transformers
];
libraryPkgconfigDepends = [
libjack2
];
doHaddock = false;
doCheck = false;
homepage = "http://www.haskell.org/haskellwiki/JACK";
description = "Bindings for the JACK Audio Connection Kit";
license = "GPL";

}) {inherit (pkgs) libjack2;};
"jailbreak-cabal" = callPackage
({
  mkDerivation
, base
, Cabal
, stdenv
}:
mkDerivation {

pname = "jailbreak-cabal";
version = "1.3.3";
sha256 = "6bac08ad1a1ff7452a2963272f96f5de0a3df200fb3219dde6ee93e4963dd01c";
revision = "3";
editedCabalFile = "0f4gqssh2ayl089zzl8m5rwa66x430dg1q5hfwcfd56r6xr6wi1l";
isLibrary = false;
isExecutable = true;
executableHaskellDepends = [
base
Cabal
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/peti/jailbreak-cabal#readme";
description = "Strip version restrictions from Cabal files";
license = stdenv.lib.licenses.bsd3;

}) {};
"javascript-extras" = callPackage
({
  mkDerivation
, base
, deepseq
, ghcjs-base-stub
, parallel
, stdenv
, text
}:
mkDerivation {

pname = "javascript-extras";
version = "0.3.2.0";
sha256 = "6820e8a2b33f88a10b2836d69d03bd8697d094ea7e13046c4ce09437d9640c79";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
base
deepseq
ghcjs-base-stub
parallel
text
];
executableHaskellDepends = [
base
ghcjs-base-stub
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/louispan/javascript-extras#readme";
description = "Extra javascript functions when using GHCJS";
license = stdenv.lib.licenses.bsd3;

}) {};
"jmacro" = callPackage
({
  mkDerivation
, aeson
, base
, bytestring
, containers
, haskell-src-exts
, haskell-src-meta
, mtl
, parseargs
, parsec
, regex-posix
, safe
, stdenv
, syb
, template-haskell
, text
, unordered-containers
, vector
, wl-pprint-text
}:
mkDerivation {

pname = "jmacro";
version = "0.6.15";
sha256 = "fae43fec6f4ba9ebc1fbd5605fc1b65b1c80bb0869bcfcd80d417e6d82cb6cac";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
aeson
base
bytestring
containers
haskell-src-exts
haskell-src-meta
mtl
parsec
regex-posix
safe
syb
template-haskell
text
unordered-containers
vector
wl-pprint-text
];
executableHaskellDepends = [
aeson
base
bytestring
containers
haskell-src-exts
haskell-src-meta
mtl
parseargs
parsec
regex-posix
safe
syb
template-haskell
text
unordered-containers
vector
wl-pprint-text
];
doHaddock = false;
doCheck = false;
description = "QuasiQuotation library for programmatic generation of Javascript code";
license = stdenv.lib.licenses.bsd3;

}) {};
"jmacro-rpc" = callPackage
({
  mkDerivation
, aeson
, attoparsec
, base
, blaze-html
, bytestring
, containers
, contravariant
, jmacro
, mtl
, scientific
, split
, stdenv
, text
, unordered-containers
, vector
}:
mkDerivation {

pname = "jmacro-rpc";
version = "0.3.2";
sha256 = "a32f53b97bc84e79834df4c4630745c6b07ae46b45bc2ca2d43d91a38571c5d9";
libraryHaskellDepends = [
aeson
attoparsec
base
blaze-html
bytestring
containers
contravariant
jmacro
mtl
scientific
split
text
unordered-containers
vector
];
doHaddock = false;
doCheck = false;
homepage = "http://hub.darcs.net/gershomb/jmacro";
description = "JSON-RPC clients and servers using JMacro, and evented client-server Reactive Programming";
license = stdenv.lib.licenses.bsd3;

}) {};
"jmacro-rpc-happstack" = callPackage
({
  mkDerivation
, aeson
, base
, blaze-html
, bytestring
, containers
, happstack-server
, jmacro
, jmacro-rpc
, mtl
, stdenv
}:
mkDerivation {

pname = "jmacro-rpc-happstack";
version = "0.3.2";
sha256 = "99cdee3c1a5bd4499acf8decb2e76af48e7da7ccba01d51b86f65ea92944b064";
libraryHaskellDepends = [
aeson
base
blaze-html
bytestring
containers
happstack-server
jmacro
jmacro-rpc
mtl
];
doHaddock = false;
doCheck = false;
homepage = "http://hub.darcs.net/gershomb/jmacro-rpc";
description = "Happstack backend for jmacro-rpc";
license = stdenv.lib.licenses.bsd3;

}) {};
"jmacro-rpc-snap" = callPackage
({
  mkDerivation
, aeson
, base
, bytestring
, containers
, jmacro
, jmacro-rpc
, mtl
, snap-core
, stdenv
}:
mkDerivation {

pname = "jmacro-rpc-snap";
version = "0.3";
sha256 = "48aea4a4ba90532ca105b6b274060a47a1c509b8346e0db1b61365c2a9e8dfeb";
libraryHaskellDepends = [
aeson
base
bytestring
containers
jmacro
jmacro-rpc
mtl
snap-core
];
doHaddock = false;
doCheck = false;
homepage = "http://hub.darcs.net/gershomb/jmacro-rpc";
description = "Snap backend for jmacro-rpc";
license = stdenv.lib.licenses.bsd3;

}) {};
"jni" = callPackage
({
  mkDerivation
, base
, bytestring
, choice
, constraints
, containers
, cpphs
, deepseq
, inline-c
, jdk
, singletons
, stdenv
}:
mkDerivation {

pname = "jni";
version = "0.6.0";
sha256 = "6aa58f10f2db9becb9d4b6856823e5a08c41a4789d0ae9704e0f5d87b571f012";
libraryHaskellDepends = [
base
bytestring
choice
constraints
containers
deepseq
inline-c
singletons
];
librarySystemDepends = [
jdk
];
libraryToolDepends = [
cpphs
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/tweag/inline-java/tree/master/jni#readme";
description = "Complete JNI raw bindings";
license = stdenv.lib.licenses.bsd3;

}) {inherit (pkgs) jdk;};
"jose" = callPackage
({
  mkDerivation
, aeson
, attoparsec
, base
, base64-bytestring
, bytestring
, concise
, containers
, cryptonite
, lens
, memory
, monad-time
, mtl
, network-uri
, QuickCheck
, quickcheck-instances
, safe
, semigroups
, stdenv
, template-haskell
, text
, time
, unordered-containers
, vector
, x509
}:
mkDerivation {

pname = "jose";
version = "0.6.0.3";
sha256 = "bd8b5bd4b2bd5a81c1a3d71f2be1fe2b8978ba2641ebd05c35b1951d0c17cdb4";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
aeson
attoparsec
base
base64-bytestring
bytestring
concise
containers
cryptonite
lens
memory
monad-time
mtl
network-uri
QuickCheck
quickcheck-instances
safe
semigroups
template-haskell
text
time
unordered-containers
vector
x509
];
executableHaskellDepends = [
aeson
base
bytestring
lens
mtl
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/frasertweedale/hs-jose";
description = "Javascript Object Signing and Encryption and JSON Web Token library";
license = stdenv.lib.licenses.asl20;

}) {};
"jose-jwt" = callPackage
({
  mkDerivation
, aeson
, attoparsec
, base
, bytestring
, cereal
, containers
, cryptonite
, either
, memory
, mtl
, stdenv
, text
, time
, transformers
, transformers-compat
, unordered-containers
, vector
}:
mkDerivation {

pname = "jose-jwt";
version = "0.7.8";
sha256 = "d3e1693e28d2de4914011a4f573070b02a71c8e40c142c9ab8b00c8629c5f32b";
libraryHaskellDepends = [
aeson
attoparsec
base
bytestring
cereal
containers
cryptonite
either
memory
mtl
text
time
transformers
transformers-compat
unordered-containers
vector
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/tekul/jose-jwt";
description = "JSON Object Signing and Encryption Library";
license = stdenv.lib.licenses.bsd3;

}) {};
"js-flot" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "js-flot";
version = "0.8.3";
sha256 = "1ba2f2a6b8d85da76c41f526c98903cbb107f8642e506c072c1e7e3c20fe5e7a";
enableSeparateDataOutput = true;
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/ndmitchell/js-flot#readme";
description = "Obtain minified flot code";
license = stdenv.lib.licenses.mit;

}) {};
"js-jquery" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "js-jquery";
version = "3.3.1";
sha256 = "e0e0681f0da1130ede4e03a051630ea439c458cb97216cdb01771ebdbe44069b";
enableSeparateDataOutput = true;
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/ndmitchell/js-jquery#readme";
description = "Obtain minified jQuery code";
license = stdenv.lib.licenses.mit;

}) {};
"json" = callPackage
({
  mkDerivation
, array
, base
, bytestring
, containers
, mtl
, parsec
, pretty
, stdenv
, syb
, text
}:
mkDerivation {

pname = "json";
version = "0.9.2";
sha256 = "e6bb16fa791cc3833ae7b459b7e7885c1c2b11b0d294b7e095287c54fa73738e";
libraryHaskellDepends = [
array
base
bytestring
containers
mtl
parsec
pretty
syb
text
];
doHaddock = false;
doCheck = false;
description = "Support for serialising Haskell to and from JSON";
license = stdenv.lib.licenses.bsd3;

}) {};
"json-autotype" = callPackage
({
  mkDerivation
, aeson
, base
, bytestring
, containers
, filepath
, GenericPretty
, hashable
, lens
, mtl
, optparse-applicative
, pretty
, process
, scientific
, stdenv
, text
, uniplate
, unordered-containers
, vector
, yaml
}:
mkDerivation {

pname = "json-autotype";
version = "1.0.18";
sha256 = "f0f09112c9e329f7dda2a67276d0009129b70d8ae7c85c03e25868330f8e4a40";
revision = "2";
editedCabalFile = "1b7q8af32zpsrq32m34d4h4245ww19kxfqjrbq6s2mfx5qd5s5y6";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
aeson
base
bytestring
containers
filepath
GenericPretty
hashable
lens
mtl
optparse-applicative
pretty
process
scientific
text
uniplate
unordered-containers
vector
];
executableHaskellDepends = [
aeson
base
bytestring
containers
filepath
GenericPretty
hashable
lens
mtl
optparse-applicative
pretty
process
scientific
text
uniplate
unordered-containers
vector
yaml
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/mgajda/json-autotype";
description = "Automatic type declaration for JSON input data";
license = stdenv.lib.licenses.bsd3;

}) {};
"json-builder" = callPackage
({
  mkDerivation
, base
, blaze-builder
, blaze-textual
, bytestring
, containers
, stdenv
, text
, unordered-containers
, utf8-string
, vector
}:
mkDerivation {

pname = "json-builder";
version = "0.3";
sha256 = "b5ef217d5432e8e962fac45f5a266993a0ea26d29c2580b93d0c9988d7480b4d";
libraryHaskellDepends = [
base
blaze-builder
blaze-textual
bytestring
containers
text
unordered-containers
utf8-string
vector
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/lpsmith/json-builder";
description = "Data structure agnostic JSON serialization";
license = stdenv.lib.licenses.bsd3;

}) {};
"json-rpc-generic" = callPackage
({
  mkDerivation
, aeson
, aeson-generic-compat
, base
, containers
, dlist
, scientific
, stdenv
, text
, transformers
, unordered-containers
, vector
}:
mkDerivation {

pname = "json-rpc-generic";
version = "0.2.1.4";
sha256 = "741e68586714f163cc044634c718a3b940ffac3271c9e6beaaa96257585f2b7e";
libraryHaskellDepends = [
aeson
aeson-generic-compat
base
containers
dlist
scientific
text
transformers
unordered-containers
vector
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/khibino/haskell-json-rpc-generic";
description = "Generic encoder and decode for JSON-RPC";
license = stdenv.lib.licenses.bsd3;

}) {};
"json-schema" = callPackage
({
  mkDerivation
, aeson
, base
, containers
, generic-aeson
, generic-deriving
, mtl
, scientific
, stdenv
, text
, time
, unordered-containers
, vector
}:
mkDerivation {

pname = "json-schema";
version = "0.7.4.1";
sha256 = "560d6a17d6eab734f43d329e51967e3ed62f8df2a6fea4a92d06359fe77d7c96";
revision = "16";
editedCabalFile = "0mn7aj3rr4vpg99kcpvgq1qvdl28dx9yld2b9pb79wdva9x69c2h";
libraryHaskellDepends = [
aeson
base
containers
generic-aeson
generic-deriving
mtl
scientific
text
time
unordered-containers
vector
];
doHaddock = false;
doCheck = false;
description = "Types and type classes for defining JSON schemas";
license = stdenv.lib.licenses.bsd3;

}) {};
"json-stream" = callPackage
({
  mkDerivation
, aeson
, base
, bytestring
, scientific
, stdenv
, text
, unordered-containers
, vector
}:
mkDerivation {

pname = "json-stream";
version = "0.4.2.3";
sha256 = "875b4f25dd90975f56f5c1467037653b4855a52329d2218fffd3dfecb6615146";
libraryHaskellDepends = [
aeson
base
bytestring
scientific
text
unordered-containers
vector
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/ondrap/json-stream";
description = "Incremental applicative JSON parser";
license = stdenv.lib.licenses.bsd3;

}) {};
"justified-containers" = callPackage
({
  mkDerivation
, base
, containers
, roles
, stdenv
}:
mkDerivation {

pname = "justified-containers";
version = "0.3.0.0";
sha256 = "d830c0ccd036e98ec6bab2bd336bb0bd580ce0495dedf3bf2176bd8084733e87";
libraryHaskellDepends = [
base
containers
roles
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/matt-noonan/justified-containers";
description = "Keyed container types with type-checked proofs of key presence";
license = stdenv.lib.licenses.bsd2;

}) {};
"jvm" = callPackage
({
  mkDerivation
, base
, bytestring
, choice
, constraints
, distributed-closure
, exceptions
, jni
, singletons
, stdenv
, text
, vector
}:
mkDerivation {

pname = "jvm";
version = "0.4.2";
sha256 = "70f1d6ecec95fc31e633158fd3e467c92d9165f54e8c4de44211d6759c9874fc";
libraryHaskellDepends = [
base
bytestring
choice
constraints
distributed-closure
exceptions
jni
singletons
text
vector
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/tweag/inline-java/tree/master/jvm#readme";
description = "Call JVM methods from Haskell";
license = stdenv.lib.licenses.bsd3;

}) {};
"jvm-batching" = callPackage
({
  mkDerivation
, base
, bytestring
, Cabal
, distributed-closure
, inline-java
, jni
, jvm
, singletons
, stdenv
, text
, vector
}:
mkDerivation {

pname = "jvm-batching";
version = "0.1.1";
sha256 = "b837a1732970467aaa78489c4311a9c701abef87eccc523b9034a2b52f857d1b";
setupHaskellDepends = [
base
Cabal
inline-java
];
libraryHaskellDepends = [
base
bytestring
distributed-closure
inline-java
jni
jvm
singletons
text
vector
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/tweag/inline-java/tree/master/jvm-batching#readme";
description = "Provides batched marshalling of values between Java and Haskell";
license = stdenv.lib.licenses.bsd3;

}) {};
"jvm-streaming" = callPackage
({
  mkDerivation
, base
, Cabal
, distributed-closure
, inline-java
, jni
, jvm
, jvm-batching
, singletons
, stdenv
, streaming
, vector
}:
mkDerivation {

pname = "jvm-streaming";
version = "0.3.1";
sha256 = "8d1b7c7e9b142a0e80bb7540082ff3bec0505ce82ea1dcc1f8c277f60215f94d";
setupHaskellDepends = [
base
Cabal
inline-java
jvm-batching
];
libraryHaskellDepends = [
base
distributed-closure
inline-java
jni
jvm
jvm-batching
singletons
streaming
vector
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/tweag/inline-java/tree/master/jvm-streaming#readme";
description = "Expose Java iterators as streams from the streaming package";
license = stdenv.lib.licenses.bsd3;

}) {};
"jwt" = callPackage
({
  mkDerivation
, aeson
, base
, bytestring
, containers
, cryptonite
, data-default
, http-types
, memory
, network-uri
, scientific
, semigroups
, stdenv
, text
, time
, unordered-containers
, vector
}:
mkDerivation {

pname = "jwt";
version = "0.7.2";
sha256 = "17967413d21399596a236bc8169d9e030bb85e2b1c349c6e470543767cc20a31";
revision = "1";
editedCabalFile = "1q8h94yslw6k6zcjbwx94pnji8dcr2w5n1wzgzfb8hb78w2qr1dm";
libraryHaskellDepends = [
aeson
base
bytestring
containers
cryptonite
data-default
http-types
memory
network-uri
scientific
semigroups
text
time
unordered-containers
vector
];
doHaddock = false;
doCheck = false;
homepage = "https://bitbucket.org/ssaasen/haskell-jwt";
description = "JSON Web Token (JWT) decoding and encoding";
license = stdenv.lib.licenses.mit;

}) {};
"kan-extensions" = callPackage
({
  mkDerivation
, adjunctions
, array
, base
, comonad
, containers
, contravariant
, distributive
, fail
, free
, mtl
, profunctors
, semigroupoids
, stdenv
, tagged
, transformers
, transformers-compat
}:
mkDerivation {

pname = "kan-extensions";
version = "5.1";
sha256 = "193f8e58f267663d5da8e38045b000d0983ac08b84808de42af1a44963f63205";
revision = "1";
editedCabalFile = "1xaam291gxmsbibi2ai4l6c36iwkpmfy6vik1916j6jp326pa3z9";
libraryHaskellDepends = [
adjunctions
array
base
comonad
containers
contravariant
distributive
fail
free
mtl
profunctors
semigroupoids
tagged
transformers
transformers-compat
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/ekmett/kan-extensions/";
description = "Kan extensions, Kan lifts, the Yoneda lemma, and (co)density (co)monads";
license = stdenv.lib.licenses.bsd3;

}) {};
"kanji" = callPackage
({
  mkDerivation
, aeson
, aeson-pretty
, base
, containers
, deepseq
, hashable
, microlens
, microlens-aeson
, microlens-platform
, optparse-applicative
, protolude
, stdenv
, text
}:
mkDerivation {

pname = "kanji";
version = "3.1.0.1";
sha256 = "9213b0074bc44336dc77d1a3a1597497bdcd3bb6dd0ed570311cc5b13056b2e3";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
aeson
base
containers
deepseq
hashable
text
];
executableHaskellDepends = [
aeson
aeson-pretty
base
containers
microlens
microlens-aeson
microlens-platform
optparse-applicative
protolude
text
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/fosskers/kanji";
description = "Perform 漢字検定 (Japan Kanji Aptitude Test) level analysis on Japanese Kanji";
license = stdenv.lib.licenses.bsd3;

}) {};
"katydid" = callPackage
({
  mkDerivation
, base
, containers
, hxt
, json
, mtl
, parsec
, regex-tdfa
, stdenv
}:
mkDerivation {

pname = "katydid";
version = "0.1.1.0";
sha256 = "7c7bdea56f41bea000b1b0f0985e890e53529f85ed5fa6b2ff4af99ee76934c8";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
base
containers
hxt
json
mtl
parsec
regex-tdfa
];
executableHaskellDepends = [
base
mtl
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/katydid/katydid-haskell";
description = "A haskell implementation of Katydid";
license = stdenv.lib.licenses.bsd3;

}) {};
"kawhi" = callPackage
({
  mkDerivation
, aeson
, base
, bytestring
, exceptions
, http-client
, http-conduit
, http-types
, mtl
, safe
, scientific
, stdenv
, text
}:
mkDerivation {

pname = "kawhi";
version = "0.3.0";
sha256 = "2321387a3ddaa17c09db3a8e7a41a39f8e211467bd80bccd73791de8fca2a44f";
libraryHaskellDepends = [
aeson
base
bytestring
exceptions
http-client
http-conduit
http-types
mtl
safe
scientific
text
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/thunky-monk/kawhi";
description = "stats.NBA.com library";
license = stdenv.lib.licenses.mit;

}) {};
"kdt" = callPackage
({
  mkDerivation
, base
, deepseq
, deepseq-generics
, heap
, stdenv
}:
mkDerivation {

pname = "kdt";
version = "0.2.4";
sha256 = "bc0f8f9ac0cb01466273171f47b627abe170d1130bd59657fb9198b4f9479f9a";
libraryHaskellDepends = [
base
deepseq
deepseq-generics
heap
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/giogadi/kdt";
description = "Fast and flexible k-d trees for various types of point queries";
license = stdenv.lib.licenses.mit;

}) {};
"keycode" = callPackage
({
  mkDerivation
, base
, containers
, ghc-prim
, stdenv
, template-haskell
}:
mkDerivation {

pname = "keycode";
version = "0.2.2";
sha256 = "56f9407cf182b01e5f0fda80f569ff629f37d894f75ef28b6b8af3024343d310";
revision = "2";
editedCabalFile = "0g19sjk2sh1w9ahn93dnvjkim4mqapq0plmdd37179qfgi49qnp8";
libraryHaskellDepends = [
base
containers
ghc-prim
template-haskell
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/RyanGlScott/keycode";
description = "Maps web browser keycodes to their corresponding keyboard keys";
license = stdenv.lib.licenses.bsd3;

}) {};
"keys" = callPackage
({
  mkDerivation
, array
, base
, comonad
, containers
, free
, hashable
, semigroupoids
, semigroups
, stdenv
, tagged
, transformers
, transformers-compat
, unordered-containers
}:
mkDerivation {

pname = "keys";
version = "3.12";
sha256 = "d4bfa78ff9df50224f1722925ae148279377193d04277a7dad224a47b34d5e55";
revision = "2";
editedCabalFile = "0cy2fdxxqg0bgkb8xhnw6zws00d78bpk48xv7zzmvnj549l819ib";
libraryHaskellDepends = [
array
base
comonad
containers
free
hashable
semigroupoids
semigroups
tagged
transformers
transformers-compat
unordered-containers
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/ekmett/keys/";
description = "Keyed functors and containers";
license = stdenv.lib.licenses.bsd3;

}) {};
"kmeans" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "kmeans";
version = "0.1.3";
sha256 = "3d9e24a12ce01354c2a731ee079144c3bea2c9f011ffd51db82e5c26da1a2c0b";
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
description = "K-means clustering algorithm";
license = stdenv.lib.licenses.bsd3;

}) {};
"knob" = callPackage
({
  mkDerivation
, base
, bytestring
, stdenv
, transformers
}:
mkDerivation {

pname = "knob";
version = "0.1.1";
sha256 = "8c2c84cfa20f3a2d7ca0636d2b3f2822c62501358075bfa356eb964b803e1217";
libraryHaskellDepends = [
base
bytestring
transformers
];
doHaddock = false;
doCheck = false;
homepage = "https://john-millikin.com/software/knob/";
description = "Memory-backed handles";
license = stdenv.lib.licenses.mit;

}) {};
"koofr-client" = callPackage
({
  mkDerivation
, aeson
, base
, bytestring
, filepath
, http-client
, http-client-tls
, http-types
, mtl
, stdenv
}:
mkDerivation {

pname = "koofr-client";
version = "1.0.0.3";
sha256 = "2ab6f0af8be4f1912ad06ad860db993f9c33c8f0206f87ff0b566b7dda54e7af";
revision = "1";
editedCabalFile = "0qaipcg9n93z0za2a8jy3mv73a3q2b1dv98v2g5wwcv1qx7rvvhv";
libraryHaskellDepends = [
aeson
base
bytestring
filepath
http-client
http-client-tls
http-types
mtl
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/edofic/koofr-api-hs";
description = "Client to Koofr API";
license = stdenv.lib.licenses.mit;

}) {};
"kraken" = callPackage
({
  mkDerivation
, aeson
, base
, bytestring
, http-client
, http-client-tls
, mtl
, stdenv
}:
mkDerivation {

pname = "kraken";
version = "0.1.0";
sha256 = "335ce7cb85f7d3ed71eb067ad9642d13d2ca1d62ce8670596c8b69aacc27828a";
revision = "1";
editedCabalFile = "0ycdikk0mwy1ys9v29ybiws4fr59arwkpibdx62p9vpdv9f0p9k6";
libraryHaskellDepends = [
aeson
base
bytestring
http-client
http-client-tls
mtl
];
doHaddock = false;
doCheck = false;
description = "Kraken.io API client";
license = stdenv.lib.licenses.mit;

}) {};
"l10n" = callPackage
({
  mkDerivation
, base
, stdenv
, text
, time
}:
mkDerivation {

pname = "l10n";
version = "0.1.0.1";
sha256 = "0a7032476d257981eb7c274600bef809b4a515ab162a1772a7887f0113455ca0";
libraryHaskellDepends = [
base
text
time
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/louispan/l10n#readme";
description = "Enables providing localization as typeclass instances in separate files";
license = stdenv.lib.licenses.bsd3;

}) {};
"labels" = callPackage
({
  mkDerivation
, base
, stdenv
, template-haskell
}:
mkDerivation {

pname = "labels";
version = "0.3.3";
sha256 = "e6b4c02b5340c68b911fd2df157766260e06939ad2919f555339356613433013";
libraryHaskellDepends = [
base
template-haskell
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/chrisdone/labels#readme";
description = "Anonymous records via named tuples";
license = stdenv.lib.licenses.bsd3;

}) {};
"lackey" = callPackage
({
  mkDerivation
, base
, servant
, servant-foreign
, stdenv
, text
}:
mkDerivation {

pname = "lackey";
version = "1.0.2";
sha256 = "c4930a1ddf9d2d714a3b4fd4f15e898dbacbc647b9278450c0245ba0695bfb03";
libraryHaskellDepends = [
base
servant
servant-foreign
text
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/tfausak/lackey#readme";
description = "Generate Ruby clients from Servant APIs";
license = stdenv.lib.licenses.mit;

}) {};
"lambdabot-core" = callPackage
({
  mkDerivation
, base
, binary
, bytestring
, containers
, dependent-map
, dependent-sum
, dependent-sum-template
, directory
, edit-distance
, filepath
, haskeline
, hslogger
, HTTP
, lifted-base
, monad-control
, mtl
, network
, parsec
, prim-uniq
, random
, random-fu
, random-source
, regex-tdfa
, SafeSemaphore
, split
, stdenv
, syb
, template-haskell
, time
, transformers
, transformers-base
, unix
, utf8-string
, zlib
}:
mkDerivation {

pname = "lambdabot-core";
version = "5.1.0.1";
sha256 = "ebb542e189ce551c79e3d89f9a0c2898e545abb8c6bf19655b0ec8052cd28970";
libraryHaskellDepends = [
base
binary
bytestring
containers
dependent-map
dependent-sum
dependent-sum-template
directory
edit-distance
filepath
haskeline
hslogger
HTTP
lifted-base
monad-control
mtl
network
parsec
prim-uniq
random
random-fu
random-source
regex-tdfa
SafeSemaphore
split
syb
template-haskell
time
transformers
transformers-base
unix
utf8-string
zlib
];
doHaddock = false;
doCheck = false;
homepage = "https://wiki.haskell.org/Lambdabot";
description = "Lambdabot core functionality";
license = "GPL";

}) {};
"lambdabot-irc-plugins" = callPackage
({
  mkDerivation
, base
, bytestring
, containers
, directory
, filepath
, lambdabot-core
, lifted-base
, mtl
, network
, SafeSemaphore
, split
, stdenv
, time
}:
mkDerivation {

pname = "lambdabot-irc-plugins";
version = "5.1.0.1";
sha256 = "4e50f2430da752ac36e23cf87ce5b2db9e42cf2e76b48447d2fbc882cdeab1ab";
libraryHaskellDepends = [
base
bytestring
containers
directory
filepath
lambdabot-core
lifted-base
mtl
network
SafeSemaphore
split
time
];
doHaddock = false;
doCheck = false;
homepage = "https://wiki.haskell.org/Lambdabot";
description = "IRC plugins for lambdabot";
license = "GPL";

}) {};
"lame" = callPackage
({
  mkDerivation
, base
, bytestring
, data-default-class
, directory
, exceptions
, filepath
, mp3lame
, stdenv
, text
, transformers
, wave
}:
mkDerivation {

pname = "lame";
version = "0.1.1";
sha256 = "b36009a35c02f7f18b4ba91d9ead7e5b47aef4eb5c0d014d4d60dd0bddfd6548";
revision = "4";
editedCabalFile = "0r364limqm570a8xd82wwpcvmcx2j7nfndg5kad022vz2v5n0smz";
enableSeparateDataOutput = true;
libraryHaskellDepends = [
base
bytestring
data-default-class
directory
exceptions
filepath
text
transformers
wave
];
librarySystemDepends = [
mp3lame
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/mrkkrp/lame";
description = "Fairly complete high-level binding to LAME encoder";
license = stdenv.lib.licenses.bsd3;

}) {inherit (pkgs) mp3lame;};
"language-c" = callPackage
({
  mkDerivation
, alex
, array
, base
, bytestring
, containers
, directory
, filepath
, happy
, pretty
, process
, stdenv
, syb
}:
mkDerivation {

pname = "language-c";
version = "0.7.2";
sha256 = "63ad22ddd8e51747c8d64239029cf4afd3e7d4060c9b9478145479f5d4d549e5";
libraryHaskellDepends = [
array
base
bytestring
containers
directory
filepath
pretty
process
syb
];
libraryToolDepends = [
alex
happy
];
doHaddock = false;
doCheck = false;
homepage = "http://visq.github.io/language-c/";
description = "Analysis and generation of C code";
license = stdenv.lib.licenses.bsd3;

}) {};
"language-c-quote" = callPackage
({
  mkDerivation
, alex
, array
, base
, bytestring
, containers
, exception-mtl
, exception-transformers
, filepath
, happy
, haskell-src-meta
, mainland-pretty
, mtl
, srcloc
, stdenv
, syb
, symbol
, template-haskell
}:
mkDerivation {

pname = "language-c-quote";
version = "0.12.1";
sha256 = "ec3537f5764068890b9e9a12ec94e42f33b9d0ae2549af7eb916d59457dd3584";
libraryHaskellDepends = [
array
base
bytestring
containers
exception-mtl
exception-transformers
filepath
haskell-src-meta
mainland-pretty
mtl
srcloc
syb
symbol
template-haskell
];
libraryToolDepends = [
alex
happy
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/mainland/language-c-quote";
description = "C/CUDA/OpenCL/Objective-C quasiquoting library";
license = stdenv.lib.licenses.bsd3;

}) {};
"language-docker" = callPackage
({
  mkDerivation
, aeson
, base
, bytestring
, directory
, filepath
, free
, Glob
, mtl
, parsec
, pretty
, semigroups
, split
, stdenv
, template-haskell
, text
, th-lift
, th-lift-instances
, time
, transformers
, unordered-containers
, yaml
}:
mkDerivation {

pname = "language-docker";
version = "2.0.1";
sha256 = "4c8375503b6559c850797a7a8f9be13cd3e11cde2db27e076c7f9e7cadc9a775";
libraryHaskellDepends = [
aeson
base
bytestring
directory
filepath
free
Glob
mtl
parsec
pretty
semigroups
split
template-haskell
text
th-lift
th-lift-instances
time
transformers
unordered-containers
yaml
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/hadolint/language-docker#readme";
description = "Dockerfile parser, pretty-printer and embedded DSL";
license = stdenv.lib.licenses.gpl3;

}) {};
"language-ecmascript" = callPackage
({
  mkDerivation
, base
, charset
, containers
, data-default-class
, Diff
, mtl
, parsec
, QuickCheck
, stdenv
, template-haskell
, testing-feat
, uniplate
, wl-pprint
}:
mkDerivation {

pname = "language-ecmascript";
version = "0.17.2.0";
sha256 = "14849fd90314ede96c790b9fe5b771a14695b10352991fb2e8678ed49311f6eb";
libraryHaskellDepends = [
base
charset
containers
data-default-class
Diff
mtl
parsec
QuickCheck
template-haskell
testing-feat
uniplate
wl-pprint
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/jswebtools/language-ecmascript";
description = "JavaScript parser and pretty-printer library";
license = stdenv.lib.licenses.bsd3;

}) {};
"language-fortran" = callPackage
({
  mkDerivation
, alex
, array
, base
, happy
, haskell-src
, parsec
, stdenv
, syb
}:
mkDerivation {

pname = "language-fortran";
version = "0.5.1";
sha256 = "44cd3f3e76dc627cce8f442dbaf4f1d54b1db633c313868c8ad1d5dbe16e7f9a";
libraryHaskellDepends = [
array
base
haskell-src
parsec
syb
];
libraryToolDepends = [
alex
happy
];
doHaddock = false;
doCheck = false;
description = "Fortran lexer and parser, language support, and extensions";
license = stdenv.lib.licenses.bsd3;

}) {};
"language-glsl" = callPackage
({
  mkDerivation
, base
, parsec
, prettyclass
, stdenv
}:
mkDerivation {

pname = "language-glsl";
version = "0.2.1";
sha256 = "0012116b0a164831906386205df7136bc8810bcf12ea766d300a108374a21922";
revision = "1";
editedCabalFile = "1dlax6dfjc8ca0p5an3k1f29b078hgb44aj48njf97shvl9hqf5v";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
base
parsec
prettyclass
];
executableHaskellDepends = [
base
parsec
prettyclass
];
doHaddock = false;
doCheck = false;
description = "GLSL abstract syntax tree, parser, and pretty-printer";
license = stdenv.lib.licenses.bsd3;

}) {};
"language-haskell-extract" = callPackage
({
  mkDerivation
, base
, regex-posix
, stdenv
, template-haskell
}:
mkDerivation {

pname = "language-haskell-extract";
version = "0.2.4";
sha256 = "14da16e56665bf971723e0c5fd06dbb7cc30b4918cf8fb5748570785ded1acdb";
libraryHaskellDepends = [
base
regex-posix
template-haskell
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/finnsson/template-helper";
description = "Module to automatically extract functions from the local code";
license = stdenv.lib.licenses.bsd3;

}) {};
"language-java" = callPackage
({
  mkDerivation
, alex
, array
, base
, parsec
, pretty
, stdenv
}:
mkDerivation {

pname = "language-java";
version = "0.2.9";
sha256 = "1d15c8ad2a1eff6b195ec1ed799b8523aeda1c183392b9b713bc4aff2092190e";
libraryHaskellDepends = [
array
base
parsec
pretty
];
libraryToolDepends = [
alex
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/vincenthz/language-java";
description = "Java source manipulation";
license = stdenv.lib.licenses.bsd3;

}) {};
"language-javascript" = callPackage
({
  mkDerivation
, alex
, array
, base
, blaze-builder
, bytestring
, containers
, happy
, mtl
, stdenv
, text
, utf8-string
}:
mkDerivation {

pname = "language-javascript";
version = "0.6.0.11";
sha256 = "d4756e9bc9a180cb93701e964a3157a03d4db4c7cb5a7b6b196067e587cc6143";
libraryHaskellDepends = [
array
base
blaze-builder
bytestring
containers
mtl
text
utf8-string
];
libraryToolDepends = [
alex
happy
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/erikd/language-javascript";
description = "Parser for JavaScript";
license = stdenv.lib.licenses.bsd3;

}) {};
"language-nix" = callPackage
({
  mkDerivation
, base
, base-compat
, Cabal
, deepseq
, lens
, pretty
, QuickCheck
, stdenv
}:
mkDerivation {

pname = "language-nix";
version = "2.1.0.1";
sha256 = "f0147300724ac39ce388cd6cd717ac3ccc6ed1884ffaafebb18d0f3021e01acf";
revision = "1";
editedCabalFile = "1zv12p4ralrks0517zs52rzmzmsxxkcxkqz7zijfgcsvh6bsmafi";
libraryHaskellDepends = [
base
base-compat
Cabal
deepseq
lens
pretty
QuickCheck
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/peti/language-nix#readme";
description = "Data types and useful functions to represent and manipulate the Nix language";
license = stdenv.lib.licenses.bsd3;

}) {};
"language-plutus-core" = callPackage
({
  mkDerivation
, alex
, array
, base
, bytestring
, composition-prelude
, containers
, criterion
, deepseq
, happy
, hedgehog
, microlens
, mtl
, prettyprinter
, recursion-schemes
, stdenv
, tasty
, tasty-golden
, tasty-hedgehog
, tasty-hunit
, text
, transformers
}:
mkDerivation {

pname = "language-plutus-core";
version = "0.1.0.0";
src = ./../language-plutus-core;
libraryHaskellDepends = [
array
base
bytestring
composition-prelude
containers
deepseq
microlens
mtl
prettyprinter
recursion-schemes
text
transformers
];
libraryToolDepends = [
alex
happy
];
testHaskellDepends = [
base
bytestring
hedgehog
prettyprinter
tasty
tasty-golden
tasty-hedgehog
tasty-hunit
text
];
benchmarkHaskellDepends = [
base
bytestring
criterion
];
doHaddock = false;
description = "Language library for Plutus Core";
license = stdenv.lib.licenses.bsd3;

}) {};
"language-puppet" = callPackage
({
  mkDerivation
, aeson
, ansi-wl-pprint
, attoparsec
, base
, base16-bytestring
, bytestring
, case-insensitive
, containers
, cryptonite
, directory
, exceptions
, filecache
, filepath
, formatting
, Glob
, hashable
, hruby
, hslogger
, hspec
, http-api-data
, http-client
, lens
, lens-aeson
, megaparsec
, memory
, mtl
, operational
, optparse-applicative
, parallel-io
, parsec
, pcre-utils
, process
, protolude
, random
, regex-pcre-builtin
, scientific
, servant
, servant-client
, split
, stdenv
, stm
, strict-base-types
, text
, time
, transformers
, unix
, unordered-containers
, vector
, yaml
}:
mkDerivation {

pname = "language-puppet";
version = "1.3.17";
sha256 = "b8a3bf806fddef136a749ae4428d75206003fa4c89683ff11e3f15ae607ee158";
isLibrary = true;
isExecutable = true;
enableSeparateDataOutput = true;
libraryHaskellDepends = [
aeson
ansi-wl-pprint
attoparsec
base
base16-bytestring
bytestring
case-insensitive
containers
cryptonite
directory
exceptions
filecache
filepath
formatting
hashable
hruby
hslogger
hspec
http-api-data
http-client
lens
lens-aeson
megaparsec
memory
mtl
operational
parsec
pcre-utils
process
protolude
random
regex-pcre-builtin
scientific
servant
servant-client
split
stm
strict-base-types
text
time
transformers
unix
unordered-containers
vector
yaml
];
executableHaskellDepends = [
aeson
ansi-wl-pprint
base
bytestring
containers
Glob
hslogger
http-client
lens
megaparsec
mtl
optparse-applicative
parallel-io
regex-pcre-builtin
strict-base-types
text
transformers
unordered-containers
vector
yaml
];
doHaddock = false;
doCheck = false;
homepage = "http://lpuppet.banquise.net/";
description = "Tools to parse and evaluate the Puppet DSL";
license = stdenv.lib.licenses.bsd3;

}) {};
"lapack-carray" = callPackage
({
  mkDerivation
, base
, carray
, lapack-ffi
, netlib-carray
, netlib-ffi
, stdenv
, storable-complex
, transformers
}:
mkDerivation {

pname = "lapack-carray";
version = "0.0.2";
sha256 = "ca3a3d99016b7428b3781142ca2ab96eb2ad3318257a3dedaa41f8c2e0aa24b7";
libraryHaskellDepends = [
base
carray
lapack-ffi
netlib-carray
netlib-ffi
storable-complex
transformers
];
doHaddock = false;
doCheck = false;
homepage = "http://hub.darcs.net/thielema/lapack-carray/";
description = "Auto-generated interface to Fortran LAPACK via CArrays";
license = stdenv.lib.licenses.bsd3;

}) {};
"lapack-ffi" = callPackage
({
  mkDerivation
, base
, liblapack
, netlib-ffi
, stdenv
}:
mkDerivation {

pname = "lapack-ffi";
version = "0.0.2";
sha256 = "d4b73268bb25244f0234ef4a8b4407818e244d297612a189c7f34fe0b64ae584";
libraryHaskellDepends = [
base
netlib-ffi
];
libraryPkgconfigDepends = [
liblapack
];
doHaddock = false;
doCheck = false;
homepage = "http://hub.darcs.net/thielema/lapack-ffi/";
description = "Auto-generated interface to Fortran LAPACK";
license = stdenv.lib.licenses.bsd3;

}) {inherit (pkgs) liblapack;};
"lapack-ffi-tools" = callPackage
({
  mkDerivation
, base
, bytestring
, cassava
, containers
, explicit-exception
, filepath
, non-empty
, optparse-applicative
, parsec
, pathtype
, stdenv
, transformers
, unordered-containers
, utility-ht
, vector
}:
mkDerivation {

pname = "lapack-ffi-tools";
version = "0.1.0.1";
sha256 = "7c9c500a04bd4c56b6d86f59498867a012b7c647c39538e4945a9c0a0d83ad31";
isLibrary = false;
isExecutable = true;
enableSeparateDataOutput = true;
executableHaskellDepends = [
base
bytestring
cassava
containers
explicit-exception
filepath
non-empty
optparse-applicative
parsec
pathtype
transformers
unordered-containers
utility-ht
vector
];
doHaddock = false;
doCheck = false;
homepage = "http://hub.darcs.net/thielema/lapack-ffi-tools/";
description = "Generator for Haskell interface to Fortran LAPACK";
license = stdenv.lib.licenses.bsd3;

}) {};
"large-hashable" = callPackage
({
  mkDerivation
, aeson
, base
, base16-bytestring
, bytes
, bytestring
, containers
, scientific
, stdenv
, strict
, template-haskell
, text
, time
, transformers
, unordered-containers
, utf8-light
, vector
, void
}:
mkDerivation {

pname = "large-hashable";
version = "0.1.0.4";
sha256 = "e9c3345d9fa0161f1b809f2c57e00b4c687ebd48ea42623fe480cc85339a628e";
libraryHaskellDepends = [
aeson
base
base16-bytestring
bytes
bytestring
containers
scientific
strict
template-haskell
text
time
transformers
unordered-containers
utf8-light
vector
void
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/factisresearch/large-hashable";
description = "Efficiently hash (large) Haskell values";
license = stdenv.lib.licenses.bsd3;

}) {};
"largeword" = callPackage
({
  mkDerivation
, base
, binary
, stdenv
}:
mkDerivation {

pname = "largeword";
version = "1.2.5";
sha256 = "00b3b06d846649bf404f52a725c88349a38bc8c810e16c99f3100c4e1e9d7d46";
libraryHaskellDepends = [
base
binary
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/idontgetoutmuch/largeword";
description = "Provides Word128, Word192 and Word256 and a way of producing other large words if required";
license = stdenv.lib.licenses.bsd3;

}) {};
"latex" = callPackage
({
  mkDerivation
, base
, containers
, stdenv
, utility-ht
}:
mkDerivation {

pname = "latex";
version = "0.1.0.3";
sha256 = "b742ff5c83f6019469e55d2f3559d8efbc7ce62607e5de76485a7cb314e636d2";
libraryHaskellDepends = [
base
containers
utility-ht
];
doHaddock = false;
doCheck = false;
homepage = "http://www.haskell.org/haskellwiki/LaTeX";
description = "Parse, format and process LaTeX files";
license = stdenv.lib.licenses.bsd3;

}) {};
"lattices" = callPackage
({
  mkDerivation
, base
, base-compat
, containers
, deepseq
, hashable
, semigroupoids
, stdenv
, tagged
, universe-base
, universe-reverse-instances
, unordered-containers
}:
mkDerivation {

pname = "lattices";
version = "1.7.1";
sha256 = "7d5450aec9cd1124c8d0e0d50c042319821a773aa52d694cb0e0abaf1a129b2d";
revision = "2";
editedCabalFile = "0ngxvs48hqdr5353fbblcrq5hqrwr89xl39akxg8rkridkr3hq96";
libraryHaskellDepends = [
base
base-compat
containers
deepseq
hashable
semigroupoids
tagged
universe-base
universe-reverse-instances
unordered-containers
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/phadej/lattices/";
description = "Fine-grained library for constructing and manipulating lattices";
license = stdenv.lib.licenses.bsd3;

}) {};
"lazyio" = callPackage
({
  mkDerivation
, base
, stdenv
, transformers
, unsafe
}:
mkDerivation {

pname = "lazyio";
version = "0.1.0.4";
sha256 = "8b54f0bccdc1c836393ce667ea0f1ad069d52c04762e61fad633d4d44916cf6c";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
base
transformers
unsafe
];
doHaddock = false;
doCheck = false;
homepage = "http://www.haskell.org/haskellwiki/Lazy_IO";
description = "Run IO actions lazily while respecting their order";
license = stdenv.lib.licenses.bsd3;

}) {};
"lca" = callPackage
({
  mkDerivation
, base
, Cabal
, cabal-doctest
, stdenv
}:
mkDerivation {

pname = "lca";
version = "0.3.1";
sha256 = "8a8d045ae00d82ddb491e873cc36f1ca89e91556a183c343b99f4df6abfe434e";
setupHaskellDepends = [
base
Cabal
cabal-doctest
];
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/ekmett/lca/";
description = "O(log n) persistent online lowest common ancestor search without preprocessing";
license = stdenv.lib.licenses.bsd3;

}) {};
"leancheck" = callPackage
({
  mkDerivation
, base
, stdenv
, template-haskell
}:
mkDerivation {

pname = "leancheck";
version = "0.7.0";
sha256 = "6e5c30ca628077921adb7195a68b01e7d9b00901b046124a7793af3c2077e6d7";
libraryHaskellDepends = [
base
template-haskell
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/rudymatela/leancheck#readme";
description = "Cholesterol-free property-based testing";
license = stdenv.lib.licenses.bsd3;

}) {};
"leapseconds-announced" = callPackage
({
  mkDerivation
, base
, stdenv
, time
}:
mkDerivation {

pname = "leapseconds-announced";
version = "2017.1.0.1";
sha256 = "cd3bb27caf704a975ef5718a9a8e641cd9cf9a9f2df27153f7cf80405292a8d6";
libraryHaskellDepends = [
base
time
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/bjornbm/leapseconds-announced";
description = "Leap seconds announced at library release time";
license = stdenv.lib.licenses.bsd3;

}) {};
"lens" = callPackage
({
  mkDerivation
, array
, base
, base-orphans
, bifunctors
, bytestring
, Cabal
, cabal-doctest
, call-stack
, comonad
, containers
, contravariant
, distributive
, exceptions
, filepath
, free
, ghc-prim
, hashable
, kan-extensions
, mtl
, parallel
, profunctors
, reflection
, semigroupoids
, semigroups
, stdenv
, tagged
, template-haskell
, text
, th-abstraction
, transformers
, transformers-compat
, unordered-containers
, vector
, void
}:
mkDerivation {

pname = "lens";
version = "4.16.1";
sha256 = "f5bec97b1d5cf3d6487afebc79b927bd5a18f1fd594b104de36a35bf606ea4c6";
revision = "1";
editedCabalFile = "12ycfzkc87fp787a5iq3k20mrfjd6b0r2d0dr7zscfd81sgw4shx";
setupHaskellDepends = [
base
Cabal
cabal-doctest
filepath
];
libraryHaskellDepends = [
array
base
base-orphans
bifunctors
bytestring
call-stack
comonad
containers
contravariant
distributive
exceptions
filepath
free
ghc-prim
hashable
kan-extensions
mtl
parallel
profunctors
reflection
semigroupoids
semigroups
tagged
template-haskell
text
th-abstraction
transformers
transformers-compat
unordered-containers
vector
void
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/ekmett/lens/";
description = "Lenses, Folds and Traversals";
license = stdenv.lib.licenses.bsd2;

}) {};
"lens-accelerate" = callPackage
({
  mkDerivation
, accelerate
, base
, lens
, stdenv
}:
mkDerivation {

pname = "lens-accelerate";
version = "0.1.0.0";
sha256 = "e4a736962342c116960425a32a17f4eaccc03bf583c09d2a619779deee5c9548";
revision = "2";
editedCabalFile = "1yk1zjwp7sabh90rgz4sa15vqj1wq837nypqjb0qhymslmrnvvnl";
libraryHaskellDepends = [
accelerate
base
lens
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/tmcdonell/lens-accelerate";
description = "Instances to mix lens with accelerate";
license = stdenv.lib.licenses.bsd3;

}) {};
"lens-action" = callPackage
({
  mkDerivation
, base
, Cabal
, cabal-doctest
, comonad
, contravariant
, lens
, mtl
, profunctors
, semigroupoids
, semigroups
, stdenv
, transformers
}:
mkDerivation {

pname = "lens-action";
version = "0.2.3";
sha256 = "06848a6c7f217c3dd3228633bedc9a73b2cce139c1a6dff61af0994d410a98e0";
setupHaskellDepends = [
base
Cabal
cabal-doctest
];
libraryHaskellDepends = [
base
comonad
contravariant
lens
mtl
profunctors
semigroupoids
semigroups
transformers
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/ekmett/lens-action/";
description = "Monadic Getters and Folds";
license = stdenv.lib.licenses.bsd3;

}) {};
"lens-aeson" = callPackage
({
  mkDerivation
, aeson
, attoparsec
, base
, bytestring
, Cabal
, cabal-doctest
, lens
, scientific
, stdenv
, text
, unordered-containers
, vector
}:
mkDerivation {

pname = "lens-aeson";
version = "1.0.2";
sha256 = "4311f035caa39db3a70915a165bcbfb55ad22376085d95a9b4f57c58994702cc";
revision = "6";
editedCabalFile = "1pg5v8fnlqw1krgi3d2a03a0zkjjdv5yp5f5z6q4mlb5jldz99a8";
setupHaskellDepends = [
base
Cabal
cabal-doctest
];
libraryHaskellDepends = [
aeson
attoparsec
base
bytestring
lens
scientific
text
unordered-containers
vector
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/lens/lens-aeson/";
description = "Law-abiding lenses for aeson";
license = stdenv.lib.licenses.mit;

}) {};
"lens-datetime" = callPackage
({
  mkDerivation
, base
, lens
, stdenv
, time
}:
mkDerivation {

pname = "lens-datetime";
version = "0.3";
sha256 = "bb1f8d7bf71c9ef8901bc39e2a2d629b1101307115c0c4d844fcbd8e86b6ccd4";
libraryHaskellDepends = [
base
lens
time
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/nilcons/lens-datetime";
description = "Lenses for Data.Time.* types";
license = stdenv.lib.licenses.bsd3;

}) {};
"lens-family" = callPackage
({
  mkDerivation
, base
, containers
, lens-family-core
, mtl
, stdenv
, transformers
}:
mkDerivation {

pname = "lens-family";
version = "1.2.2";
sha256 = "dda24de579550daa56c49d2d4fbe59deac18e5fbcbbe6a9b0196ba0a1b27433b";
libraryHaskellDepends = [
base
containers
lens-family-core
mtl
transformers
];
doHaddock = false;
doCheck = false;
description = "Lens Families";
license = stdenv.lib.licenses.bsd3;

}) {};
"lens-family-core" = callPackage
({
  mkDerivation
, base
, containers
, stdenv
, transformers
}:
mkDerivation {

pname = "lens-family-core";
version = "1.2.2";
sha256 = "95fe891b61f2d2a7c9ff86f56e40866534a947f87ccf2fcaa5e727ccdfca4628";
libraryHaskellDepends = [
base
containers
transformers
];
doHaddock = false;
doCheck = false;
description = "Haskell 98 Lens Families";
license = stdenv.lib.licenses.bsd3;

}) {};
"lens-family-th" = callPackage
({
  mkDerivation
, base
, stdenv
, template-haskell
}:
mkDerivation {

pname = "lens-family-th";
version = "0.5.0.1";
sha256 = "fa37572374dc69fc859c023864654704d490160b579a51434ae22208cbe93703";
revision = "1";
editedCabalFile = "190jxqskd61irc97zb95h08zlkszlhpik4zmb7y4vk7x06zz00m6";
libraryHaskellDepends = [
base
template-haskell
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/DanBurton/lens-family-th#readme";
description = "Generate lens-family style lenses";
license = stdenv.lib.licenses.bsd3;

}) {};
"lens-labels" = callPackage
({
  mkDerivation
, base
, ghc-prim
, stdenv
}:
mkDerivation {

pname = "lens-labels";
version = "0.1.0.2";
sha256 = "01ef26c8a59e720d8dff21658cffac91f1b6535b2e9defb25cfe81262d6efc86";
libraryHaskellDepends = [
base
ghc-prim
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/google/proto-lens";
description = "Integration of lenses with OverloadedLabels";
license = stdenv.lib.licenses.bsd3;

}) {};
"lens-properties" = callPackage
({
  mkDerivation
, base
, lens
, QuickCheck
, stdenv
, transformers
}:
mkDerivation {

pname = "lens-properties";
version = "4.11.1";
sha256 = "4f7c5b75a7204c151dbe62160a6917a22ab9e2a1b2e3848b7043d972ac8f4cb1";
revision = "1";
editedCabalFile = "1b9db7dbfq46q63y6w1471nffj77rb363rk4b1l3l23g15cq6a5i";
libraryHaskellDepends = [
base
lens
QuickCheck
transformers
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/ekmett/lens/";
description = "QuickCheck properties for lens";
license = stdenv.lib.licenses.bsd3;

}) {};
"lens-regex" = callPackage
({
  mkDerivation
, array
, base
, lens
, regex-base
, stdenv
, template-haskell
}:
mkDerivation {

pname = "lens-regex";
version = "0.1.0";
sha256 = "4954b3ae395661e916c536bfe837c42a1cd8223ea81ffd86b1fdd9b6abfc5142";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
array
base
lens
regex-base
template-haskell
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/himura/lens-regex";
description = "Lens powered regular expression";
license = stdenv.lib.licenses.bsd3;

}) {};
"lens-simple" = callPackage
({
  mkDerivation
, base
, lens-family
, lens-family-core
, lens-family-th
, mtl
, stdenv
, transformers
}:
mkDerivation {

pname = "lens-simple";
version = "0.1.0.9";
sha256 = "613d99b8074197f8a026a641a9940dd188e0d81e808169f420981a9ca15b832a";
libraryHaskellDepends = [
base
lens-family
lens-family-core
lens-family-th
mtl
transformers
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/michaelt/lens-simple";
description = "simplified import of elementary lens-family combinators";
license = stdenv.lib.licenses.bsd3;

}) {};
"lentil" = callPackage
({
  mkDerivation
, ansi-wl-pprint
, base
, csv
, directory
, filemanip
, filepath
, natural-sort
, optparse-applicative
, parsec
, pipes
, regex-tdfa
, semigroups
, stdenv
, terminal-progress-bar
, text
, transformers
}:
mkDerivation {

pname = "lentil";
version = "1.0.11.3";
sha256 = "43044f010cc4a9f76a6f2ac7b2b9c079a3aadec30b6eb848ba5383cd9a77694d";
isLibrary = false;
isExecutable = true;
executableHaskellDepends = [
ansi-wl-pprint
base
csv
directory
filemanip
filepath
natural-sort
optparse-applicative
parsec
pipes
regex-tdfa
semigroups
terminal-progress-bar
text
transformers
];
doHaddock = false;
doCheck = false;
homepage = "http://www.ariis.it/static/articles/lentil/page.html";
description = "frugal issue tracker";
license = stdenv.lib.licenses.gpl3;

}) {};
"leveldb-haskell" = callPackage
({
  mkDerivation
, base
, bytestring
, data-default
, exceptions
, filepath
, leveldb
, resourcet
, stdenv
, transformers
}:
mkDerivation {

pname = "leveldb-haskell";
version = "0.6.5";
sha256 = "a417b088068deba73a77936c1345302bac7ce06019fb10254857cafad1d76c28";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
base
bytestring
data-default
exceptions
filepath
resourcet
transformers
];
librarySystemDepends = [
leveldb
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/kim/leveldb-haskell";
description = "Haskell bindings to LevelDB";
license = stdenv.lib.licenses.bsd3;

}) {inherit (pkgs) leveldb;};
"lexer-applicative" = callPackage
({
  mkDerivation
, base
, regex-applicative
, srcloc
, stdenv
}:
mkDerivation {

pname = "lexer-applicative";
version = "2.1.0.1";
sha256 = "3e9612800e7d70f997e0d3396628b91133568b9e85e2c160834d1eb96acca49c";
libraryHaskellDepends = [
base
regex-applicative
srcloc
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/feuerbach/lexer-applicative";
description = "Simple lexer based on applicative regular expressions";
license = stdenv.lib.licenses.mit;

}) {};
"libffi" = callPackage
({
  mkDerivation
, base
, bytestring
, ffi
, libffi
, stdenv
}:
mkDerivation {

pname = "libffi";
version = "0.1";
sha256 = "48387067c0f33bcfadf7a3bebbf48a55294202500f2b754229ffc8f12cb4f23c";
libraryHaskellDepends = [
base
bytestring
];
librarySystemDepends = [
ffi
];
libraryPkgconfigDepends = [
libffi
];
doHaddock = false;
doCheck = false;
description = "A binding to libffi";
license = stdenv.lib.licenses.bsd3;

}) {inherit (pkgs) ffi; inherit (pkgs) libffi;};
"libgit" = callPackage
({
  mkDerivation
, base
, mtl
, process
, stdenv
}:
mkDerivation {

pname = "libgit";
version = "0.3.1";
sha256 = "1d4c60dd987c363d77c4be947678d01a51ab4b568964c30a33827ccc854f7522";
libraryHaskellDepends = [
base
mtl
process
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/vincenthz/hs-libgit";
description = "Simple Git Wrapper";
license = stdenv.lib.licenses.bsd3;

}) {};
"libgraph" = callPackage
({
  mkDerivation
, array
, base
, containers
, monads-tf
, process
, stdenv
, union-find
}:
mkDerivation {

pname = "libgraph";
version = "1.14";
sha256 = "b7978be50d6182101ca79fb3ea83d0621f5394d483d1fa1eb7d590e45f8d3f3f";
libraryHaskellDepends = [
array
base
containers
monads-tf
process
union-find
];
doHaddock = false;
doCheck = false;
homepage = "http://maartenfaddegon.nl";
description = "Store and manipulate data in a graph";
license = stdenv.lib.licenses.bsd3;

}) {};
"libinfluxdb" = callPackage
({
  mkDerivation
, base
, bytestring
, clock
, containers
, http-client
, http-client-tls
, http-types
, resource-pool
, stdenv
, stm
, text
}:
mkDerivation {

pname = "libinfluxdb";
version = "0.0.4";
sha256 = "25b5bbc274c9e18bc46ea0271805adfcaaec6d46caa69eb465e0cbc03f63ef3f";
revision = "1";
editedCabalFile = "17ddlql04hgah7pr0zi8zvpza17ig7a0m27wr2c47gdzy7k0nr2v";
libraryHaskellDepends = [
base
bytestring
clock
containers
http-client
http-client-tls
http-types
resource-pool
stm
text
];
doHaddock = false;
doCheck = false;
description = "libinfluxdb";
license = stdenv.lib.licenses.mit;

}) {};
"libmpd" = callPackage
({
  mkDerivation
, attoparsec
, base
, bytestring
, containers
, data-default-class
, filepath
, mtl
, network
, old-locale
, stdenv
, text
, time
, utf8-string
}:
mkDerivation {

pname = "libmpd";
version = "0.9.0.8";
sha256 = "582b0a405e39148d3a5046e8ad00c9e217688e60c70393eb36cd651e1991ed4e";
libraryHaskellDepends = [
attoparsec
base
bytestring
containers
data-default-class
filepath
mtl
network
old-locale
text
time
utf8-string
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/vimus/libmpd-haskell#readme";
description = "An MPD client library";
license = stdenv.lib.licenses.mit;

}) {};
"liboath-hs" = callPackage
({
  mkDerivation
, base
, bytestring
, inline-c
, liboath
, oath
, safe-exceptions
, stdenv
, time
}:
mkDerivation {

pname = "liboath-hs";
version = "0.0.1.0";
sha256 = "cf2a2763d43b59747e2e35429fa4f5f09af803c4744a8aaec924d27240caafb2";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
base
bytestring
inline-c
safe-exceptions
time
];
librarySystemDepends = [
oath
];
libraryPkgconfigDepends = [
liboath
];
executableHaskellDepends = [
base
bytestring
time
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/parsonsmatt/liboath-hs#readme";
description = "Bindings to liboath";
license = stdenv.lib.licenses.gpl3;

}) {inherit (pkgs) liboath; inherit (pkgs) oath;};
"libsystemd-journal" = callPackage
({
  mkDerivation
, base
, bytestring
, hashable
, hsyslog
, pipes
, pipes-safe
, semigroups
, stdenv
, systemd
, text
, transformers
, uniplate
, unix-bytestring
, unordered-containers
, uuid
, vector
}:
mkDerivation {

pname = "libsystemd-journal";
version = "1.4.3";
sha256 = "586d7cae7b02ba6be8fdb7f99b128a8a1ca8fb77c8e3c069ca1ee7f71d70e9d8";
libraryHaskellDepends = [
base
bytestring
hashable
hsyslog
pipes
pipes-safe
semigroups
text
transformers
uniplate
unix-bytestring
unordered-containers
uuid
vector
];
libraryPkgconfigDepends = [
systemd
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/ocharles/libsystemd-journal";
description = "Haskell bindings to libsystemd-journal";
license = stdenv.lib.licenses.bsd3;

}) {inherit (pkgs) systemd;};
"libxml-sax" = callPackage
({
  mkDerivation
, base
, bytestring
, libxml2
, stdenv
, text
, xml-types
}:
mkDerivation {

pname = "libxml-sax";
version = "0.7.5";
sha256 = "99141784cc0d6c5749f0df618b2d46922391eede09f4f9ccfc36fb58a9c16d51";
libraryHaskellDepends = [
base
bytestring
text
xml-types
];
librarySystemDepends = [
libxml2
];
libraryPkgconfigDepends = [
libxml2
];
doHaddock = false;
doCheck = false;
homepage = "https://john-millikin.com/software/haskell-libxml/";
description = "Bindings for the libXML2 SAX interface";
license = stdenv.lib.licenses.mit;

}) {inherit (pkgs) libxml2;};
"licensor" = callPackage
({
  mkDerivation
, base
, bytestring
, Cabal
, cmdargs
, containers
, directory
, http-conduit
, process
, stdenv
}:
mkDerivation {

pname = "licensor";
version = "0.2.2";
sha256 = "9f7e0d24279553b79af2152d04f652d0f569ce67dc2e58f5550827dd02d7ac4f";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
base
bytestring
Cabal
containers
directory
http-conduit
process
];
executableHaskellDepends = [
base
Cabal
cmdargs
containers
directory
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/jpvillaisaza/licensor";
description = "A license compatibility helper";
license = stdenv.lib.licenses.mit;

}) {};
"lift-generics" = callPackage
({
  mkDerivation
, base
, generic-deriving
, ghc-prim
, stdenv
, template-haskell
}:
mkDerivation {

pname = "lift-generics";
version = "0.1.2";
sha256 = "0e9fbd17cd3e1af6ef1e994e7c14cfd42896e56499864e707f72246b6e2b604e";
revision = "1";
editedCabalFile = "02hg33ikmwl81zsw8fgppix740rdc3h8fv6nr9b9h37vizhs50zw";
libraryHaskellDepends = [
base
generic-deriving
ghc-prim
template-haskell
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/RyanGlScott/lift-generics";
description = "GHC.Generics-based Language.Haskell.TH.Syntax.lift implementation";
license = stdenv.lib.licenses.bsd3;

}) {};
"lifted-async" = callPackage
({
  mkDerivation
, async
, base
, constraints
, lifted-base
, monad-control
, stdenv
, transformers-base
}:
mkDerivation {

pname = "lifted-async";
version = "0.9.3.3";
sha256 = "ae37d9cab3dd21aa65e4722c5268585d2d555fea1e8870920e7e567160240dbf";
libraryHaskellDepends = [
async
base
constraints
lifted-base
monad-control
transformers-base
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/maoe/lifted-async";
description = "Run lifted IO operations asynchronously and wait for their results";
license = stdenv.lib.licenses.bsd3;

}) {};
"lifted-base" = callPackage
({
  mkDerivation
, base
, monad-control
, stdenv
, transformers-base
}:
mkDerivation {

pname = "lifted-base";
version = "0.2.3.12";
sha256 = "c134a95f56750aae806e38957bb03c59627cda16034af9e00a02b699474317c5";
libraryHaskellDepends = [
base
monad-control
transformers-base
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/basvandijk/lifted-base";
description = "lifted IO operations from the base library";
license = stdenv.lib.licenses.bsd3;

}) {};
"line" = callPackage
({
  mkDerivation
, aeson
, base
, base64-bytestring
, bytestring
, cryptohash-sha256
, http-conduit
, http-types
, scotty
, stdenv
, text
, time
, transformers
, wai
}:
mkDerivation {

pname = "line";
version = "4.0.1";
sha256 = "a1dfab5dcd078747920fc61a024eb096a554f465d57c8bc642c155150f41667c";
libraryHaskellDepends = [
aeson
base
base64-bytestring
bytestring
cryptohash-sha256
http-conduit
http-types
scotty
text
time
transformers
wai
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/utatti/line";
description = "Haskell SDK for the LINE API";
license = stdenv.lib.licenses.bsd3;

}) {};
"linear" = callPackage
({
  mkDerivation
, adjunctions
, base
, base-orphans
, binary
, bytes
, Cabal
, cabal-doctest
, cereal
, containers
, deepseq
, distributive
, ghc-prim
, hashable
, lens
, reflection
, semigroupoids
, semigroups
, stdenv
, tagged
, template-haskell
, transformers
, transformers-compat
, unordered-containers
, vector
, void
}:
mkDerivation {

pname = "linear";
version = "1.20.7";
sha256 = "4b88b6268d327220a296b6790c82db8ebab52973735af0a9de1c734cdc07cab6";
revision = "5";
editedCabalFile = "0m67chpgxwakx62n22555nr2ii1hvspqcypjdwib9c1jrpg3ss95";
setupHaskellDepends = [
base
Cabal
cabal-doctest
];
libraryHaskellDepends = [
adjunctions
base
base-orphans
binary
bytes
cereal
containers
deepseq
distributive
ghc-prim
hashable
lens
reflection
semigroupoids
semigroups
tagged
template-haskell
transformers
transformers-compat
unordered-containers
vector
void
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/ekmett/linear/";
description = "Linear Algebra";
license = stdenv.lib.licenses.bsd3;

}) {};
"linear-accelerate" = callPackage
({
  mkDerivation
, accelerate
, base
, Cabal
, cabal-doctest
, distributive
, lens
, linear
, stdenv
}:
mkDerivation {

pname = "linear-accelerate";
version = "0.5.0.1";
sha256 = "3444712b29b06f8412d1f34fbe4252f81e4d3704e546e7b914fb2232be810b4e";
revision = "2";
editedCabalFile = "0b7amkafmf82q6a8q49q6n3v33xs16n5h6y005jva5bhpxkmn26w";
setupHaskellDepends = [
base
Cabal
cabal-doctest
];
libraryHaskellDepends = [
accelerate
base
distributive
lens
linear
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/ekmett/linear-accelerate/";
description = "Lifting linear vector spaces into Accelerate";
license = stdenv.lib.licenses.bsd3;

}) {};
"linked-list-with-iterator" = callPackage
({
  mkDerivation
, base
, containers
, stdenv
}:
mkDerivation {

pname = "linked-list-with-iterator";
version = "0.1.1.0";
sha256 = "c6ae37cc9d123afcb92f28fef9c5dae6d3713489bdf7f73ac9af420bb3f11b89";
libraryHaskellDepends = [
base
containers
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/CindyLinz/Haskell-linked-list-with-iterator#readme";
description = "A pure linked list which is mutable through iterators";
license = stdenv.lib.licenses.bsd3;

}) {};
"linux-file-extents" = callPackage
({
  mkDerivation
, base
, stdenv
, unix
}:
mkDerivation {

pname = "linux-file-extents";
version = "0.2.0.0";
sha256 = "6c7cd9e700f666f774736d31a0e6aa7bfe9bd1e075c11eed701ba95095fd9bd0";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
base
unix
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/redneb/linux-file-extents";
description = "Retrieve file fragmentation information under Linux";
license = stdenv.lib.licenses.bsd3;

}) {};
"linux-namespaces" = callPackage
({
  mkDerivation
, base
, stdenv
, unix
}:
mkDerivation {

pname = "linux-namespaces";
version = "0.1.2.0";
sha256 = "585c69130dfcc499cfba00385ae7facc8ab9f2c26bdf746a6e25fc96d3b5f67b";
libraryHaskellDepends = [
base
unix
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/redneb/hs-linux-namespaces";
description = "Create new or enter an existing linux namespaces";
license = stdenv.lib.licenses.bsd3;

}) {};
"list-t" = callPackage
({
  mkDerivation
, base
, mmorph
, monad-control
, mtl
, stdenv
, transformers
, transformers-base
}:
mkDerivation {

pname = "list-t";
version = "1.0.1";
sha256 = "c3438dde9d22e882ccdad091eb9c6f95706e9d564a57d5f845e991e706436773";
libraryHaskellDepends = [
base
mmorph
monad-control
mtl
transformers
transformers-base
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/nikita-volkov/list-t";
description = "ListT done right";
license = stdenv.lib.licenses.mit;

}) {};
"listsafe" = callPackage
({
  mkDerivation
, base
, exceptions
, stdenv
}:
mkDerivation {

pname = "listsafe";
version = "0.1.0.1";
sha256 = "1a073247edfbea7dd7b7f9629fc64ddd3bce67fa61695da23ff43fb31d398d69";
libraryHaskellDepends = [
base
exceptions
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/ombocomp/listsafe";
description = "Safe wrappers for partial list functions, supporting MonadThrow";
license = stdenv.lib.licenses.asl20;

}) {};
"llvm-hs" = callPackage
({
  mkDerivation
, array
, attoparsec
, base
, bytestring
, Cabal
, containers
, exceptions
, llvm-config
, llvm-hs-pure
, mtl
, stdenv
, template-haskell
, transformers
, utf8-string
}:
mkDerivation {

pname = "llvm-hs";
version = "5.1.3";
sha256 = "ccdac4683f56135ba83ed0883231f686d1784e9bc7f072a34fcf041e0661976b";
revision = "1";
editedCabalFile = "0r8xgz6r2miw1l3az343jwz8f9jgzqywxnzl2xhanv05g3i462yh";
setupHaskellDepends = [
base
Cabal
containers
];
libraryHaskellDepends = [
array
attoparsec
base
bytestring
containers
exceptions
llvm-hs-pure
mtl
template-haskell
transformers
utf8-string
];
libraryToolDepends = [
llvm-config
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/llvm-hs/llvm-hs/";
description = "General purpose LLVM bindings";
license = stdenv.lib.licenses.bsd3;

}) {};
"llvm-hs-pure" = callPackage
({
  mkDerivation
, attoparsec
, base
, bytestring
, containers
, fail
, mtl
, stdenv
, template-haskell
, transformers
, unordered-containers
}:
mkDerivation {

pname = "llvm-hs-pure";
version = "5.1.2";
sha256 = "c4d0993aacda72107e6d34865421f128b8c27b586b95a68e2a3e94700645d954";
libraryHaskellDepends = [
attoparsec
base
bytestring
containers
fail
mtl
template-haskell
transformers
unordered-containers
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/llvm-hs/llvm-hs/";
description = "Pure Haskell LLVM functionality (no FFI)";
license = stdenv.lib.licenses.bsd3;

}) {};
"lmdb" = callPackage
({
  mkDerivation
, array
, base
, lmdb
, stdenv
}:
mkDerivation {

pname = "lmdb";
version = "0.2.5";
sha256 = "80552856211cdce06b808685d621bdd9c33a5ac5540a4dafe120c6b20c901c7d";
libraryHaskellDepends = [
array
base
];
librarySystemDepends = [
lmdb
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/dmbarbour/haskell-lmdb";
description = "Lightning MDB bindings";
license = stdenv.lib.licenses.bsd2;

}) {inherit (pkgs) lmdb;};
"load-env" = callPackage
({
  mkDerivation
, base
, directory
, parsec
, stdenv
}:
mkDerivation {

pname = "load-env";
version = "0.1.2";
sha256 = "062cdaed7fc6d8958b60de1e0e7192896981fe231b0f397c0e3c998489aebdb4";
libraryHaskellDepends = [
base
directory
parsec
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/pbrisbin/load-env#readme";
description = "Load environment variables from a file";
license = stdenv.lib.licenses.bsd3;

}) {};
"loch-th" = callPackage
({
  mkDerivation
, base
, pretty
, stdenv
, template-haskell
}:
mkDerivation {

pname = "loch-th";
version = "0.2.2";
sha256 = "cc059372b12a79375a0f268db7dc5a2973307a200440d4112e665b9a3d9b6dc3";
libraryHaskellDepends = [
base
pretty
template-haskell
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/liskin/loch-th";
description = "Support for precise error locations in source files (Template Haskell version)";
license = stdenv.lib.licenses.bsd3;

}) {};
"lockfree-queue" = callPackage
({
  mkDerivation
, abstract-deque
, atomic-primops
, base
, bytestring
, ghc-prim
, stdenv
}:
mkDerivation {

pname = "lockfree-queue";
version = "0.2.3.1";
sha256 = "2a576a54bae8eabde01ebe901c9fd26a11bebb30516841de4525b5b60c0f3a8c";
libraryHaskellDepends = [
abstract-deque
atomic-primops
base
bytestring
ghc-prim
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/rrnewton/haskell-lockfree/wiki";
description = "Michael and Scott lock-free queues";
license = stdenv.lib.licenses.bsd3;

}) {};
"log" = callPackage
({
  mkDerivation
, base
, log-base
, log-elasticsearch
, log-postgres
, stdenv
}:
mkDerivation {

pname = "log";
version = "0.9.0.1";
sha256 = "c32bd5eabc0f37d0a410aac44bda615f2c880bb39358fb0283e26021411c50be";
libraryHaskellDepends = [
base
log-base
log-elasticsearch
log-postgres
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/scrive/log";
description = "Structured logging solution with multiple backends";
license = stdenv.lib.licenses.bsd3;

}) {};
"log-base" = callPackage
({
  mkDerivation
, aeson
, aeson-pretty
, base
, bytestring
, deepseq
, exceptions
, mmorph
, monad-control
, monad-time
, mtl
, semigroups
, stdenv
, stm
, text
, time
, transformers-base
, unordered-containers
}:
mkDerivation {

pname = "log-base";
version = "0.7.4.0";
sha256 = "4067eba80db49eb4509c10770959d0350f9eb9df5e0bde2fbf9024f106dc3f1b";
libraryHaskellDepends = [
aeson
aeson-pretty
base
bytestring
deepseq
exceptions
mmorph
monad-control
monad-time
mtl
semigroups
stm
text
time
transformers-base
unordered-containers
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/scrive/log";
description = "Structured logging solution (base package)";
license = stdenv.lib.licenses.bsd3;

}) {};
"log-domain" = callPackage
({
  mkDerivation
, base
, binary
, bytes
, Cabal
, cabal-doctest
, cereal
, comonad
, deepseq
, distributive
, hashable
, semigroupoids
, semigroups
, stdenv
, vector
}:
mkDerivation {

pname = "log-domain";
version = "0.12";
sha256 = "7191cba40b9b348c54171f2b86caabb75a30e52b6d7e4c57321bf5dcdf1f367e";
revision = "3";
editedCabalFile = "19xc24jwfhzy3v26689sc4ma50w4ylqd378dpxphl0nrxili645z";
setupHaskellDepends = [
base
Cabal
cabal-doctest
];
libraryHaskellDepends = [
base
binary
bytes
cereal
comonad
deepseq
distributive
hashable
semigroupoids
semigroups
vector
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/ekmett/log-domain/";
description = "Log-domain arithmetic";
license = stdenv.lib.licenses.bsd3;

}) {};
"log-elasticsearch" = callPackage
({
  mkDerivation
, aeson
, aeson-pretty
, base
, base64-bytestring
, bloodhound
, bytestring
, deepseq
, http-client
, http-client-tls
, log-base
, semigroups
, stdenv
, text
, text-show
, time
, transformers
, unordered-containers
, vector
}:
mkDerivation {

pname = "log-elasticsearch";
version = "0.9.1.0";
sha256 = "a5a6ecae199afc03ce20b58af6c11f10cb16cfd3b1dc347d52bc881760bbd544";
revision = "2";
editedCabalFile = "11c7jrc16nwg5jxwsggip5bsvw9zbk8c3gw1my22rwfglnpxg885";
libraryHaskellDepends = [
aeson
aeson-pretty
base
base64-bytestring
bloodhound
bytestring
deepseq
http-client
http-client-tls
log-base
semigroups
text
text-show
time
transformers
unordered-containers
vector
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/scrive/log";
description = "Structured logging solution (Elasticsearch back end)";
license = stdenv.lib.licenses.bsd3;

}) {};
"log-postgres" = callPackage
({
  mkDerivation
, aeson
, aeson-pretty
, base
, base64-bytestring
, bytestring
, deepseq
, hpqtypes
, http-client
, lifted-base
, log-base
, mtl
, semigroups
, split
, stdenv
, text
, text-show
, time
, unordered-containers
, vector
}:
mkDerivation {

pname = "log-postgres";
version = "0.7.0.2";
sha256 = "51c60374838cbd89d027cde9cdf2d8982b4f4152befe76899085520922e5639b";
revision = "1";
editedCabalFile = "1f18nzrh3bxnb58cmd3zyqpwaw2jyfl92dg6qd30zhlvlnkz1q7q";
libraryHaskellDepends = [
aeson
aeson-pretty
base
base64-bytestring
bytestring
deepseq
hpqtypes
http-client
lifted-base
log-base
mtl
semigroups
split
text
text-show
time
unordered-containers
vector
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/scrive/log";
description = "Structured logging solution (PostgreSQL back end)";
license = stdenv.lib.licenses.bsd3;

}) {};
"log-warper" = callPackage
({
  mkDerivation
, aeson
, ansi-terminal
, base
, containers
, deepseq
, directory
, filepath
, fmt
, lifted-async
, markdown-unlit
, microlens
, microlens-platform
, mmorph
, monad-control
, monad-loops
, mtl
, o-clock
, stdenv
, text
, time
, transformers
, transformers-base
, universum
, unix
, unordered-containers
, vector
, yaml
}:
mkDerivation {

pname = "log-warper";
version = "1.8.11";
sha256 = "e28437454c29675a7c08262b53611709fc9c0d71b5d857afc867d356e68d1b76";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
aeson
ansi-terminal
base
containers
deepseq
directory
filepath
fmt
lifted-async
microlens-platform
mmorph
monad-control
monad-loops
mtl
o-clock
text
time
transformers
transformers-base
universum
unix
unordered-containers
vector
yaml
];
executableHaskellDepends = [
base
markdown-unlit
microlens
monad-control
mtl
text
universum
yaml
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/serokell/log-warper";
description = "Flexible, configurable, monadic and pretty logging";
license = stdenv.lib.licenses.mit;

}) {};
"logfloat" = callPackage
({
  mkDerivation
, array
, base
, stdenv
}:
mkDerivation {

pname = "logfloat";
version = "0.13.3.3";
sha256 = "f774bd71d82ae053046ab602aa451ce4f65440d5c634dc8d950ae87f53527f82";
libraryHaskellDepends = [
array
base
];
doHaddock = false;
doCheck = false;
homepage = "http://code.haskell.org/~wren/";
description = "Log-domain floating point numbers";
license = stdenv.lib.licenses.bsd3;

}) {};
"logger-thread" = callPackage
({
  mkDerivation
, base
, fast-logger
, protolude
, safe-exceptions
, stdenv
, stm
, text
, time
}:
mkDerivation {

pname = "logger-thread";
version = "0.1.0.2";
sha256 = "ac0a54001a69cff6f975209c4d9d399fb58ef59bb0ad6ac742c5ffedeac04a2a";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
base
fast-logger
protolude
safe-exceptions
stm
text
time
];
executableHaskellDepends = [
base
protolude
stm
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/joe9/logger-thread#readme";
description = "Run FastLogger in a thread and direct all queued messages to it";
license = stdenv.lib.licenses.bsd3;

}) {};
"logging-effect" = callPackage
({
  mkDerivation
, async
, base
, exceptions
, free
, monad-control
, mtl
, semigroups
, stdenv
, stm
, stm-delay
, text
, time
, transformers
, transformers-base
, wl-pprint-text
}:
mkDerivation {

pname = "logging-effect";
version = "1.2.6";
sha256 = "67d32846e244b82d1ae655598ba4143a6df524937cb23a584ddaf28299883124";
libraryHaskellDepends = [
async
base
exceptions
free
monad-control
mtl
semigroups
stm
stm-delay
text
time
transformers
transformers-base
wl-pprint-text
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/ocharles/logging-effect";
description = "A mtl-style monad transformer for general purpose & compositional logging";
license = stdenv.lib.licenses.bsd3;

}) {};
"logging-effect-extra" = callPackage
({
  mkDerivation
, base
, logging-effect
, logging-effect-extra-file
, logging-effect-extra-handler
, stdenv
, wl-pprint-text
}:
mkDerivation {

pname = "logging-effect-extra";
version = "1.2.2";
sha256 = "fccb190db3f4f81b761df1b6a4428311691d57a435dc78916e00a1f1bb0b2a4b";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
base
logging-effect
logging-effect-extra-file
logging-effect-extra-handler
wl-pprint-text
];
executableHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/jship/logging-effect-extra#readme";
description = "Supplemental packages for `logging-effect`";
license = stdenv.lib.licenses.mit;

}) {};
"logging-effect-extra-file" = callPackage
({
  mkDerivation
, base
, logging-effect
, stdenv
, template-haskell
, wl-pprint-text
}:
mkDerivation {

pname = "logging-effect-extra-file";
version = "1.1.2";
sha256 = "d53334812651a2c1dfa87e93f43913b190bc63380752498593f593717026b1b7";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
base
logging-effect
template-haskell
wl-pprint-text
];
executableHaskellDepends = [
base
logging-effect
wl-pprint-text
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/jship/logging-effect-extra#readme";
description = "TH splices to augment log messages with file info";
license = stdenv.lib.licenses.mit;

}) {};
"logging-effect-extra-handler" = callPackage
({
  mkDerivation
, base
, exceptions
, logging-effect
, stdenv
, time
, wl-pprint-text
}:
mkDerivation {

pname = "logging-effect-extra-handler";
version = "1.1.4";
sha256 = "354a4b969977dd19f2860cb0dc0040e47f455bc1c32d40f89122679e31886224";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
base
exceptions
logging-effect
time
wl-pprint-text
];
executableHaskellDepends = [
base
logging-effect
wl-pprint-text
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/jship/logging-effect-extra#readme";
description = "Handy logging handler combinators";
license = stdenv.lib.licenses.mit;

}) {};
"logging-facade" = callPackage
({
  mkDerivation
, base
, call-stack
, stdenv
, transformers
}:
mkDerivation {

pname = "logging-facade";
version = "0.3.0";
sha256 = "8e7115258b76e0bf5d21b532dd916c63e79b32d1776cc355d2d184f67ae71434";
libraryHaskellDepends = [
base
call-stack
transformers
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/sol/logging-facade#readme";
description = "Simple logging abstraction that allows multiple back-ends";
license = stdenv.lib.licenses.mit;

}) {};
"logging-facade-syslog" = callPackage
({
  mkDerivation
, base
, hsyslog
, logging-facade
, stdenv
}:
mkDerivation {

pname = "logging-facade-syslog";
version = "1";
sha256 = "eb8b23c3f77a788891eac00e2d84bf489b683d761028a7938cf93e36729d8ea9";
libraryHaskellDepends = [
base
hsyslog
logging-facade
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/peti/logging-facade-syslog#readme";
description = "A logging back-end to syslog(3) for the logging-facade library";
license = stdenv.lib.licenses.bsd3;

}) {};
"logict" = callPackage
({
  mkDerivation
, base
, mtl
, stdenv
}:
mkDerivation {

pname = "logict";
version = "0.6.0.2";
sha256 = "1182b68e8d00279460c7fb9b8284bf129805c07754c678b2a8de5a6d768e161e";
libraryHaskellDepends = [
base
mtl
];
doHaddock = false;
doCheck = false;
homepage = "http://code.haskell.org/~dolio/";
description = "A backtracking logic-programming monad";
license = stdenv.lib.licenses.bsd3;

}) {};
"loop" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "loop";
version = "0.3.0";
sha256 = "92962010bdab28cc0092dd3fe42819d6f215c717dd10d9349626d92a0d0b3ecf";
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/nh2/loop";
description = "Fast loops (for when GHC can't optimize forM_)";
license = stdenv.lib.licenses.mit;

}) {};
"lrucache" = callPackage
({
  mkDerivation
, base
, containers
, contravariant
, stdenv
}:
mkDerivation {

pname = "lrucache";
version = "1.2.0.0";
sha256 = "5f17a9e026e198152d13830a0eae0df21be437c238a3f157f7c188fe27a37616";
libraryHaskellDepends = [
base
containers
contravariant
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/chowells79/lrucache";
description = "a simple, pure LRU cache";
license = stdenv.lib.licenses.bsd3;

}) {};
"lrucaching" = callPackage
({
  mkDerivation
, base
, base-compat
, deepseq
, hashable
, psqueues
, stdenv
, vector
}:
mkDerivation {

pname = "lrucaching";
version = "0.3.3";
sha256 = "aa7e5fd27963c70fc1108a7c0526ca0e05f76ccd885844bc50bdae70d5174aa4";
revision = "3";
editedCabalFile = "0y7j6m0n1xi40c7dmabi9lk6mjic9h49xx60rq9xc4xap90hjfqb";
libraryHaskellDepends = [
base
base-compat
deepseq
hashable
psqueues
vector
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/cocreature/lrucaching#readme";
description = "LRU cache";
license = stdenv.lib.licenses.bsd3;

}) {};
"lucid" = callPackage
({
  mkDerivation
, base
, blaze-builder
, bytestring
, containers
, hashable
, mmorph
, mtl
, stdenv
, text
, transformers
, unordered-containers
}:
mkDerivation {

pname = "lucid";
version = "2.9.10";
sha256 = "c0e7dfae8337694082e3f34573c144d2672dc8c8e16175614079cd9d2d434390";
revision = "1";
editedCabalFile = "0n94x2havrvks85z8azsa4pvz33amhb444cias3kfxmkyvypn5ah";
libraryHaskellDepends = [
base
blaze-builder
bytestring
containers
hashable
mmorph
mtl
text
transformers
unordered-containers
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/chrisdone/lucid";
description = "Clear to write, read and edit DSL for HTML";
license = stdenv.lib.licenses.bsd3;

}) {};
"lxd-client" = callPackage
({
  mkDerivation
, aeson
, async
, base
, bimap
, bytestring
, connection
, containers
, data-default
, directory
, either
, exceptions
, filepath
, http-api-data
, http-client
, http-client-tls
, http-media
, http-types
, mtl
, network
, semigroups
, servant
, servant-client
, stdenv
, text
, tls
, transformers
, unix
, websockets
, x509
, x509-store
, x509-validation
}:
mkDerivation {

pname = "lxd-client";
version = "0.1.0.6";
sha256 = "8b50bb6fa10aad3e900ea311d3dcff44768495de729ab5ac376dfe2e60aa801b";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
aeson
async
base
bimap
bytestring
connection
containers
data-default
directory
either
exceptions
filepath
http-api-data
http-client
http-client-tls
http-media
http-types
mtl
network
semigroups
servant
servant-client
text
tls
transformers
unix
websockets
x509
x509-store
x509-validation
];
executableHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/hverr/haskell-lxd-client#readme";
description = "LXD client written in Haskell";
license = stdenv.lib.licenses.gpl3;

}) {};
"lxd-client-config" = callPackage
({
  mkDerivation
, aeson
, base
, containers
, directory
, filepath
, stdenv
, text
, yaml
}:
mkDerivation {

pname = "lxd-client-config";
version = "0.1.0.1";
sha256 = "903852c99bebc0af3cc3a26734056003f9097ada08eb1f361abce097a120afcf";
libraryHaskellDepends = [
aeson
base
containers
directory
filepath
text
yaml
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/hverr/haskell-lxd-client-config#readme";
description = "Read the configuration file of the standard LXD client";
license = stdenv.lib.licenses.gpl3;

}) {};
"lzma" = callPackage
({
  mkDerivation
, base
, bytestring
, lzma
, stdenv
}:
mkDerivation {

pname = "lzma";
version = "0.0.0.3";
sha256 = "af8321c3511bde3e2745093fa3bd74c642e386db7d2e7c43b3a54814f1338144";
revision = "2";
editedCabalFile = "0c6jkr22w797jvmad9vki2mm7cdzxpqqxkpv836fh5m248nnc618";
libraryHaskellDepends = [
base
bytestring
];
librarySystemDepends = [
lzma
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/hvr/lzma";
description = "LZMA/XZ compression and decompression";
license = stdenv.lib.licenses.bsd3;

}) {inherit (pkgs) lzma;};
"lzma-conduit" = callPackage
({
  mkDerivation
, base
, bytestring
, conduit
, lzma
, resourcet
, stdenv
, transformers
}:
mkDerivation {

pname = "lzma-conduit";
version = "1.2.1";
sha256 = "e955da2b8b108b3bf07073e12e5b01c46d42c8f3e40828fb1f34cd7e5413a742";
libraryHaskellDepends = [
base
bytestring
conduit
lzma
resourcet
transformers
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/alphaHeavy/lzma-conduit";
description = "Conduit interface for lzma/xz compression";
license = stdenv.lib.licenses.bsd3;

}) {};
"machines" = callPackage
({
  mkDerivation
, adjunctions
, base
, Cabal
, cabal-doctest
, comonad
, containers
, distributive
, mtl
, pointed
, profunctors
, semigroupoids
, semigroups
, stdenv
, transformers
, transformers-compat
, void
}:
mkDerivation {

pname = "machines";
version = "0.6.3";
sha256 = "3fd2e863a9a2ea2e3ef123668082757e48a5ec25e9659f4e02a3f56e44bdbecf";
revision = "7";
editedCabalFile = "00wq0lnz081bcjrnsg2pvn3i08b4ssgqm92n5j0lpqlym2vm0ar8";
setupHaskellDepends = [
base
Cabal
cabal-doctest
];
libraryHaskellDepends = [
adjunctions
base
comonad
containers
distributive
mtl
pointed
profunctors
semigroupoids
semigroups
transformers
transformers-compat
void
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/ekmett/machines/";
description = "Networked stream transducers";
license = stdenv.lib.licenses.bsd3;

}) {};
"machines-binary" = callPackage
({
  mkDerivation
, base
, binary
, bytestring
, machines
, stdenv
}:
mkDerivation {

pname = "machines-binary";
version = "0.3.0.3";
sha256 = "60ff456d658ea1a427f32ee5ae1c726e2e7703942bd33edf28b457d753c20652";
libraryHaskellDepends = [
base
binary
bytestring
machines
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/aloiscochard/machines-binary";
description = "Binary utilities for the machines library";
license = stdenv.lib.licenses.asl20;

}) {};
"machines-directory" = callPackage
({
  mkDerivation
, base
, directory
, filepath
, machines
, machines-io
, stdenv
, transformers
}:
mkDerivation {

pname = "machines-directory";
version = "0.2.1.0";
sha256 = "849c07db6ff6cfd88348d228a7a3f8ccb16e99568230ee0d20faa5670474deb4";
libraryHaskellDepends = [
base
directory
filepath
machines
machines-io
transformers
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/aloiscochard/machines-directory";
description = "Directory (system) utilities for the machines library";
license = stdenv.lib.licenses.asl20;

}) {};
"machines-io" = callPackage
({
  mkDerivation
, base
, bytestring
, chunked-data
, machines
, stdenv
, transformers
}:
mkDerivation {

pname = "machines-io";
version = "0.2.0.13";
sha256 = "4d579d5e9e94fafcfca91322734263498999d2e2af45c40ff0d1db78f4a8f5d4";
libraryHaskellDepends = [
base
bytestring
chunked-data
machines
transformers
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/aloiscochard/machines-io";
description = "IO utilities for the machines library";
license = stdenv.lib.licenses.asl20;

}) {};
"mainland-pretty" = callPackage
({
  mkDerivation
, base
, containers
, srcloc
, stdenv
, text
, transformers
}:
mkDerivation {

pname = "mainland-pretty";
version = "0.6.1";
sha256 = "e34624877cd2d2a2caae87598d0a9512834f560d7b17982fcdab533992dd45e0";
libraryHaskellDepends = [
base
containers
srcloc
text
transformers
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/mainland/mainland-pretty";
description = "Pretty printing designed for printing source code";
license = stdenv.lib.licenses.bsd3;

}) {};
"makefile" = callPackage
({
  mkDerivation
, attoparsec
, base
, stdenv
, text
}:
mkDerivation {

pname = "makefile";
version = "1.1.0.0";
sha256 = "ed7a12094fe93ef0c6350ed6607ad488703f54bc2ad5d8cb2f9d89eb10b75c07";
libraryHaskellDepends = [
attoparsec
base
text
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/nmattia/mask";
description = "Simple Makefile parser and generator";
license = stdenv.lib.licenses.mit;

}) {};
"managed" = callPackage
({
  mkDerivation
, base
, stdenv
, transformers
}:
mkDerivation {

pname = "managed";
version = "1.0.6";
sha256 = "f1a70a23c0866b75d609b2c818b426712d7a2b4256f43a3d5da517e853e279cd";
libraryHaskellDepends = [
base
transformers
];
doHaddock = false;
doCheck = false;
description = "A monad for managed values";
license = stdenv.lib.licenses.bsd3;

}) {};
"mandrill" = callPackage
({
  mkDerivation
, aeson
, base
, base64-bytestring
, blaze-html
, bytestring
, containers
, email-validate
, http-client
, http-client-tls
, http-types
, lens
, mtl
, old-locale
, QuickCheck
, stdenv
, text
, time
, unordered-containers
}:
mkDerivation {

pname = "mandrill";
version = "0.5.3.3";
sha256 = "c85a7a5211006abd496df2a21470c2b6666149f9e7dfbd8a8826604c918b1e42";
libraryHaskellDepends = [
aeson
base
base64-bytestring
blaze-html
bytestring
containers
email-validate
http-client
http-client-tls
http-types
lens
mtl
old-locale
QuickCheck
text
time
unordered-containers
];
doHaddock = false;
doCheck = false;
description = "Library for interfacing with the Mandrill JSON API";
license = stdenv.lib.licenses.mit;

}) {};
"map-syntax" = callPackage
({
  mkDerivation
, base
, containers
, mtl
, stdenv
}:
mkDerivation {

pname = "map-syntax";
version = "0.2.0.2";
sha256 = "b18f95a6369a600fda189c6f475606cbf5f5f1827f96ca3384f33ae76bda4d8a";
revision = "2";
editedCabalFile = "12b3pbrd70xpx634ngl4dcvda5p9494wq6mc8s1wv4624hwlgja6";
libraryHaskellDepends = [
base
containers
mtl
];
doHaddock = false;
doCheck = false;
description = "Syntax sugar for defining maps";
license = stdenv.lib.licenses.bsd3;

}) {};
"mapquest-api" = callPackage
({
  mkDerivation
, aeson
, base
, bytestring
, exceptions
, goggles
, mtl
, req
, stdenv
, text
}:
mkDerivation {

pname = "mapquest-api";
version = "0.3.1";
sha256 = "43339221b91816e8f793a98a4d281285e8e9de8788f13bb30ec345ef855a7b85";
libraryHaskellDepends = [
aeson
base
bytestring
exceptions
goggles
mtl
req
text
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/ocramz/mapquest-api";
description = "Bindings to the MapQuest API";
license = stdenv.lib.licenses.bsd3;

}) {};
"markdown" = callPackage
({
  mkDerivation
, attoparsec
, base
, blaze-html
, blaze-markup
, conduit
, conduit-extra
, containers
, data-default
, stdenv
, text
, transformers
, xml-conduit
, xml-types
, xss-sanitize
}:
mkDerivation {

pname = "markdown";
version = "0.1.17.1";
sha256 = "e1f72d8829bdc86f52aba9f31f107847dc29b240cca9de7dd5efc2ba01673b58";
libraryHaskellDepends = [
attoparsec
base
blaze-html
blaze-markup
conduit
conduit-extra
containers
data-default
text
transformers
xml-conduit
xml-types
xss-sanitize
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/snoyberg/markdown";
description = "Convert Markdown to HTML, with XSS protection";
license = stdenv.lib.licenses.bsd3;

}) {};
"markdown-unlit" = callPackage
({
  mkDerivation
, base
, base-compat
, stdenv
}:
mkDerivation {

pname = "markdown-unlit";
version = "0.5.0";
sha256 = "e72d0d7b82525e2a2c664012ce9dc35835b3fff91040d9f20897ed82f24ec7bf";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
base
base-compat
];
executableHaskellDepends = [
base
base-compat
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/sol/markdown-unlit#readme";
description = "Literate Haskell support for Markdown";
license = stdenv.lib.licenses.mit;

}) {};
"markov-chain" = callPackage
({
  mkDerivation
, base
, containers
, random
, stdenv
, transformers
}:
mkDerivation {

pname = "markov-chain";
version = "0.0.3.4";
sha256 = "6e51b800101a28593be28ce7ef1b21b7cc7a177a821fb99ecd8a28c69b7b92cd";
libraryHaskellDepends = [
base
containers
random
transformers
];
doHaddock = false;
doCheck = false;
homepage = "http://code.haskell.org/~thielema/markov-chain/";
description = "Markov Chains for generating random sequences with a user definable behaviour";
license = "GPL";

}) {};
"markup" = callPackage
({
  mkDerivation
, attoparsec-uri
, base
, blaze-html
, blaze-markup
, clay
, comonad
, lucid
, mmorph
, monad-control
, monad-logger
, mtl
, path-extra
, resourcet
, stdenv
, text
, transformers-base
, urlpath
}:
mkDerivation {

pname = "markup";
version = "4.0.4";
sha256 = "cb3711f707cedc808bf3c4b150ae6139e8aec83bf226eef9f67929d1523033af";
libraryHaskellDepends = [
attoparsec-uri
base
blaze-html
blaze-markup
clay
comonad
lucid
mmorph
monad-control
monad-logger
mtl
path-extra
resourcet
text
transformers-base
urlpath
];
doHaddock = false;
doCheck = false;
description = "Abstraction for HTML-embedded content";
license = stdenv.lib.licenses.mit;

}) {};
"marvin-interpolate" = callPackage
({
  mkDerivation
, base
, haskell-src-meta
, mtl
, parsec
, stdenv
, template-haskell
, text
}:
mkDerivation {

pname = "marvin-interpolate";
version = "1.1.2";
sha256 = "d640c3bc2f70e17d1fb23c914a3d19b11f72568fda5d5c52e52c1de2e940eccf";
libraryHaskellDepends = [
base
haskell-src-meta
mtl
parsec
template-haskell
text
];
doHaddock = false;
doCheck = false;
homepage = "http://marvin.readthedocs.io/en/latest/interpolation.html";
description = "Compile time string interpolation a la Scala and CoffeeScript";
license = stdenv.lib.licenses.bsd3;

}) {};
"massiv" = callPackage
({
  mkDerivation
, base
, data-default-class
, deepseq
, ghc-prim
, primitive
, stdenv
, vector
}:
mkDerivation {

pname = "massiv";
version = "0.1.6.1";
sha256 = "5eec071c368573e0093ba507fdcc5219aaa127b09affd403d9725cb8a8fad3c5";
libraryHaskellDepends = [
base
data-default-class
deepseq
ghc-prim
primitive
vector
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/lehins/massiv";
description = "Massiv (Массив) is an Array Library";
license = stdenv.lib.licenses.bsd3;

}) {};
"massiv-io" = callPackage
({
  mkDerivation
, base
, bytestring
, data-default
, deepseq
, directory
, filepath
, JuicyPixels
, massiv
, netpbm
, process
, stdenv
, vector
}:
mkDerivation {

pname = "massiv-io";
version = "0.1.3.0";
sha256 = "fd239261ed273320ad2bb324b1defeffc54e33e13b4907ab6848c409387f5622";
libraryHaskellDepends = [
base
bytestring
data-default
deepseq
directory
filepath
JuicyPixels
massiv
netpbm
process
vector
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/lehins/massiv";
description = "Import/export of Image files into massiv Arrays";
license = stdenv.lib.licenses.bsd3;

}) {};
"math-functions" = callPackage
({
  mkDerivation
, base
, deepseq
, primitive
, stdenv
, vector
, vector-th-unbox
}:
mkDerivation {

pname = "math-functions";
version = "0.2.1.0";
sha256 = "f71b5598de453546396a3f5f7f6ce877fffcc996639b7569d8628cae97da65eb";
libraryHaskellDepends = [
base
deepseq
primitive
vector
vector-th-unbox
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/bos/math-functions";
description = "Special functions and Chebyshev polynomials";
license = stdenv.lib.licenses.bsd3;

}) {};
"mathexpr" = callPackage
({
  mkDerivation
, base
, data-default-class
, stdenv
}:
mkDerivation {

pname = "mathexpr";
version = "0.3.0.0";
sha256 = "23c30ae0c962a7858d57bed320be6421baeb82fa795260e1eea0bc8fcc4871ad";
libraryHaskellDepends = [
base
data-default-class
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/mdibaiee/mathexpr";
description = "Parse and evaluate math expressions with variables and functions";
license = stdenv.lib.licenses.gpl3;

}) {};
"matplotlib" = callPackage
({
  mkDerivation
, aeson
, base
, bytestring
, containers
, deepseq
, filepath
, process
, split
, stdenv
, temporary
}:
mkDerivation {

pname = "matplotlib";
version = "0.6.0";
sha256 = "6ddf08827bd7737b1e66969d5f869b6c91bb0610f7e1bf3b7eda3e7cf1c2b980";
libraryHaskellDepends = [
aeson
base
bytestring
containers
deepseq
filepath
process
split
temporary
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/abarbu/matplotlib-haskell";
description = "Bindings to Matplotlib; a Python plotting library";
license = stdenv.lib.licenses.bsd3;

}) {};
"matrices" = callPackage
({
  mkDerivation
, base
, deepseq
, primitive
, stdenv
, vector
}:
mkDerivation {

pname = "matrices";
version = "0.4.5";
sha256 = "2d396f130d675eabaa435caba122fe2b2c1d2dfc5343471131b7392e479b7397";
libraryHaskellDepends = [
base
deepseq
primitive
vector
];
doHaddock = false;
doCheck = false;
description = "native matrix based on vector";
license = stdenv.lib.licenses.bsd3;

}) {};
"matrix" = callPackage
({
  mkDerivation
, base
, deepseq
, loop
, primitive
, stdenv
, vector
}:
mkDerivation {

pname = "matrix";
version = "0.3.5.0";
sha256 = "7a3d41c0f66212360057b29ae9f81779c8da9f71b040ad7676699af7e7ca35b5";
libraryHaskellDepends = [
base
deepseq
loop
primitive
vector
];
doHaddock = false;
doCheck = false;
description = "A native implementation of matrix operations";
license = stdenv.lib.licenses.bsd3;

}) {};
"matrix-market-attoparsec" = callPackage
({
  mkDerivation
, attoparsec
, base
, bytestring
, exceptions
, scientific
, stdenv
}:
mkDerivation {

pname = "matrix-market-attoparsec";
version = "0.1.0.8";
sha256 = "5e41aa81abdfd6062dc4607ea7c684b9ac09a286d2ebf76829504acf09260a77";
enableSeparateDataOutput = true;
libraryHaskellDepends = [
attoparsec
base
bytestring
exceptions
scientific
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/ocramz/matrix-market-attoparsec";
description = "Parsing and serialization functions for the NIST Matrix Market format";
license = stdenv.lib.licenses.bsd2;

}) {};
"maximal-cliques" = callPackage
({
  mkDerivation
, base
, containers
, stdenv
, vector
}:
mkDerivation {

pname = "maximal-cliques";
version = "0.1.1";
sha256 = "709d05c753c7d2d7466ade515da0255fc79241432d0118b3182dd3b2def475e9";
libraryHaskellDepends = [
base
containers
vector
];
doHaddock = false;
doCheck = false;
description = "Enumerate all maximal cliques of a graph";
license = stdenv.lib.licenses.bsd3;

}) {};
"mbox" = callPackage
({
  mkDerivation
, base
, safe
, stdenv
, text
, time
, time-locale-compat
}:
mkDerivation {

pname = "mbox";
version = "0.3.4";
sha256 = "dce4b538bbe03928a1d1438bf80b4d341ffb1a9d23ead1c2b16a04b0fa5371de";
revision = "1";
editedCabalFile = "11jikczq21fnhsvr6n33qbb5q6ixbhab4s0js8n39zwgmglighz5";
libraryHaskellDepends = [
base
safe
text
time
time-locale-compat
];
doHaddock = false;
doCheck = false;
description = "Read and write standard mailbox files";
license = stdenv.lib.licenses.bsd3;

}) {};
"mbox-utility" = callPackage
({
  mkDerivation
, base
, bytestring
, hsemail
, non-empty
, old-time
, parsec
, spreadsheet
, stdenv
, utility-ht
}:
mkDerivation {

pname = "mbox-utility";
version = "0.0.1";
sha256 = "e5e009f83c95b20d85c4b39d233b2f32ee15eae08d54edbaa7928848ae15e9f8";
isLibrary = false;
isExecutable = true;
executableHaskellDepends = [
base
bytestring
hsemail
non-empty
old-time
parsec
spreadsheet
utility-ht
];
doHaddock = false;
doCheck = false;
description = "List contents of an mbox file containing e-mails";
license = stdenv.lib.licenses.bsd3;

}) {};
"mbtiles" = callPackage
({
  mkDerivation
, base
, bytestring
, directory
, monad-control
, mtl
, resource-pool
, sqlite-simple
, stdenv
, text
, transformers
, unordered-containers
}:
mkDerivation {

pname = "mbtiles";
version = "0.6.0.0";
sha256 = "b8a82f0a1c551a59961449587f031f679dd2f5f082ce45b6f7d88d81f99ad62f";
libraryHaskellDepends = [
base
bytestring
directory
monad-control
mtl
resource-pool
sqlite-simple
text
transformers
unordered-containers
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/caneroj1/mbtiles#readme";
description = "Haskell MBTiles client";
license = stdenv.lib.licenses.bsd3;

}) {};
"mcmc-types" = callPackage
({
  mkDerivation
, base
, containers
, mwc-probability
, stdenv
, transformers
}:
mkDerivation {

pname = "mcmc-types";
version = "1.0.3";
sha256 = "3c4b25030b05567694ddc313ca808a32133ad5433b4d89837e1ed00bbfcefc6e";
libraryHaskellDepends = [
base
containers
mwc-probability
transformers
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/jtobin/mcmc-types";
description = "Common types for sampling";
license = stdenv.lib.licenses.mit;

}) {};
"med-module" = callPackage
({
  mkDerivation
, base
, bytestring
, stdenv
, storable-endian
, transformers
, utility-ht
}:
mkDerivation {

pname = "med-module";
version = "0.1.1";
sha256 = "f78974fba8f8d17267297b268b84cf7434f51f5d2ad106a461f225f1d873eee3";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
base
bytestring
storable-endian
transformers
utility-ht
];
doHaddock = false;
doCheck = false;
description = "Parse song module files from Amiga MED and OctaMED";
license = stdenv.lib.licenses.gpl3;

}) {};
"median-stream" = callPackage
({
  mkDerivation
, base
, heap
, stdenv
}:
mkDerivation {

pname = "median-stream";
version = "0.7.0.0";
sha256 = "e92fc44be8189dafe9190aad225462780f26d0b1fe1823376342329db6c71f3d";
libraryHaskellDepends = [
base
heap
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/caneroj1/median-stream#readme";
description = "Constant-time queries for the median of a stream of numeric data";
license = stdenv.lib.licenses.bsd3;

}) {};
"megaparsec" = callPackage
({
  mkDerivation
, base
, bytestring
, case-insensitive
, containers
, deepseq
, mtl
, parser-combinators
, scientific
, stdenv
, text
, transformers
}:
mkDerivation {

pname = "megaparsec";
version = "6.4.1";
sha256 = "de40015dac65c2707a0bd65b7974da4d0cc00593d8bdebc0d58319761ee21370";
revision = "2";
editedCabalFile = "0vh4l2kl9nfxlr8l82qicldybwiv6vbksi3jdk0xjzxmkvgm0jnf";
libraryHaskellDepends = [
base
bytestring
case-insensitive
containers
deepseq
mtl
parser-combinators
scientific
text
transformers
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/mrkkrp/megaparsec";
description = "Monadic parser combinators";
license = stdenv.lib.licenses.bsd2;

}) {};
"memory" = callPackage
({
  mkDerivation
, base
, basement
, bytestring
, deepseq
, foundation
, ghc-prim
, stdenv
}:
mkDerivation {

pname = "memory";
version = "0.14.16";
sha256 = "7bb0834ab28ce1248f3be09df211d49d20d703cdcda3ed16cde99356e2d72b0f";
libraryHaskellDepends = [
base
basement
bytestring
deepseq
foundation
ghc-prim
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/vincenthz/hs-memory";
description = "memory and related abstraction stuff";
license = stdenv.lib.licenses.bsd3;

}) {};
"mercury-api" = callPackage
({
  mkDerivation
, ansi-terminal
, base
, bytestring
, clock
, hashable
, optparse-applicative
, stdenv
, text
, unordered-containers
}:
mkDerivation {

pname = "mercury-api";
version = "0.1.0.1";
sha256 = "f9e398ec0256b065de94f9412de6d164bd6fc425ad64d407d513db232602bb40";
revision = "2";
editedCabalFile = "093c8afmcrnbfliz1ykpyc4w40dli2wig0qi0xcwg8445idwp2kg";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
ansi-terminal
base
bytestring
clock
hashable
text
unordered-containers
];
executableHaskellDepends = [
ansi-terminal
base
bytestring
optparse-applicative
text
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/ppelleti/hs-mercury-api";
description = "Haskell binding to Mercury API for ThingMagic RFID readers";
license = stdenv.lib.licenses.mit;

}) {};
"mersenne-random-pure64" = callPackage
({
  mkDerivation
, base
, random
, stdenv
, time
}:
mkDerivation {

pname = "mersenne-random-pure64";
version = "0.2.2.0";
sha256 = "ef1400ddc1ddafb0b98d4331a58bdbe3b5209a81579e17f85f180731a96d75d1";
libraryHaskellDepends = [
base
random
time
];
doHaddock = false;
doCheck = false;
homepage = "http://code.haskell.org/~dons/code/mersenne-random-pure64/";
description = "Generate high quality pseudorandom numbers purely using a Mersenne Twister";
license = stdenv.lib.licenses.bsd3;

}) {};
"messagepack" = callPackage
({
  mkDerivation
, base
, bytestring
, cereal
, containers
, deepseq
, stdenv
}:
mkDerivation {

pname = "messagepack";
version = "0.5.4";
sha256 = "939590c05d5b0831b3b4796f2e1a070e290982c92b2009f2aa1ef5f4b05b5d7c";
revision = "1";
editedCabalFile = "0p13in70gvxl8d8hjl1dcxczfpcfyffy2lxbdy1d21h742ks1zjb";
libraryHaskellDepends = [
base
bytestring
cereal
containers
deepseq
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/rodrigosetti/messagepack";
description = "Serialize instance for Message Pack Object";
license = stdenv.lib.licenses.mit;

}) {};
"messagepack-rpc" = callPackage
({
  mkDerivation
, base
, bytestring
, cereal
, containers
, messagepack
, network-simple
, stdenv
}:
mkDerivation {

pname = "messagepack-rpc";
version = "0.5.1";
sha256 = "aa7960644668284e6add36e5c305af2c6d3ebf0a9a2c3fcd62529554a049a0bc";
revision = "1";
editedCabalFile = "05p6naaxswmsc3w7k67ydzzwyn60ymp0jbrc0f66p2sajvlnviax";
libraryHaskellDepends = [
base
bytestring
cereal
containers
messagepack
network-simple
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/rodrigosetti/messagepack-rpc";
description = "Message Pack RPC over TCP";
license = stdenv.lib.licenses.mit;

}) {};
"metrics" = callPackage
({
  mkDerivation
, ansi-terminal
, base
, bytestring
, containers
, lens
, mwc-random
, primitive
, stdenv
, text
, time
, transformers
, transformers-base
, unix-compat
, unordered-containers
, vector
, vector-algorithms
}:
mkDerivation {

pname = "metrics";
version = "0.4.1.1";
sha256 = "d55f6e704ec6f0c6bab0da46417049b7de3e76ca69a0be4c49a790db28c75bb8";
libraryHaskellDepends = [
ansi-terminal
base
bytestring
containers
lens
mwc-random
primitive
text
time
transformers
transformers-base
unix-compat
unordered-containers
vector
vector-algorithms
];
doHaddock = false;
doCheck = false;
description = "High-performance application metric tracking";
license = stdenv.lib.licenses.mit;

}) {};
"microformats2-parser" = callPackage
({
  mkDerivation
, aeson
, aeson-pretty
, aeson-qq
, attoparsec
, base
, base-compat
, blaze-html
, blaze-markup
, bytestring
, containers
, data-default
, either
, errors
, html-conduit
, lens-aeson
, network
, network-uri
, options
, pcre-heavy
, safe
, scotty
, stdenv
, tagsoup
, text
, time
, transformers
, unordered-containers
, vector
, wai-cli
, wai-extra
, xml-lens
, xss-sanitize
}:
mkDerivation {

pname = "microformats2-parser";
version = "1.0.1.7";
sha256 = "def0a462fcfaa344629ee05ced7a93593bad2749148873b4f4c63e3f0c6758f1";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
aeson
aeson-qq
attoparsec
base
base-compat
blaze-markup
bytestring
containers
data-default
either
errors
html-conduit
lens-aeson
network-uri
pcre-heavy
safe
tagsoup
text
time
transformers
unordered-containers
vector
xml-lens
xss-sanitize
];
executableHaskellDepends = [
aeson
aeson-pretty
base
base-compat
blaze-html
blaze-markup
data-default
network
network-uri
options
scotty
text
wai-cli
wai-extra
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/myfreeweb/microformats2-parser";
description = "A Microformats 2 parser";
license = stdenv.lib.licenses.publicDomain;

}) {};
"microlens" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "microlens";
version = "0.4.8.3";
sha256 = "53445b345d493e381173e6d7dc428116717cee9216e1fe069b96e68657151d9f";
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/aelve/microlens";
description = "A tiny lens library with no dependencies. If you're writing an app, you probably want microlens-platform, not this.";
license = stdenv.lib.licenses.bsd3;

}) {};
"microlens-aeson" = callPackage
({
  mkDerivation
, aeson
, attoparsec
, base
, bytestring
, deepseq
, hashable
, microlens
, scientific
, stdenv
, text
, unordered-containers
, vector
}:
mkDerivation {

pname = "microlens-aeson";
version = "2.3.0";
sha256 = "f2f28288bfc190127423a452514d35f7b66f9d5625cf6653bb34cb020aa450c5";
revision = "1";
editedCabalFile = "0nzkdmdfvamhn24lhvg9gjda2rpv8iv7jab0r6drmpk33rxs613s";
libraryHaskellDepends = [
aeson
attoparsec
base
bytestring
deepseq
hashable
microlens
scientific
text
unordered-containers
vector
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/fosskers/microlens-aeson/";
description = "Law-abiding lenses for Aeson, using microlens";
license = stdenv.lib.licenses.mit;

}) {};
"microlens-contra" = callPackage
({
  mkDerivation
, base
, contravariant
, microlens
, stdenv
}:
mkDerivation {

pname = "microlens-contra";
version = "0.1.0.1";
sha256 = "4983f19d37168a7cb862f76a22e8a43156df89c3c58b8206e2c84b2262c7f595";
libraryHaskellDepends = [
base
contravariant
microlens
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/aelve/microlens";
description = "True folds and getters for microlens";
license = stdenv.lib.licenses.bsd3;

}) {};
"microlens-ghc" = callPackage
({
  mkDerivation
, array
, base
, bytestring
, containers
, microlens
, stdenv
, transformers
}:
mkDerivation {

pname = "microlens-ghc";
version = "0.4.8.0";
sha256 = "dea1ea2fa61dea6ebb431e95b36ae4e2011ddb94ad3e0693173fd41f1858697a";
libraryHaskellDepends = [
array
base
bytestring
containers
microlens
transformers
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/aelve/microlens";
description = "microlens + array, bytestring, containers, transformers";
license = stdenv.lib.licenses.bsd3;

}) {};
"microlens-mtl" = callPackage
({
  mkDerivation
, base
, microlens
, mtl
, stdenv
, transformers
, transformers-compat
}:
mkDerivation {

pname = "microlens-mtl";
version = "0.1.11.1";
sha256 = "d3e74f46a72aad12b71d8549a98fbc023fb364766f17d75742fb32fee70bdf50";
libraryHaskellDepends = [
base
microlens
mtl
transformers
transformers-compat
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/aelve/microlens";
description = "microlens support for Reader/Writer/State from mtl";
license = stdenv.lib.licenses.bsd3;

}) {};
"microlens-platform" = callPackage
({
  mkDerivation
, base
, hashable
, microlens
, microlens-ghc
, microlens-mtl
, microlens-th
, stdenv
, text
, unordered-containers
, vector
}:
mkDerivation {

pname = "microlens-platform";
version = "0.3.9.0";
sha256 = "93076f4c17e5ce65db89ccf50924b395667a730c8ff0c1a94b03b94b9a373539";
libraryHaskellDepends = [
base
hashable
microlens
microlens-ghc
microlens-mtl
microlens-th
text
unordered-containers
vector
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/aelve/microlens";
description = "Feature-complete microlens";
license = stdenv.lib.licenses.bsd3;

}) {};
"microlens-th" = callPackage
({
  mkDerivation
, base
, containers
, microlens
, stdenv
, template-haskell
}:
mkDerivation {

pname = "microlens-th";
version = "0.4.1.3";
sha256 = "8e5c3bfc477ac9fa516b1a28a02a58a8ba2daeed99ff716cb06c3dda31134195";
libraryHaskellDepends = [
base
containers
microlens
template-haskell
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/aelve/microlens";
description = "Automatic generation of record lenses for microlens";
license = stdenv.lib.licenses.bsd3;

}) {};
"microspec" = callPackage
({
  mkDerivation
, base
, QuickCheck
, stdenv
}:
mkDerivation {

pname = "microspec";
version = "0.1.0.0";
sha256 = "e1e4156574d81786e1c8d04ba22e7283001ef3eada3104a99e9c31a45656d343";
libraryHaskellDepends = [
base
QuickCheck
];
doHaddock = false;
doCheck = false;
description = "Tiny QuickCheck test library with minimal dependencies";
license = stdenv.lib.licenses.bsd3;

}) {};
"microstache" = callPackage
({
  mkDerivation
, aeson
, base
, bytestring
, containers
, deepseq
, directory
, filepath
, parsec
, stdenv
, text
, transformers
, unordered-containers
, vector
}:
mkDerivation {

pname = "microstache";
version = "1.0.1.1";
sha256 = "5de98542313eb75f84961366ff8a70ed632387ba6518215035b2dd1b32d6a120";
revision = "2";
editedCabalFile = "0rl6vgmjnf1a14kiynh4gnmy6n6kkik9hqj9k5vqw68h4f110i4b";
libraryHaskellDepends = [
aeson
base
bytestring
containers
deepseq
directory
filepath
parsec
text
transformers
unordered-containers
vector
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/phadej/microstache";
description = "Mustache templates for Haskell";
license = stdenv.lib.licenses.bsd3;

}) {};
"midi" = callPackage
({
  mkDerivation
, base
, binary
, bytestring
, event-list
, explicit-exception
, monoid-transformer
, non-negative
, QuickCheck
, random
, semigroups
, stdenv
, transformers
, utility-ht
}:
mkDerivation {

pname = "midi";
version = "0.2.2.2";
sha256 = "de7cb58971a43f23e2a1ec0c4c01f690c1dd11ba55bc71264e1b9731014a693b";
libraryHaskellDepends = [
base
binary
bytestring
event-list
explicit-exception
monoid-transformer
non-negative
QuickCheck
random
semigroups
transformers
utility-ht
];
doHaddock = false;
doCheck = false;
homepage = "http://www.haskell.org/haskellwiki/MIDI";
description = "Handling of MIDI messages and files";
license = "GPL";

}) {};
"mighty-metropolis" = callPackage
({
  mkDerivation
, base
, kan-extensions
, mcmc-types
, mwc-probability
, pipes
, primitive
, stdenv
, transformers
}:
mkDerivation {

pname = "mighty-metropolis";
version = "1.2.0";
sha256 = "8d3c0b4b65024846291c4f547c45e5c04f587aefd0e8d041d54679bb519871c0";
libraryHaskellDepends = [
base
kan-extensions
mcmc-types
mwc-probability
pipes
primitive
transformers
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/jtobin/mighty-metropolis";
description = "The Metropolis algorithm";
license = stdenv.lib.licenses.mit;

}) {};
"milena" = callPackage
({
  mkDerivation
, base
, bytestring
, cereal
, containers
, digest
, lens
, lifted-base
, monad-control
, mtl
, murmur-hash
, network
, random
, resource-pool
, semigroups
, stdenv
, transformers
, zlib
}:
mkDerivation {

pname = "milena";
version = "0.5.2.1";
sha256 = "c2d568c54723f990b7edaf53354e59ff883860c99195480f7e49c18d2e9ed4d7";
libraryHaskellDepends = [
base
bytestring
cereal
containers
digest
lens
lifted-base
monad-control
mtl
murmur-hash
network
random
resource-pool
semigroups
transformers
zlib
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/adamflott/milena.git#readme";
description = "A Kafka client for Haskell";
license = stdenv.lib.licenses.bsd3;

}) {};
"mime-mail" = callPackage
({
  mkDerivation
, base
, base64-bytestring
, blaze-builder
, bytestring
, filepath
, process
, random
, stdenv
, text
}:
mkDerivation {

pname = "mime-mail";
version = "0.4.14";
sha256 = "9632c3d54c9741fece0a3ea705d965485a1299ebe5798d2aa7cca2c8e4baaa3e";
libraryHaskellDepends = [
base
base64-bytestring
blaze-builder
bytestring
filepath
process
random
text
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/snoyberg/mime-mail";
description = "Compose MIME email messages";
license = stdenv.lib.licenses.mit;

}) {};
"mime-mail-ses" = callPackage
({
  mkDerivation
, base
, base64-bytestring
, byteable
, bytestring
, conduit
, cryptohash
, http-client
, http-client-tls
, http-conduit
, http-types
, mime-mail
, old-locale
, stdenv
, text
, time
, transformers
, xml-conduit
, xml-types
}:
mkDerivation {

pname = "mime-mail-ses";
version = "0.4.1";
sha256 = "a76f29d1e52d8fbfc7ea8119f6ede5ed87f9e5b9d5587f1e6c69295f2a23d3f0";
libraryHaskellDepends = [
base
base64-bytestring
byteable
bytestring
conduit
cryptohash
http-client
http-client-tls
http-conduit
http-types
mime-mail
old-locale
text
time
transformers
xml-conduit
xml-types
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/snoyberg/mime-mail";
description = "Send mime-mail messages via Amazon SES";
license = stdenv.lib.licenses.mit;

}) {};
"mime-types" = callPackage
({
  mkDerivation
, base
, bytestring
, containers
, stdenv
, text
}:
mkDerivation {

pname = "mime-types";
version = "0.1.0.7";
sha256 = "83164a24963a7ef37543349df095155b30116c208e602a159a5cd3722f66e9b9";
libraryHaskellDepends = [
base
bytestring
containers
text
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/yesodweb/wai";
description = "Basic mime-type handling types and functions";
license = stdenv.lib.licenses.mit;

}) {};
"minimorph" = callPackage
({
  mkDerivation
, base
, stdenv
, text
}:
mkDerivation {

pname = "minimorph";
version = "0.1.6.1";
sha256 = "94677b454b86a47d1b04ef1462873708976546bbb7a3bcc4f3ffe222d98bb844";
libraryHaskellDepends = [
base
text
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/Mikolaj/minimorph";
description = "English spelling functions with an emphasis on simplicity";
license = stdenv.lib.licenses.bsd3;

}) {};
"minio-hs" = callPackage
({
  mkDerivation
, aeson
, base
, base64-bytestring
, bytestring
, case-insensitive
, conduit
, conduit-extra
, containers
, cryptonite
, cryptonite-conduit
, data-default
, exceptions
, filepath
, http-client
, http-conduit
, http-types
, memory
, protolude
, resourcet
, stdenv
, text
, text-format
, time
, transformers
, unliftio
, unliftio-core
, xml-conduit
}:
mkDerivation {

pname = "minio-hs";
version = "1.0.0";
sha256 = "2282be0f9b03bad489d777491f72ac919447b3901e0cc38e022bd535e7ffd860";
libraryHaskellDepends = [
aeson
base
base64-bytestring
bytestring
case-insensitive
conduit
conduit-extra
containers
cryptonite
cryptonite-conduit
data-default
exceptions
filepath
http-client
http-conduit
http-types
memory
protolude
resourcet
text
text-format
time
transformers
unliftio
unliftio-core
xml-conduit
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/minio/minio-hs#readme";
description = "A Minio Haskell Library for Amazon S3 compatible cloud storage";
license = stdenv.lib.licenses.asl20;

}) {};
"miniutter" = callPackage
({
  mkDerivation
, base
, binary
, containers
, ghc-prim
, minimorph
, stdenv
, text
}:
mkDerivation {

pname = "miniutter";
version = "0.4.7.0";
sha256 = "adc9ac6a2160e87a8a4c4b88087d478ee74dded59d0cf6205a105dc0f778dc82";
libraryHaskellDepends = [
base
binary
containers
ghc-prim
minimorph
text
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/Mikolaj/miniutter";
description = "Simple English clause creation from arbitrary words";
license = stdenv.lib.licenses.bsd3;

}) {};
"mintty" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "mintty";
version = "0.1.2";
sha256 = "7c8af77bcde4e9b54692e3761f41adf35a50664974ba77f2ba65ea2af9f950da";
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/RyanGlScott/mintty";
description = "A reliable way to detect the presence of a MinTTY console on Windows";
license = stdenv.lib.licenses.bsd3;

}) {};
"misfortune" = callPackage
({
  mkDerivation
, base
, bytestring
, cereal
, directory
, filepath
, knob
, monad-loops
, random-fu
, regex-base
, regex-pcre
, semigroups
, stdenv
, text
, utf8-string
, vector
}:
mkDerivation {

pname = "misfortune";
version = "0.1.1.2";
sha256 = "ae4b44215f811e7af6af756c813b9bd6e4161be555f30dd817324f8d1ffe2349";
isLibrary = true;
isExecutable = true;
enableSeparateDataOutput = true;
libraryHaskellDepends = [
base
bytestring
cereal
directory
filepath
knob
random-fu
semigroups
text
utf8-string
vector
];
executableHaskellDepends = [
monad-loops
regex-base
regex-pcre
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/mokus0/misfortune";
description = "fortune-mod clone";
license = stdenv.lib.licenses.publicDomain;

}) {};
"miso" = callPackage
({
  mkDerivation
, aeson
, base
, bytestring
, containers
, http-api-data
, http-types
, lucid
, network-uri
, servant
, servant-lucid
, stdenv
, text
, transformers
, vector
}:
mkDerivation {

pname = "miso";
version = "0.14.0.0";
sha256 = "dd5668b43f85b4c4835f2f48b01e0b9cb23eac044977de6496925919190f119b";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
aeson
base
bytestring
containers
http-api-data
http-types
lucid
network-uri
servant
servant-lucid
text
transformers
vector
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/dmjio/miso";
description = "A tasty Haskell front-end framework";
license = stdenv.lib.licenses.bsd3;

}) {};
"missing-foreign" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "missing-foreign";
version = "0.1.1";
sha256 = "9e1b36cdb8626d848386c1c4d54f3b9f80b3458398aa6a4d499266b5ecbcc885";
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
description = "Convenience functions for FFI work";
license = stdenv.lib.licenses.bsd3;

}) {};
"mixed-types-num" = callPackage
({
  mkDerivation
, base
, convertible
, hspec
, hspec-smallcheck
, QuickCheck
, smallcheck
, stdenv
, template-haskell
}:
mkDerivation {

pname = "mixed-types-num";
version = "0.3.1.4";
sha256 = "c4ffffea5a5eae0a1fafde3187be1bdf9cd0d166bee0bd502b1aa6cd898dc100";
libraryHaskellDepends = [
base
convertible
hspec
hspec-smallcheck
QuickCheck
smallcheck
template-haskell
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/michalkonecny/mixed-types-num";
description = "Alternative Prelude with numeric and logic expressions typed bottom-up";
license = stdenv.lib.licenses.bsd3;

}) {};
"mltool" = callPackage
({
  mkDerivation
, ascii-progress
, base
, deepseq
, hmatrix
, hmatrix-gsl
, hmatrix-gsl-stats
, MonadRandom
, random
, stdenv
, vector
}:
mkDerivation {

pname = "mltool";
version = "0.1.0.2";
sha256 = "379ca73b496e1a589be6d8d75a4067e2eb382e6500530f10b40bfda59042f5bf";
libraryHaskellDepends = [
ascii-progress
base
deepseq
hmatrix
hmatrix-gsl
hmatrix-gsl-stats
MonadRandom
random
vector
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/alexander-ignatyev/mltool";
description = "Machine Learning Toolbox";
license = stdenv.lib.licenses.bsd3;

}) {};
"mmap" = callPackage
({
  mkDerivation
, base
, bytestring
, stdenv
}:
mkDerivation {

pname = "mmap";
version = "0.5.9";
sha256 = "58fcbb04e1cb8e7c36c05823b02dce2faaa989c53d745a7f36192de2fc98b5f8";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
base
bytestring
];
doHaddock = false;
doCheck = false;
description = "Memory mapped files for POSIX and Windows";
license = stdenv.lib.licenses.bsd3;

}) {};
"mmark" = callPackage
({
  mkDerivation
, aeson
, base
, case-insensitive
, containers
, data-default-class
, deepseq
, dlist
, email-validate
, foldl
, hashable
, html-entity-map
, lucid
, megaparsec
, microlens
, microlens-th
, modern-uri
, mtl
, parser-combinators
, stdenv
, text
, text-metrics
, unordered-containers
, yaml
}:
mkDerivation {

pname = "mmark";
version = "0.0.5.6";
sha256 = "fc036385fd4cea07a490df00d8fe443cc6656a6d090d537d4d5e860564ef1234";
revision = "3";
editedCabalFile = "0asb998ch5b33s84ssdps3w7mdlhksmd9c580npg7xkrw60mwjfb";
enableSeparateDataOutput = true;
libraryHaskellDepends = [
aeson
base
case-insensitive
containers
data-default-class
deepseq
dlist
email-validate
foldl
hashable
html-entity-map
lucid
megaparsec
microlens
microlens-th
modern-uri
mtl
parser-combinators
text
text-metrics
unordered-containers
yaml
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/mmark-md/mmark";
description = "Strict markdown processor for writers";
license = stdenv.lib.licenses.bsd3;

}) {};
"mmark-cli" = callPackage
({
  mkDerivation
, aeson
, base
, bytestring
, directory
, gitrev
, lucid
, megaparsec
, mmark
, mmark-ext
, optparse-applicative
, stache
, stdenv
, text
, unordered-containers
}:
mkDerivation {

pname = "mmark-cli";
version = "0.0.3.0";
sha256 = "37d3e98d15ccc036db5e2ec1b8b1e84a20c303ba1821a44ec441e835c43c6159";
revision = "2";
editedCabalFile = "0i3gvfgm4bfbdyflhhaf4gdr7cbkw51i330f25rgha9k3s4v59w3";
isLibrary = false;
isExecutable = true;
executableHaskellDepends = [
aeson
base
bytestring
directory
gitrev
lucid
megaparsec
mmark
mmark-ext
optparse-applicative
stache
text
unordered-containers
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/mmark-md/mmark-cli";
description = "Command line interface to MMark markdown processor";
license = stdenv.lib.licenses.bsd3;

}) {};
"mmark-ext" = callPackage
({
  mkDerivation
, base
, foldl
, lucid
, microlens
, mmark
, modern-uri
, skylighting
, stdenv
, text
}:
mkDerivation {

pname = "mmark-ext";
version = "0.2.1.0";
sha256 = "1a02396a80708c60b3aecb668c16a3d0cb890bbfcc4fbf722c9742b75ce23fcd";
enableSeparateDataOutput = true;
libraryHaskellDepends = [
base
foldl
lucid
microlens
mmark
modern-uri
skylighting
text
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/mmark-md/mmark-ext";
description = "Commonly useful extensions for the MMark markdown processor";
license = stdenv.lib.licenses.bsd3;

}) {};
"mmorph" = callPackage
({
  mkDerivation
, base
, mtl
, stdenv
, transformers
, transformers-compat
}:
mkDerivation {

pname = "mmorph";
version = "1.1.2";
sha256 = "c90afd7996c94be2b9a5796a7b94918d198c53b0c1d7a3eaf2982293560c5fbe";
libraryHaskellDepends = [
base
mtl
transformers
transformers-compat
];
doHaddock = false;
doCheck = false;
description = "Monad morphisms";
license = stdenv.lib.licenses.bsd3;

}) {};
"mnist-idx" = callPackage
({
  mkDerivation
, base
, binary
, bytestring
, stdenv
, vector
}:
mkDerivation {

pname = "mnist-idx";
version = "0.1.2.8";
sha256 = "42ff167e84414821ed47d783042cad20a0bd198f935648aa6cdf97bdc291b2fe";
libraryHaskellDepends = [
base
binary
bytestring
vector
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/kryoxide/mnist-idx/";
description = "Read and write IDX data that is used in e.g. the MNIST database.";
license = stdenv.lib.licenses.lgpl3;

}) {};
"mockery" = callPackage
({
  mkDerivation
, base
, base-compat
, bytestring
, directory
, filepath
, logging-facade
, stdenv
, temporary
}:
mkDerivation {

pname = "mockery";
version = "0.3.5";
sha256 = "b7a1edacd3d32dc7f0e28c67877209d3ca3551d1da186f6445f825f3477dd727";
libraryHaskellDepends = [
base
base-compat
bytestring
directory
filepath
logging-facade
temporary
];
doHaddock = false;
doCheck = false;
description = "Support functions for automated testing";
license = stdenv.lib.licenses.mit;

}) {};
"model" = callPackage
({
  mkDerivation
, base
, containers
, convertible
, deepseq
, either
, pretty
, stdenv
, transformers
}:
mkDerivation {

pname = "model";
version = "0.4.4";
sha256 = "44e0a604e5461b00818fbb6f2ec755dd56f7b533a5d255c1c50f328f4e0dbbd6";
libraryHaskellDepends = [
base
containers
convertible
deepseq
either
pretty
transformers
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/tittoassini/model";
description = "Derive a model of a data type using Generics";
license = stdenv.lib.licenses.bsd3;

}) {};
"modern-uri" = callPackage
({
  mkDerivation
, base
, bytestring
, containers
, contravariant
, deepseq
, exceptions
, megaparsec
, mtl
, profunctors
, QuickCheck
, reflection
, stdenv
, tagged
, template-haskell
, text
}:
mkDerivation {

pname = "modern-uri";
version = "0.2.1.0";
sha256 = "e65aca7e994b3a470584da17571878084e90120507b8deab9a9b021d529f981a";
revision = "4";
editedCabalFile = "00vr4g5cmhd3d1329hwcdq55yjq8n5jxz15sgl0sawcg5mw5ihyy";
libraryHaskellDepends = [
base
bytestring
containers
contravariant
deepseq
exceptions
megaparsec
mtl
profunctors
QuickCheck
reflection
tagged
template-haskell
text
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/mrkkrp/modern-uri";
description = "Modern library for working with URIs";
license = stdenv.lib.licenses.bsd3;

}) {};
"modify-fasta" = callPackage
({
  mkDerivation
, base
, containers
, fasta
, mtl
, optparse-applicative
, pipes
, pipes-text
, regex-tdfa
, regex-tdfa-text
, semigroups
, split
, stdenv
, text
, text-show
, transformers
}:
mkDerivation {

pname = "modify-fasta";
version = "0.8.3.0";
sha256 = "39dd76a2261f7a3ce7e6253b8f33b8e7a62cac5848a8085012903c06582976c3";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
base
containers
fasta
regex-tdfa
regex-tdfa-text
split
text
text-show
];
executableHaskellDepends = [
base
containers
fasta
mtl
optparse-applicative
pipes
pipes-text
semigroups
split
text
transformers
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/GregorySchwartz/modify-fasta";
description = "Modify fasta (and CLIP) files in several optional ways";
license = stdenv.lib.licenses.gpl3;

}) {};
"moesocks" = callPackage
({
  mkDerivation
, aeson
, async
, attoparsec
, base
, binary
, bytestring
, containers
, cryptohash
, hslogger
, HsOpenSSL
, iproute
, lens
, lens-aeson
, mtl
, network
, optparse-applicative
, random
, stdenv
, stm
, strict
, text
, time
, transformers
, unordered-containers
}:
mkDerivation {

pname = "moesocks";
version = "1.0.0.44";
sha256 = "bf35a237dffeaebc82237439fe457d0c423d235a48a69f02c9e616297540e1c8";
isLibrary = false;
isExecutable = true;
executableHaskellDepends = [
aeson
async
attoparsec
base
binary
bytestring
containers
cryptohash
hslogger
HsOpenSSL
iproute
lens
lens-aeson
mtl
network
optparse-applicative
random
stm
strict
text
time
transformers
unordered-containers
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/nfjinjing/moesocks";
description = "A functional firewall killer";
license = stdenv.lib.licenses.asl20;

}) {};
"mole" = callPackage
({
  mkDerivation
, attoparsec
, base
, base64-bytestring
, bytestring
, containers
, cryptohash
, css-syntax
, directory
, filemanip
, filepath
, fsnotify
, kraken
, mtl
, network-uri
, optparse-applicative
, process
, snap-core
, snap-server
, stdenv
, stm
, tagsoup
, text
, time
, transformers
, unix
}:
mkDerivation {

pname = "mole";
version = "0.0.6";
sha256 = "ab7803cd42f79d5aad4492c257b06c9d7079f15f84e52d63978565c374e81a6a";
isLibrary = false;
isExecutable = true;
executableHaskellDepends = [
attoparsec
base
base64-bytestring
bytestring
containers
cryptohash
css-syntax
directory
filemanip
filepath
fsnotify
kraken
mtl
network-uri
optparse-applicative
process
snap-core
snap-server
stm
tagsoup
text
time
transformers
unix
];
doHaddock = false;
doCheck = false;
description = "A glorified string replacement tool";
license = stdenv.lib.licenses.mit;

}) {};
"monad-control" = callPackage
({
  mkDerivation
, base
, stdenv
, stm
, transformers
, transformers-base
, transformers-compat
}:
mkDerivation {

pname = "monad-control";
version = "1.0.2.3";
sha256 = "6c1034189d237ae45368c70f0e68f714dd3beda715dd265b6c8a99fcc64022b1";
libraryHaskellDepends = [
base
stm
transformers
transformers-base
transformers-compat
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/basvandijk/monad-control";
description = "Lift control operations, like exception catching, through monad transformers";
license = stdenv.lib.licenses.bsd3;

}) {};
"monad-control-aligned" = callPackage
({
  mkDerivation
, base
, stdenv
, stm
, transformers
, transformers-base
, transformers-compat
}:
mkDerivation {

pname = "monad-control-aligned";
version = "0.0.1.1";
sha256 = "44e78fd32d6644e974ab0644dc79331643c8ada4837c8f3c94f4a30b5ee011f6";
libraryHaskellDepends = [
base
stm
transformers
transformers-base
transformers-compat
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/athanclark/monad-control#readme";
description = "Just like monad-control, except less efficient, and the monadic state terms are all * -> *";
license = stdenv.lib.licenses.bsd3;

}) {};
"monad-coroutine" = callPackage
({
  mkDerivation
, base
, monad-parallel
, stdenv
, transformers
, transformers-compat
}:
mkDerivation {

pname = "monad-coroutine";
version = "0.9.0.4";
sha256 = "13e0ff12046296390ea69dda5001aa02b1b57e968447d27712a24c8c7cfe5de7";
libraryHaskellDepends = [
base
monad-parallel
transformers
transformers-compat
];
doHaddock = false;
doCheck = false;
homepage = "http://trac.haskell.org/SCC/wiki/monad-coroutine";
description = "Coroutine monad transformer for suspending and resuming monadic computations";
license = "GPL";

}) {};
"monad-extras" = callPackage
({
  mkDerivation
, base
, mmorph
, monad-control
, stdenv
, stm
, transformers
, transformers-base
}:
mkDerivation {

pname = "monad-extras";
version = "0.6.0";
sha256 = "df33d7c51a97d16226b8160d9bc09686cb6f7b7bf5c54557381c6fe4a3c84f2c";
libraryHaskellDepends = [
base
mmorph
monad-control
stm
transformers
transformers-base
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/jwiegley/monad-extras";
description = "Extra utility functions for working with monads";
license = stdenv.lib.licenses.bsd3;

}) {};
"monad-journal" = callPackage
({
  mkDerivation
, base
, monad-control
, mtl
, stdenv
, transformers
, transformers-base
}:
mkDerivation {

pname = "monad-journal";
version = "0.8.1";
sha256 = "e20ac220086081b5cf1964e9486e04113ec03b15f247512a2193898100a105ac";
libraryHaskellDepends = [
base
monad-control
mtl
transformers
transformers-base
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/phaazon/monad-journal";
description = "Pure logger typeclass and monad transformer";
license = stdenv.lib.licenses.bsd3;

}) {};
"monad-logger" = callPackage
({
  mkDerivation
, base
, bytestring
, conduit
, conduit-extra
, exceptions
, fast-logger
, lifted-base
, monad-control
, monad-loops
, mtl
, resourcet
, stdenv
, stm
, stm-chans
, template-haskell
, text
, transformers
, transformers-base
, transformers-compat
, unliftio-core
}:
mkDerivation {

pname = "monad-logger";
version = "0.3.28.5";
sha256 = "225ed7cd2d0d375c0207d5d3b9faa12b339ca7dd51ca92f96d3eaf2d360027f1";
libraryHaskellDepends = [
base
bytestring
conduit
conduit-extra
exceptions
fast-logger
lifted-base
monad-control
monad-loops
mtl
resourcet
stm
stm-chans
template-haskell
text
transformers
transformers-base
transformers-compat
unliftio-core
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/snoyberg/monad-logger#readme";
description = "A class of monads which can log messages";
license = stdenv.lib.licenses.mit;

}) {};
"monad-logger-json" = callPackage
({
  mkDerivation
, aeson
, base
, monad-logger
, stdenv
, template-haskell
, text
}:
mkDerivation {

pname = "monad-logger-json";
version = "0.1.0.0";
sha256 = "10871c4aef838c01c8fdd7586161367b4d66907a53cbd9737efb717a1041e9aa";
libraryHaskellDepends = [
aeson
base
monad-logger
template-haskell
text
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/fpco/monad-logger-json";
description = "JSON-friendly Logging APIs";
license = stdenv.lib.licenses.mit;

}) {};
"monad-logger-prefix" = callPackage
({
  mkDerivation
, base
, exceptions
, monad-control
, monad-logger
, mtl
, resourcet
, stdenv
, text
, transformers
, transformers-base
}:
mkDerivation {

pname = "monad-logger-prefix";
version = "0.1.10";
sha256 = "a3ac2d043a13d9e9296692dc729a299361b04757690894cac1b6904510a0d975";
libraryHaskellDepends = [
base
exceptions
monad-control
monad-logger
mtl
resourcet
text
transformers
transformers-base
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/parsonsmatt/monad-logger-prefix#readme";
description = "Add prefixes to your monad-logger output";
license = stdenv.lib.licenses.asl20;

}) {};
"monad-logger-syslog" = callPackage
({
  mkDerivation
, base
, bytestring
, fast-logger
, hsyslog
, monad-logger
, stdenv
, text
, transformers
}:
mkDerivation {

pname = "monad-logger-syslog";
version = "0.1.4.0";
sha256 = "052c3e13e235e7fb31caecc117e3ab4629e85bbfd3b35ec03f74d732acbc9ccb";
libraryHaskellDepends = [
base
bytestring
fast-logger
hsyslog
monad-logger
text
transformers
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/fpco/monad-logger-syslog";
description = "syslog output for monad-logger";
license = stdenv.lib.licenses.mit;

}) {};
"monad-loops" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "monad-loops";
version = "0.4.3";
sha256 = "7eaaaf6bc43661e9e86e310ff8c56fbea16eb6bf13c31a2e28103138ac164c18";
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/mokus0/monad-loops";
description = "Monadic loops";
license = stdenv.lib.licenses.publicDomain;

}) {};
"monad-memo" = callPackage
({
  mkDerivation
, array
, base
, containers
, mtl
, primitive
, stdenv
, transformers
, vector
}:
mkDerivation {

pname = "monad-memo";
version = "0.4.1";
sha256 = "4c00c4aff00c85bfcce0a9a7d96a2a7d08f1efe64b3326e67e47499d5168f11d";
libraryHaskellDepends = [
array
base
containers
mtl
primitive
transformers
vector
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/EduardSergeev/monad-memo";
description = "Memoization monad transformer";
license = stdenv.lib.licenses.bsd3;

}) {};
"monad-metrics" = callPackage
({
  mkDerivation
, base
, clock
, ekg-core
, exceptions
, hashable
, microlens
, mtl
, stdenv
, text
, transformers
, unordered-containers
}:
mkDerivation {

pname = "monad-metrics";
version = "0.2.1.1";
sha256 = "fe179a952dd85ddc1efd94f8ab7b98c02e6be818dcd4b499a60a1d437234f985";
libraryHaskellDepends = [
base
clock
ekg-core
exceptions
hashable
microlens
mtl
text
transformers
unordered-containers
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/sellerlabs/monad-metrics#readme";
description = "A convenient wrapper around EKG metrics";
license = stdenv.lib.licenses.mit;

}) {};
"monad-mock" = callPackage
({
  mkDerivation
, base
, constraints
, exceptions
, haskell-src-exts
, haskell-src-meta
, monad-control
, mtl
, stdenv
, template-haskell
, th-orphans
, transformers-base
}:
mkDerivation {

pname = "monad-mock";
version = "0.2.0.0";
sha256 = "7bafe50c2671d83e1bc7d4697985d1cda12ab5570b7fa4ddbf09c047b9982a7b";
libraryHaskellDepends = [
base
constraints
exceptions
haskell-src-exts
haskell-src-meta
monad-control
mtl
template-haskell
th-orphans
transformers-base
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/cjdev/monad-mock#readme";
description = "A monad transformer for mocking mtl-style typeclasses";
license = stdenv.lib.licenses.isc;

}) {};
"monad-par" = callPackage
({
  mkDerivation
, abstract-deque
, abstract-par
, array
, base
, containers
, deepseq
, monad-par-extras
, mtl
, mwc-random
, parallel
, stdenv
}:
mkDerivation {

pname = "monad-par";
version = "0.3.4.8";
sha256 = "f84cdf51908a1c41c3f672be9520a8fdc028ea39d90a25ecfe5a3b223cfeb951";
libraryHaskellDepends = [
abstract-deque
abstract-par
array
base
containers
deepseq
monad-par-extras
mtl
mwc-random
parallel
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/simonmar/monad-par";
description = "A library for parallel programming based on a monad";
license = stdenv.lib.licenses.bsd3;

}) {};
"monad-par-extras" = callPackage
({
  mkDerivation
, abstract-par
, base
, cereal
, deepseq
, mtl
, random
, stdenv
, transformers
}:
mkDerivation {

pname = "monad-par-extras";
version = "0.3.3";
sha256 = "e21e33190bc248afa4ae467287ac37d24037ef3de6050c44fd85b52f4d5b842e";
libraryHaskellDepends = [
abstract-par
base
cereal
deepseq
mtl
random
transformers
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/simonmar/monad-par";
description = "Combinators and extra features for Par monads";
license = stdenv.lib.licenses.bsd3;

}) {};
"monad-parallel" = callPackage
({
  mkDerivation
, base
, parallel
, stdenv
, transformers
, transformers-compat
}:
mkDerivation {

pname = "monad-parallel";
version = "0.7.2.3";
sha256 = "128fb8c36be717f82aa3146d855303f48d04c56ba025078e6cd35d6050b45089";
libraryHaskellDepends = [
base
parallel
transformers
transformers-compat
];
doHaddock = false;
doCheck = false;
homepage = "http://trac.haskell.org/SCC/wiki/monad-parallel";
description = "Parallel execution of monadic computations";
license = stdenv.lib.licenses.bsd3;

}) {};
"monad-peel" = callPackage
({
  mkDerivation
, base
, extensible-exceptions
, stdenv
, transformers
}:
mkDerivation {

pname = "monad-peel";
version = "0.2.1.2";
sha256 = "2dd5e9090f3951dbc298e35c3cea7099818aba0485a55059475c4f346fc933f4";
libraryHaskellDepends = [
base
extensible-exceptions
transformers
];
doHaddock = false;
doCheck = false;
homepage = "http://andersk.mit.edu/haskell/monad-peel/";
description = "Lift control operations like exception catching through monad transformers";
license = stdenv.lib.licenses.bsd3;

}) {};
"monad-products" = callPackage
({
  mkDerivation
, base
, semigroupoids
, stdenv
}:
mkDerivation {

pname = "monad-products";
version = "4.0.1";
sha256 = "02bfe1db2ae1a5cff19f73736a219605b1f0649f6af44ca848d09160a7946cea";
libraryHaskellDepends = [
base
semigroupoids
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/ekmett/monad-products";
description = "Monad products";
license = stdenv.lib.licenses.bsd3;

}) {};
"monad-recorder" = callPackage
({
  mkDerivation
, base
, exceptions
, monad-control
, mtl
, stdenv
, transformers
, transformers-base
}:
mkDerivation {

pname = "monad-recorder";
version = "0.1.1";
sha256 = "0863eb37dae0a9dc996a73dd7743d0c9fc22b9713d4be4d7c7e49e4e073ca215";
libraryHaskellDepends = [
base
exceptions
monad-control
mtl
transformers
transformers-base
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/harendra-kumar/monad-recorder";
description = "Record and replay the results of monadic actions";
license = stdenv.lib.licenses.mit;

}) {};
"monad-skeleton" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "monad-skeleton";
version = "0.1.5";
sha256 = "a96840713ffdbb97d58e8dc7a47d2b725993868f005903fa9aa26bcf6f32559e";
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/fumieval/monad-skeleton";
description = "Monads of program skeleta";
license = stdenv.lib.licenses.bsd3;

}) {};
"monad-st" = callPackage
({
  mkDerivation
, base
, stdenv
, transformers
}:
mkDerivation {

pname = "monad-st";
version = "0.2.4.1";
sha256 = "8e1818576bc486e884b953680fe41c524ff23eef2ec382b5f28f47fa7b8abf08";
libraryHaskellDepends = [
base
transformers
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/ekmett/monad-st";
description = "Provides a MonadST class";
license = stdenv.lib.licenses.bsd3;

}) {};
"monad-time" = callPackage
({
  mkDerivation
, base
, mtl
, stdenv
, time
}:
mkDerivation {

pname = "monad-time";
version = "0.2";
sha256 = "a9b901ca94b4c71d5f374a472506db92d26b13af523ceafe1e3302e8bae8b05d";
revision = "1";
editedCabalFile = "1v59w75w589mh6n3ga2fcihgmjmg0vd0q7fg9l2q52yhgx5pz9m3";
libraryHaskellDepends = [
base
mtl
time
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/scrive/monad-time";
description = "Type class for monads which carry the notion of the current time";
license = stdenv.lib.licenses.bsd3;

}) {};
"monad-unlift" = callPackage
({
  mkDerivation
, base
, constraints
, monad-control
, stdenv
, transformers
, transformers-base
}:
mkDerivation {

pname = "monad-unlift";
version = "0.2.0";
sha256 = "4b5e638619e4821918b4ec67aeffb581ab9df23d168fbb72164137009a15ee0f";
libraryHaskellDepends = [
base
constraints
monad-control
transformers
transformers-base
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/fpco/monad-unlift";
description = "Typeclasses for representing monad transformer unlifting";
license = stdenv.lib.licenses.mit;

}) {};
"monad-unlift-ref" = callPackage
({
  mkDerivation
, base
, constraints
, exceptions
, monad-control
, monad-unlift
, mtl
, mutable-containers
, resourcet
, stdenv
, stm
, transformers
, transformers-base
}:
mkDerivation {

pname = "monad-unlift-ref";
version = "0.2.1";
sha256 = "0f059539297478ad8b7e861682207b37b91eaf7e36bd8fdcc3f865a3c6971d1d";
libraryHaskellDepends = [
base
constraints
exceptions
monad-control
monad-unlift
mtl
mutable-containers
resourcet
stm
transformers
transformers-base
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/fpco/monad-unlift";
description = "Typeclasses for representing monad transformer unlifting";
license = stdenv.lib.licenses.mit;

}) {};
"monadic-arrays" = callPackage
({
  mkDerivation
, array
, base
, stdenv
, stm
, transformers
, transformers-compat
}:
mkDerivation {

pname = "monadic-arrays";
version = "0.2.2";
sha256 = "667714c6100272b48c4377cf2e2984b67a4445521a2a2e9c37539128c7e276a0";
libraryHaskellDepends = [
array
base
stm
transformers
transformers-compat
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/ekmett/monadic-arrays/";
description = "Boxed and unboxed arrays for monad transformers";
license = stdenv.lib.licenses.bsd3;

}) {};
"monadloc" = callPackage
({
  mkDerivation
, base
, stdenv
, template-haskell
, transformers
}:
mkDerivation {

pname = "monadloc";
version = "0.7.1";
sha256 = "b25a0f6b3ebb051e58e2a58f2f5d588ff67622584cb575d40c46eaacbd1de7a8";
libraryHaskellDepends = [
base
template-haskell
transformers
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/pepeiborra/monadloc";
description = "A class for monads which can keep a monadic call trace";
license = stdenv.lib.licenses.publicDomain;

}) {};
"monadoid" = callPackage
({
  mkDerivation
, base
, monad-control
, mtl
, stdenv
, transformers-base
}:
mkDerivation {

pname = "monadoid";
version = "0.0.2";
sha256 = "26c2e9fb0456dbec761c6d9723ad33cbb9fcd3a1318ff4197859d766e14ec877";
libraryHaskellDepends = [
base
monad-control
mtl
transformers-base
];
doHaddock = false;
doCheck = false;
description = "A monoid for monads";
license = stdenv.lib.licenses.bsd3;

}) {};
"monadplus" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "monadplus";
version = "1.4.2";
sha256 = "366ed520db1eaf2ec56d8508fee2804cc24c7a6016de4b75b9addec681186595";
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
description = "Haskell98 partial maps and filters over MonadPlus";
license = stdenv.lib.licenses.bsd3;

}) {};
"monads-tf" = callPackage
({
  mkDerivation
, base
, stdenv
, transformers
}:
mkDerivation {

pname = "monads-tf";
version = "0.1.0.3";
sha256 = "249dd2aa55c4dd6530f1e49f6b052ec91bc590ecfef2bd24c58837a3f8d4b0f1";
libraryHaskellDepends = [
base
transformers
];
doHaddock = false;
doCheck = false;
description = "Monad classes, using type families";
license = stdenv.lib.licenses.bsd3;

}) {};
"mongoDB" = callPackage
({
  mkDerivation
, array
, base
, base16-bytestring
, base64-bytestring
, binary
, bson
, bytestring
, conduit
, conduit-extra
, containers
, cryptohash
, data-default-class
, hashtables
, lifted-base
, monad-control
, mtl
, network
, nonce
, parsec
, pureMD5
, random
, random-shuffle
, resourcet
, stdenv
, tagged
, text
, time
, tls
, transformers
, transformers-base
}:
mkDerivation {

pname = "mongoDB";
version = "2.3.0.5";
sha256 = "49260ab3b58144548a1852a1cc21ab0a786578f02fc167a1210881f93018ea8e";
revision = "2";
editedCabalFile = "0bx2vdwp53c9dgil09qg22hd1j1dilwqcg6ighp28ajmnxkyl8j0";
libraryHaskellDepends = [
array
base
base16-bytestring
base64-bytestring
binary
bson
bytestring
conduit
conduit-extra
containers
cryptohash
data-default-class
hashtables
lifted-base
monad-control
mtl
network
nonce
parsec
pureMD5
random
random-shuffle
resourcet
tagged
text
time
tls
transformers
transformers-base
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/mongodb-haskell/mongodb";
description = "Driver (client) for MongoDB, a free, scalable, fast, document DBMS";
license = stdenv.lib.licenses.asl20;

}) {};
"mono-traversable" = callPackage
({
  mkDerivation
, base
, bytestring
, containers
, hashable
, split
, stdenv
, text
, transformers
, unordered-containers
, vector
, vector-algorithms
}:
mkDerivation {

pname = "mono-traversable";
version = "1.0.8.1";
sha256 = "991290797bd77ce2f2e23dd5dea32fb159c6cb9310615f64a0703ea4c6373935";
libraryHaskellDepends = [
base
bytestring
containers
hashable
split
text
transformers
unordered-containers
vector
vector-algorithms
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/snoyberg/mono-traversable#readme";
description = "Type classes for mapping, folding, and traversing monomorphic containers";
license = stdenv.lib.licenses.mit;

}) {};
"mono-traversable-instances" = callPackage
({
  mkDerivation
, base
, comonad
, containers
, dlist
, dlist-instances
, mono-traversable
, semigroupoids
, semigroups
, stdenv
, transformers
, vector-instances
}:
mkDerivation {

pname = "mono-traversable-instances";
version = "0.1.0.0";
sha256 = "b5ff2b8bcebe31ffcc652a8dd3adde6aa7cd7f27a1cf6d058d4c658b370c087e";
libraryHaskellDepends = [
base
comonad
containers
dlist
dlist-instances
mono-traversable
semigroupoids
semigroups
transformers
vector-instances
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/snoyberg/mono-traversable#readme";
description = "Extra typeclass instances for mono-traversable";
license = stdenv.lib.licenses.mit;

}) {};
"monoid-extras" = callPackage
({
  mkDerivation
, base
, groups
, semigroupoids
, semigroups
, stdenv
}:
mkDerivation {

pname = "monoid-extras";
version = "0.4.4";
sha256 = "dde9adc62c3ef349a9e93561c4f28615fd25d2957f3c4ab15459fef2684468c6";
libraryHaskellDepends = [
base
groups
semigroupoids
semigroups
];
doHaddock = false;
doCheck = false;
description = "Various extra monoid-related definitions and utilities";
license = stdenv.lib.licenses.bsd3;

}) {};
"monoid-subclasses" = callPackage
({
  mkDerivation
, base
, bytestring
, containers
, primes
, stdenv
, text
, vector
}:
mkDerivation {

pname = "monoid-subclasses";
version = "0.4.6";
sha256 = "15c1aade7351bea9db03e047b063d3f68507e31bebff8e49fc9797a5d4be51e7";
libraryHaskellDepends = [
base
bytestring
containers
primes
text
vector
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/blamario/monoid-subclasses/";
description = "Subclasses of Monoid";
license = stdenv.lib.licenses.bsd3;

}) {};
"monoid-transformer" = callPackage
({
  mkDerivation
, base
, semigroups
, stdenv
}:
mkDerivation {

pname = "monoid-transformer";
version = "0.0.4";
sha256 = "43abf147e4d1b57c5d306d9533e42fb52828d64e761e0e3d8797fb52cfc98388";
libraryHaskellDepends = [
base
semigroups
];
doHaddock = false;
doCheck = false;
description = "Monoid counterparts to some ubiquitous monad transformers";
license = stdenv.lib.licenses.bsd3;

}) {};
"monoidal-containers" = callPackage
({
  mkDerivation
, base
, containers
, deepseq
, hashable
, lens
, newtype
, semigroups
, stdenv
, unordered-containers
}:
mkDerivation {

pname = "monoidal-containers";
version = "0.3.1.0";
sha256 = "44c325aa5a46a624688eefca1a0a3cc818e932a3805ed7749d0693c2c8c5f785";
libraryHaskellDepends = [
base
containers
deepseq
hashable
lens
newtype
semigroups
unordered-containers
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/bgamari/monoidal-containers";
description = "Containers with monoidal accumulation";
license = stdenv.lib.licenses.bsd3;

}) {};
"morte" = callPackage
({
  mkDerivation
, alex
, array
, base
, binary
, code-page
, containers
, deepseq
, Earley
, formatting
, http-client
, http-client-tls
, microlens
, microlens-mtl
, optparse-applicative
, pipes
, stdenv
, system-fileio
, system-filepath
, text
, transformers
}:
mkDerivation {

pname = "morte";
version = "1.6.19";
sha256 = "f036d20c8dd5f985b649934d6a5b9b1785615776ece21495847164386c9313d7";
isLibrary = true;
isExecutable = true;
enableSeparateDataOutput = true;
libraryHaskellDepends = [
array
base
binary
containers
deepseq
Earley
formatting
http-client
http-client-tls
microlens
microlens-mtl
pipes
system-fileio
system-filepath
text
transformers
];
libraryToolDepends = [
alex
];
executableHaskellDepends = [
base
code-page
formatting
optparse-applicative
text
];
doHaddock = false;
doCheck = false;
description = "A bare-bones calculus of constructions";
license = stdenv.lib.licenses.bsd3;

}) {};
"mountpoints" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "mountpoints";
version = "1.0.2";
sha256 = "67fcdf64fdb8111f58939c64b168a9dfa519d7068e0f439887d739866f18d5c2";
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
description = "list mount points";
license = "LGPL";

}) {};
"mstate" = callPackage
({
  mkDerivation
, base
, monad-peel
, mtl
, stdenv
, stm
}:
mkDerivation {

pname = "mstate";
version = "0.2.7";
sha256 = "4508e3e7cc2dec5a0e75ba7dd085c73fdd4f886ac6d1a74cf071816795bb2c17";
libraryHaskellDepends = [
base
monad-peel
mtl
stm
];
doHaddock = false;
doCheck = false;
description = "MState: A consistent State monad for concurrent applications";
license = stdenv.lib.licenses.bsd3;

}) {};
"mtl" = callPackage
({
  mkDerivation
, base
, stdenv
, transformers
}:
mkDerivation {

pname = "mtl";
version = "2.2.2";
sha256 = "8803f48a8ed33296c3a3272f448198737a287ec31baa901af09e2118c829bef6";
libraryHaskellDepends = [
base
transformers
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/haskell/mtl";
description = "Monad classes, using functional dependencies";
license = stdenv.lib.licenses.bsd3;

}) {};
"mtl-compat" = callPackage
({
  mkDerivation
, base
, mtl
, stdenv
}:
mkDerivation {

pname = "mtl-compat";
version = "0.2.1.3";
sha256 = "6458ca53593a31ebce1d94ef8dd4f6a06d050dd7ed32335f6cc6b6e5d3456894";
revision = "4";
editedCabalFile = "1mfrx8cpx0502sjv0bmlfkl0h46c4krldg8m89k4fj6iawwg2ab5";
libraryHaskellDepends = [
base
mtl
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/haskell-compat/mtl-compat";
description = "Backported Control.Monad.Except module from mtl";
license = stdenv.lib.licenses.bsd3;

}) {};
"mtl-prelude" = callPackage
({
  mkDerivation
, base
, mtl
, stdenv
, transformers
}:
mkDerivation {

pname = "mtl-prelude";
version = "2.0.3.1";
sha256 = "c4a6dda093d63bd2161f55030c5825903dfa9b7d5e766c487fd848cb2aa01233";
libraryHaskellDepends = [
base
mtl
transformers
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/nikita-volkov/mtl-prelude";
description = "Reexports of most definitions from \"mtl\" and \"transformers\"";
license = stdenv.lib.licenses.mit;

}) {};
"multiarg" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "multiarg";
version = "0.30.0.10";
sha256 = "c9fa623a8e06d62addc2b7ad5102ceac3a6f0db6a67afbc8e693d0d0aec417a1";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/massysett/multiarg";
description = "Command lines for options that take multiple arguments";
license = stdenv.lib.licenses.bsd3;

}) {};
"multimap" = callPackage
({
  mkDerivation
, base
, containers
, stdenv
}:
mkDerivation {

pname = "multimap";
version = "1.2.1";
sha256 = "6332c529475177b9e08d762d5701804dc2edc0ff26dd98a2a1dcd7ed092e7434";
libraryHaskellDepends = [
base
containers
];
doHaddock = false;
doCheck = false;
homepage = "http://hub.darcs.net/scravy/multimap";
description = "A multimap";
license = stdenv.lib.licenses.mit;

}) {};
"multipart" = callPackage
({
  mkDerivation
, base
, bytestring
, parsec
, stdenv
}:
mkDerivation {

pname = "multipart";
version = "0.1.2";
sha256 = "e543fb307beb14fc366171d7767a6a18244bacf78db295d8d161c5c03d94043c";
libraryHaskellDepends = [
base
bytestring
parsec
];
doHaddock = false;
doCheck = false;
homepage = "http://www.github.com/silkapp/multipart";
description = "HTTP multipart split out of the cgi package";
license = stdenv.lib.licenses.bsd3;

}) {};
"multiset" = callPackage
({
  mkDerivation
, base
, containers
, stdenv
}:
mkDerivation {

pname = "multiset";
version = "0.3.3";
sha256 = "c74e77d3dbbe81fe3b48629fc257fa084df89bfb575c82c42f5549af376de135";
revision = "2";
editedCabalFile = "1pwb1prra12yrm3qdjp8h7343cilbkck85blhaflzsmn1sbcyq2w";
libraryHaskellDepends = [
base
containers
];
doHaddock = false;
doCheck = false;
description = "The Data.MultiSet container type";
license = stdenv.lib.licenses.bsd3;

}) {};
"multistate" = callPackage
({
  mkDerivation
, base
, monad-control
, mtl
, stdenv
, tagged
, transformers
, transformers-base
}:
mkDerivation {

pname = "multistate";
version = "0.7.1.2";
sha256 = "9189313c54130173171077a64851244e517ec135bf0a9230d39b272aee0394d5";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
base
monad-control
mtl
tagged
transformers
transformers-base
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/lspitzner/multistate";
description = "like mtl's ReaderT / WriterT / StateT, but more than one contained value/type";
license = stdenv.lib.licenses.bsd3;

}) {};
"murmur-hash" = callPackage
({
  mkDerivation
, base
, bytestring
, stdenv
}:
mkDerivation {

pname = "murmur-hash";
version = "0.1.0.9";
sha256 = "89b9db94ead4cc0784dbcfb47c51b5664c1718860db00cd8ada3ef6fdd4465ad";
libraryHaskellDepends = [
base
bytestring
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/nominolo/murmur-hash";
description = "MurmurHash2 implementation for Haskell";
license = stdenv.lib.licenses.bsd3;

}) {};
"mustache" = callPackage
({
  mkDerivation
, aeson
, base
, bytestring
, cmdargs
, containers
, directory
, either
, filepath
, mtl
, parsec
, scientific
, stdenv
, template-haskell
, text
, th-lift
, unordered-containers
, vector
, yaml
}:
mkDerivation {

pname = "mustache";
version = "2.3.0";
sha256 = "018863e578e971e393edc65dd7e0ed92a0e37fc152a47bb379fd8abd59537be0";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
aeson
base
bytestring
containers
directory
either
filepath
mtl
parsec
scientific
template-haskell
text
th-lift
unordered-containers
vector
];
executableHaskellDepends = [
aeson
base
bytestring
cmdargs
filepath
text
yaml
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/JustusAdam/mustache";
description = "A mustache template parser library";
license = stdenv.lib.licenses.bsd3;

}) {};
"mutable-containers" = callPackage
({
  mkDerivation
, base
, containers
, ghc-prim
, mono-traversable
, primitive
, stdenv
, vector
}:
mkDerivation {

pname = "mutable-containers";
version = "0.3.4";
sha256 = "641966e0adee48badb8bf07037af6c879480e4e97f673d9e2b84fbf43685137e";
libraryHaskellDepends = [
base
containers
ghc-prim
mono-traversable
primitive
vector
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/snoyberg/mono-traversable#readme";
description = "Abstactions and concrete implementations of mutable containers";
license = stdenv.lib.licenses.mit;

}) {};
"mwc-probability" = callPackage
({
  mkDerivation
, base
, mwc-random
, primitive
, stdenv
, transformers
}:
mkDerivation {

pname = "mwc-probability";
version = "2.0.3";
sha256 = "7e999b53c367d03ddae1ba5ac175f1067c2339346fc376c2a14bfc2a57c9f6a1";
libraryHaskellDepends = [
base
mwc-random
primitive
transformers
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/jtobin/mwc-probability";
description = "Sampling function-based probability distributions";
license = stdenv.lib.licenses.mit;

}) {};
"mwc-random" = callPackage
({
  mkDerivation
, base
, math-functions
, primitive
, stdenv
, time
, vector
}:
mkDerivation {

pname = "mwc-random";
version = "0.13.6.0";
sha256 = "065f334fc13c057eb03ef0b6aa3665ff193609d9bfcad8068bdd260801f44716";
libraryHaskellDepends = [
base
math-functions
primitive
time
vector
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/bos/mwc-random";
description = "Fast, high quality pseudo random number generation";
license = stdenv.lib.licenses.bsd3;

}) {};
"mwc-random-accelerate" = callPackage
({
  mkDerivation
, accelerate
, base
, mwc-random
, stdenv
}:
mkDerivation {

pname = "mwc-random-accelerate";
version = "0.1.0.0";
sha256 = "30fad33d12b130457a6dcb8bedc885700e6ac0eea9b0f25fe6e5fe34968932e3";
revision = "2";
editedCabalFile = "16llz1jvpq841a20wvv2j8kkb357y970i54w340hwk4c187hypic";
libraryHaskellDepends = [
accelerate
base
mwc-random
];
doHaddock = false;
doCheck = false;
description = "Generate Accelerate arrays filled with high quality pseudorandom numbers";
license = stdenv.lib.licenses.bsd3;

}) {};
"mysql" = callPackage
({
  mkDerivation
, base
, bytestring
, Cabal
, containers
, mysql
, stdenv
}:
mkDerivation {

pname = "mysql";
version = "0.1.5";
sha256 = "49b367d07f6d93fd4cbd08390f83bbf8e40c66156a1d2b0f570b68921e6f3075";
setupHaskellDepends = [
base
Cabal
];
libraryHaskellDepends = [
base
bytestring
containers
];
librarySystemDepends = [
mysql
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/paul-rouse/mysql";
description = "A low-level MySQL client library";
license = stdenv.lib.licenses.bsd3;

}) {inherit (pkgs) mysql;};
"mysql-haskell" = callPackage
({
  mkDerivation
, base
, binary
, binary-ieee754
, binary-parsers
, blaze-textual
, bytestring
, bytestring-lexing
, cryptonite
, io-streams
, memory
, monad-loops
, network
, scientific
, stdenv
, tcp-streams
, text
, time
, tls
, vector
, wire-streams
, word24
}:
mkDerivation {

pname = "mysql-haskell";
version = "0.8.3.0";
sha256 = "e9aef28ccccc0801a1db1c936945a226961334ec11d85905ae58a09a42507aac";
revision = "1";
editedCabalFile = "1kpfmrwwdaxjqwbsc6m9imlcfi2vvkz62pin5nrvm1fk17isy69v";
libraryHaskellDepends = [
base
binary
binary-ieee754
binary-parsers
blaze-textual
bytestring
bytestring-lexing
cryptonite
io-streams
memory
monad-loops
network
scientific
tcp-streams
text
time
tls
vector
wire-streams
word24
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/winterland1989/mysql-haskell";
description = "pure haskell MySQL driver";
license = stdenv.lib.licenses.bsd3;

}) {};
"mysql-haskell-nem" = callPackage
({
  mkDerivation
, base
, bytestring
, io-streams
, mysql-haskell
, scientific
, stdenv
, text
, time
}:
mkDerivation {

pname = "mysql-haskell-nem";
version = "0.1.0.0";
sha256 = "7a0868b76edc96a7aff7860f96436b9040f6cb9319dd67f68bfd700948721f0d";
libraryHaskellDepends = [
base
bytestring
io-streams
mysql-haskell
scientific
text
time
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/lorenzo/mysql-haskell-nem#readme";
description = "Adds a interface like mysql-simple to mysql-haskell";
license = stdenv.lib.licenses.bsd3;

}) {};
"mysql-haskell-openssl" = callPackage
({
  mkDerivation
, base
, binary
, HsOpenSSL
, mysql-haskell
, stdenv
, tcp-streams
, tcp-streams-openssl
, wire-streams
}:
mkDerivation {

pname = "mysql-haskell-openssl";
version = "0.8.3.0";
sha256 = "44345ef9b5d98b1fca5089533990b8f4ba67afde7995282c323dacfb44dba55e";
libraryHaskellDepends = [
base
binary
HsOpenSSL
mysql-haskell
tcp-streams
tcp-streams-openssl
wire-streams
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/winterland1989/mysql-haskell";
description = "TLS support for mysql-haskell package using openssl";
license = stdenv.lib.licenses.bsd3;

}) {};
"mysql-simple" = callPackage
({
  mkDerivation
, attoparsec
, base
, base16-bytestring
, blaze-builder
, blaze-textual
, bytestring
, containers
, mysql
, old-locale
, pcre-light
, stdenv
, text
, time
}:
mkDerivation {

pname = "mysql-simple";
version = "0.4.5";
sha256 = "b03c422ed8a62fa7f98b62634a06da8454980c6a733e275020ca7cedbb6e7cb1";
libraryHaskellDepends = [
attoparsec
base
base16-bytestring
blaze-builder
blaze-textual
bytestring
containers
mysql
old-locale
pcre-light
text
time
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/paul-rouse/mysql-simple";
description = "A mid-level MySQL client library";
license = stdenv.lib.licenses.bsd3;

}) {};
"n-tuple" = callPackage
({
  mkDerivation
, base
, singletons
, stdenv
, vector
}:
mkDerivation {

pname = "n-tuple";
version = "0.0.2.0";
sha256 = "6af735b2ee31f6b5e344bd7e8eb0789f9b56d36141404348befaefe8d8d1023f";
libraryHaskellDepends = [
base
singletons
vector
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/athanclark/n-tuple#readme";
description = "Homogeneous tuples of arbitrary length";
license = stdenv.lib.licenses.bsd3;

}) {};
"nagios-check" = callPackage
({
  mkDerivation
, base
, bifunctors
, exceptions
, mtl
, stdenv
, text
}:
mkDerivation {

pname = "nagios-check";
version = "0.3.2";
sha256 = "1bc9b85cb10c396943d53c44e2701c5bc2a02ecdf3e8f46da238981f8b7860b7";
libraryHaskellDepends = [
base
bifunctors
exceptions
mtl
text
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/olorin/haskell-nagios-check";
description = "Package for writing monitoring plugins";
license = stdenv.lib.licenses.mit;

}) {};
"names-th" = callPackage
({
  mkDerivation
, base
, containers
, stdenv
, template-haskell
}:
mkDerivation {

pname = "names-th";
version = "0.2.0.3";
sha256 = "0ebe2b2f9bfe079d71d4ac805db6f3239f70a92c27dde0cea6c5235e273f5ec6";
libraryHaskellDepends = [
base
containers
template-haskell
];
doHaddock = false;
doCheck = false;
homepage = "http://khibino.github.io/haskell-relational-record/";
description = "Manipulate name strings for TH";
license = stdenv.lib.licenses.bsd3;

}) {};
"nano-erl" = callPackage
({
  mkDerivation
, base
, stdenv
, stm
}:
mkDerivation {

pname = "nano-erl";
version = "0.1.0.1";
sha256 = "370a60682b38ca77b793ee7326c54d5e74dd688f316f31fdd5cf999ad498ee12";
libraryHaskellDepends = [
base
stm
];
doHaddock = false;
doCheck = false;
description = "Small library for Erlang-style actor semantics";
license = stdenv.lib.licenses.mit;

}) {};
"nanospec" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "nanospec";
version = "0.2.2";
sha256 = "cf14ccc2b296c910000cdc3eb51b37389b3eb94139384b9555db79b8128595e5";
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/hspec/nanospec#readme";
description = "A lightweight implementation of a subset of Hspec's API";
license = stdenv.lib.licenses.mit;

}) {};
"naqsha" = callPackage
({
  mkDerivation
, base
, bytestring
, groups
, stdenv
, vector
}:
mkDerivation {

pname = "naqsha";
version = "0.2.0.1";
sha256 = "4941224601df58a801a5cd2fb345fa8785972c6fe098d0088bd5f8f369f39c94";
libraryHaskellDepends = [
base
bytestring
groups
vector
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/naqsha/naqsha.git";
description = "A library for working with geospatial data types";
license = stdenv.lib.licenses.bsd3;

}) {};
"nats" = callPackage
({
  mkDerivation
, stdenv
}:
mkDerivation {

pname = "nats";
version = "1.1.2";
sha256 = "b9d2d85d8612f9b06f8c9bfd1acecd848e03ab82cfb53afe1d93f5086b6e80ec";
doHaddock = false;
doCheck = false;
homepage = "http://github.com/ekmett/nats/";
description = "Natural numbers";
license = stdenv.lib.licenses.bsd3;

}) {};
"natural-sort" = callPackage
({
  mkDerivation
, base
, bytestring
, parsec
, stdenv
, text
}:
mkDerivation {

pname = "natural-sort";
version = "0.1.2";
sha256 = "7b72b734680827ab07df38a004d4f523540055389d62fcd587edd2fcf19a6b50";
libraryHaskellDepends = [
base
bytestring
parsec
text
];
doHaddock = false;
doCheck = false;
homepage = "https://john-millikin.com/software/natural-sort/";
description = "User-friendly text collation";
license = stdenv.lib.licenses.bsd3;

}) {};
"natural-transformation" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "natural-transformation";
version = "0.4";
sha256 = "aac28e2c1147ed77c1ec0f0eb607a577fa26d0fd67474293ba860ec124efc8af";
revision = "5";
editedCabalFile = "1wlmkq9k9aym4wig9rn5w6sygq2fg9kd02d18pfzgxw70icqjlq3";
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/ku-fpg/natural-transformation";
description = "A natural transformation package";
license = stdenv.lib.licenses.bsd3;

}) {};
"ndjson-conduit" = callPackage
({
  mkDerivation
, aeson
, attoparsec
, base
, bytestring
, conduit
, stdenv
}:
mkDerivation {

pname = "ndjson-conduit";
version = "0.1.0.5";
sha256 = "c037b8f7c47b146f1384585541ae8a4f9218bc4456f428935f973ae07da49db1";
libraryHaskellDepends = [
aeson
attoparsec
base
bytestring
conduit
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/srijs/haskell-ndjson-conduit";
description = "Conduit-based parsing and serialization for newline delimited JSON";
license = stdenv.lib.licenses.mit;

}) {};
"neat-interpolation" = callPackage
({
  mkDerivation
, base
, base-prelude
, parsec
, stdenv
, template-haskell
, text
}:
mkDerivation {

pname = "neat-interpolation";
version = "0.3.2.1";
sha256 = "5530e43ca4de09b972d173e522f9dc96265f3afe0df695a25f0141be816fa014";
libraryHaskellDepends = [
base
base-prelude
parsec
template-haskell
text
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/nikita-volkov/neat-interpolation";
description = "A quasiquoter for neat and simple multiline text interpolation";
license = stdenv.lib.licenses.mit;

}) {};
"netlib-carray" = callPackage
({
  mkDerivation
, base
, carray
, netlib-ffi
, stdenv
, transformers
}:
mkDerivation {

pname = "netlib-carray";
version = "0.0.1.1";
sha256 = "9bc702f6d09240400b99d0769aaa0fe6bf32f83b312d33a6e2dd7b75a173beef";
libraryHaskellDepends = [
base
carray
netlib-ffi
transformers
];
doHaddock = false;
doCheck = false;
homepage = "http://hub.darcs.net/thielema/netlib-carray/";
description = "Helper modules for CArray wrappers to BLAS and LAPACK";
license = stdenv.lib.licenses.bsd3;

}) {};
"netlib-ffi" = callPackage
({
  mkDerivation
, base
, stdenv
, storable-complex
, transformers
}:
mkDerivation {

pname = "netlib-ffi";
version = "0.0.1";
sha256 = "dc4a3f052dd7c47589dbd9a6fc25b51bf3b4b7f275253b70025b4b13571c27ed";
libraryHaskellDepends = [
base
storable-complex
transformers
];
doHaddock = false;
doCheck = false;
homepage = "http://hub.darcs.net/thielema/netlib-ffi/";
description = "Helper modules for FFI to BLAS and LAPACK";
license = stdenv.lib.licenses.bsd3;

}) {};
"netpbm" = callPackage
({
  mkDerivation
, attoparsec
, attoparsec-binary
, base
, bytestring
, stdenv
, storable-record
, unordered-containers
, vector
, vector-th-unbox
}:
mkDerivation {

pname = "netpbm";
version = "1.0.2";
sha256 = "846a04bca94be31c779888febc390c64cfba93e40f3a7a2f80ff6a6e44fcc2d7";
revision = "1";
editedCabalFile = "1vhwjv5c5gxn9l9982da54nzczbmj8rl09xn8ac7rix0zmmyvl50";
libraryHaskellDepends = [
attoparsec
attoparsec-binary
base
bytestring
storable-record
unordered-containers
vector
vector-th-unbox
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/nh2/haskell-netpbm";
description = "Loading PBM, PGM, PPM image files";
license = stdenv.lib.licenses.mit;

}) {};
"nettle" = callPackage
({
  mkDerivation
, base
, byteable
, bytestring
, crypto-cipher-types
, nettle
, securemem
, stdenv
, tagged
}:
mkDerivation {

pname = "nettle";
version = "0.2.0";
sha256 = "220184713b802c53ee26783b891a3bbee6c6b2571f798bd6def2496a504e9bde";
libraryHaskellDepends = [
base
byteable
bytestring
crypto-cipher-types
securemem
tagged
];
libraryPkgconfigDepends = [
nettle
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/stbuehler/haskell-nettle";
description = "safe nettle binding";
license = stdenv.lib.licenses.mit;

}) {inherit (pkgs) nettle;};
"netwire" = callPackage
({
  mkDerivation
, base
, containers
, deepseq
, parallel
, profunctors
, random
, semigroups
, stdenv
, time
, transformers
}:
mkDerivation {

pname = "netwire";
version = "5.0.3";
sha256 = "f1dde7293efe9cdb3080f53a1be702f473ef0bcc0d3e4ea2d23b847fa3ef222e";
libraryHaskellDepends = [
base
containers
deepseq
parallel
profunctors
random
semigroups
time
transformers
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/esoeylemez/netwire";
description = "Functional reactive programming library";
license = stdenv.lib.licenses.bsd3;

}) {};
"netwire-input" = callPackage
({
  mkDerivation
, base
, deepseq
, netwire
, stdenv
}:
mkDerivation {

pname = "netwire-input";
version = "0.0.7";
sha256 = "29c6b087c2092ca409442b28aca500642b870461ad820d8bc579097f19ed3db9";
libraryHaskellDepends = [
base
deepseq
netwire
];
doHaddock = false;
doCheck = false;
homepage = "https://www.github.com/Mokosha/netwire-input";
description = "Input handling abstractions for netwire";
license = stdenv.lib.licenses.mit;

}) {};
"netwire-input-glfw" = callPackage
({
  mkDerivation
, base
, containers
, deepseq
, GLFW-b
, mtl
, netwire-input
, stdenv
, stm
}:
mkDerivation {

pname = "netwire-input-glfw";
version = "0.0.10";
sha256 = "1ea458273055fa2f82451b889b9a2c54e0b5bbdf55a16c35d0ccd392793728e4";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
base
containers
deepseq
GLFW-b
mtl
netwire-input
stm
];
doHaddock = false;
doCheck = false;
homepage = "https://www.github.com/Mokosha/netwire-input-glfw";
description = "GLFW instance of netwire-input";
license = stdenv.lib.licenses.mit;

}) {};
"network" = callPackage
({
  mkDerivation
, base
, bytestring
, stdenv
, unix
}:
mkDerivation {

pname = "network";
version = "2.6.3.5";
sha256 = "9a18f6e4c930a4c4ebb7fea7d1fd7a6046564ee007104d0b845d5f71ccbe0441";
libraryHaskellDepends = [
base
bytestring
unix
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/haskell/network";
description = "Low-level networking interface";
license = stdenv.lib.licenses.bsd3;

}) {};
"network-anonymous-i2p" = callPackage
({
  mkDerivation
, attoparsec
, base
, bytestring
, exceptions
, mtl
, network
, network-attoparsec
, network-simple
, stdenv
, text
, transformers
, uuid
}:
mkDerivation {

pname = "network-anonymous-i2p";
version = "0.10.0";
sha256 = "cff5796c36c1ebbb969e5433538eb3f3979acef9825a7bfb683ed002023fff2c";
enableSeparateDataOutput = true;
libraryHaskellDepends = [
attoparsec
base
bytestring
exceptions
mtl
network
network-attoparsec
network-simple
text
transformers
uuid
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/solatis/haskell-network-anonymous-i2p";
description = "Haskell API for I2P anonymous networking";
license = stdenv.lib.licenses.mit;

}) {};
"network-anonymous-tor" = callPackage
({
  mkDerivation
, attoparsec
, base
, base32string
, bytestring
, exceptions
, hexstring
, network
, network-attoparsec
, network-simple
, socks
, splice
, stdenv
, text
, transformers
}:
mkDerivation {

pname = "network-anonymous-tor";
version = "0.11.0";
sha256 = "41aee5b34aaaec6fa47a56cca61fafec22097bda25d13d5baef6b7924e127549";
isLibrary = true;
isExecutable = true;
enableSeparateDataOutput = true;
libraryHaskellDepends = [
attoparsec
base
base32string
bytestring
exceptions
hexstring
network
network-attoparsec
network-simple
socks
text
transformers
];
executableHaskellDepends = [
base
exceptions
network
network-simple
splice
];
doHaddock = false;
doCheck = false;
homepage = "http://www.leonmergen.com/opensource.html";
description = "Haskell API for Tor anonymous networking";
license = stdenv.lib.licenses.mit;

}) {};
"network-attoparsec" = callPackage
({
  mkDerivation
, attoparsec
, base
, bytestring
, enclosed-exceptions
, exceptions
, lifted-base
, monad-control
, mtl
, network
, stdenv
, transformers
}:
mkDerivation {

pname = "network-attoparsec";
version = "0.12.2";
sha256 = "9790a9bad286ab1474dadbece3e4b2e1dd068d4ede3847cb73bcd66386bf08f0";
enableSeparateDataOutput = true;
libraryHaskellDepends = [
attoparsec
base
bytestring
enclosed-exceptions
exceptions
lifted-base
monad-control
mtl
network
transformers
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/solatis/haskell-network-attoparsec";
description = "Utility functions for running a parser against a socket";
license = stdenv.lib.licenses.mit;

}) {};
"network-carbon" = callPackage
({
  mkDerivation
, base
, bytestring
, network
, stdenv
, text
, time
, vector
}:
mkDerivation {

pname = "network-carbon";
version = "1.0.12";
sha256 = "ed96b917d8dd96950f04392f69c2313401f66957fe1a42e3be57db1c66f56139";
libraryHaskellDepends = [
base
bytestring
network
text
time
vector
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/ocharles/network-carbon";
description = "A Haskell implementation of the Carbon protocol (part of the Graphite monitoring tools)";
license = stdenv.lib.licenses.bsd3;

}) {};
"network-conduit-tls" = callPackage
({
  mkDerivation
, base
, bytestring
, conduit
, conduit-extra
, connection
, data-default-class
, network
, stdenv
, streaming-commons
, tls
, transformers
, unliftio-core
}:
mkDerivation {

pname = "network-conduit-tls";
version = "1.3.0";
sha256 = "746d245ae0719d8b8e560d1f9c2929656d3e1fbe86a040bad896317c35d24985";
libraryHaskellDepends = [
base
bytestring
conduit
conduit-extra
connection
data-default-class
network
streaming-commons
tls
transformers
unliftio-core
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/snoyberg/conduit";
description = "Create TLS-aware network code with conduits";
license = stdenv.lib.licenses.mit;

}) {};
"network-house" = callPackage
({
  mkDerivation
, array
, base
, containers
, mtl
, stdenv
}:
mkDerivation {

pname = "network-house";
version = "0.1.0.2";
sha256 = "071fbc22fc516175e78235d9e29ccefd8eec7c3caa2e6de74dddf62cdbffab43";
libraryHaskellDepends = [
array
base
containers
mtl
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/nh2/network-house";
description = "data and parsers for Ethernet, TCP, UDP, IPv4, IPv6, ICMP, DHCP, TFTP";
license = stdenv.lib.licenses.gpl2;

}) {};
"network-info" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "network-info";
version = "0.2.0.10";
sha256 = "5680f6975d34cf4f81fa7ca0c8efd682261d6a1119e06dece0f67c7bd97fd52a";
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/jystic/network-info";
description = "Access the local computer's basic network configuration";
license = stdenv.lib.licenses.bsd3;

}) {};
"network-ip" = callPackage
({
  mkDerivation
, base
, data-default-class
, data-dword
, data-endian
, data-serializer
, data-textual
, hashable
, parsers
, stdenv
, text-printer
, type-hint
}:
mkDerivation {

pname = "network-ip";
version = "0.3.0.2";
sha256 = "ee259d236312aafc4bd08dfeff2ebe4b4f930b2f5879764e1a6d5675c5105efe";
libraryHaskellDepends = [
base
data-default-class
data-dword
data-endian
data-serializer
data-textual
hashable
parsers
text-printer
type-hint
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/mvv/network-ip";
description = "Internet Protocol data structures";
license = stdenv.lib.licenses.bsd3;

}) {};
"network-multicast" = callPackage
({
  mkDerivation
, base
, network
, stdenv
}:
mkDerivation {

pname = "network-multicast";
version = "0.2.0";
sha256 = "0f3b50abc3a401c20cc6a0ec51a49d2a48e5b467d9fbd63b7cf803165fe975f2";
libraryHaskellDepends = [
base
network
];
doHaddock = false;
doCheck = false;
description = "Simple multicast library";
license = stdenv.lib.licenses.publicDomain;

}) {};
"network-simple" = callPackage
({
  mkDerivation
, base
, bytestring
, exceptions
, network
, stdenv
, transformers
}:
mkDerivation {

pname = "network-simple";
version = "0.4.1";
sha256 = "72be3a16779fffeb71436f421c7de4b83a78523362c4787a807c3174d7db9b1d";
libraryHaskellDepends = [
base
bytestring
exceptions
network
transformers
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/k0001/network-simple";
description = "Simple network sockets usage patterns";
license = stdenv.lib.licenses.bsd3;

}) {};
"network-transport" = callPackage
({
  mkDerivation
, base
, binary
, bytestring
, deepseq
, hashable
, stdenv
, transformers
}:
mkDerivation {

pname = "network-transport";
version = "0.5.2";
sha256 = "e795672b43d67ac7bfade72173548ae6bf8208c1890e22aba7809098558f9054";
libraryHaskellDepends = [
base
binary
bytestring
deepseq
hashable
transformers
];
doHaddock = false;
doCheck = false;
homepage = "http://haskell-distributed.github.com";
description = "Network abstraction layer";
license = stdenv.lib.licenses.bsd3;

}) {};
"network-transport-composed" = callPackage
({
  mkDerivation
, base
, bytestring
, network-transport
, stdenv
}:
mkDerivation {

pname = "network-transport-composed";
version = "0.2.1";
sha256 = "a35bbfbe35a7a6c6e20e9d839f9f5b30f82f3680863968f73ce82e0e03e55944";
libraryHaskellDepends = [
base
bytestring
network-transport
];
doHaddock = false;
doCheck = false;
homepage = "http://haskell-distributed.github.com";
description = "Compose network transports";
license = stdenv.lib.licenses.bsd3;

}) {};
"network-transport-inmemory" = callPackage
({
  mkDerivation
, base
, bytestring
, containers
, data-accessor
, network-transport
, stdenv
, stm
}:
mkDerivation {

pname = "network-transport-inmemory";
version = "0.5.2";
sha256 = "8245d795330157d90ad9de599854d119c6d8938a45ab8c4ec89f3160b2e9ef4e";
revision = "1";
editedCabalFile = "1cls49jpl0hs6pviyn1ga8nhsdgsvqg163sprif0pb21xz848d9k";
libraryHaskellDepends = [
base
bytestring
containers
data-accessor
network-transport
stm
];
doHaddock = false;
doCheck = false;
homepage = "http://haskell-distributed.github.com";
description = "In-memory instantiation of Network.Transport";
license = stdenv.lib.licenses.bsd3;

}) {};
"network-transport-tcp" = callPackage
({
  mkDerivation
, base
, bytestring
, containers
, data-accessor
, network
, network-transport
, stdenv
}:
mkDerivation {

pname = "network-transport-tcp";
version = "0.6.0";
sha256 = "774f0134e7ce09c833eb2ad21057c26b9041398b6ca991b5df1d4cfb42f2e696";
libraryHaskellDepends = [
base
bytestring
containers
data-accessor
network
network-transport
];
doHaddock = false;
doCheck = false;
homepage = "http://haskell-distributed.github.com";
description = "TCP instantiation of Network.Transport";
license = stdenv.lib.licenses.bsd3;

}) {};
"network-transport-tests" = callPackage
({
  mkDerivation
, ansi-terminal
, base
, bytestring
, containers
, mtl
, network-transport
, random
, stdenv
}:
mkDerivation {

pname = "network-transport-tests";
version = "0.2.4.2";
sha256 = "cb24c4bf7eed5a381eb21a3efadf8752050845e5d4426a1d2e00f128ea27cbc7";
libraryHaskellDepends = [
ansi-terminal
base
bytestring
containers
mtl
network-transport
random
];
doHaddock = false;
doCheck = false;
homepage = "http://haskell-distributed.github.com";
description = "Unit tests for Network.Transport implementations";
license = stdenv.lib.licenses.bsd3;

}) {};
"network-uri" = callPackage
({
  mkDerivation
, base
, deepseq
, parsec
, stdenv
}:
mkDerivation {

pname = "network-uri";
version = "2.6.1.0";
sha256 = "423e0a2351236f3fcfd24e39cdbc38050ec2910f82245e69ca72a661f7fc47f0";
revision = "1";
editedCabalFile = "141nj7q0p9wkn5gr41ayc63cgaanr9m59yym47wpxqr3c334bk32";
libraryHaskellDepends = [
base
deepseq
parsec
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/haskell/network-uri";
description = "URI manipulation";
license = stdenv.lib.licenses.bsd3;

}) {};
"newtype" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "newtype";
version = "0.2";
sha256 = "b714033abd9a8b0903bcef0d36d0913de2a5003c852f43f97fa688717289e459";
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
description = "A typeclass and set of functions for working with newtypes";
license = stdenv.lib.licenses.bsd3;

}) {};
"newtype-generics" = callPackage
({
  mkDerivation
, base
, stdenv
, transformers
}:
mkDerivation {

pname = "newtype-generics";
version = "0.5.3";
sha256 = "f295f001a86bdbcf759d6b91b9e7ae27cd431ccf41d9b9d34ee1c926b88efe45";
libraryHaskellDepends = [
base
transformers
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/sjakobi/bsb-http-chunked";
description = "A typeclass and set of functions for working with newtypes";
license = stdenv.lib.licenses.bsd3;

}) {};
"next-ref" = callPackage
({
  mkDerivation
, base
, stdenv
, stm
}:
mkDerivation {

pname = "next-ref";
version = "0.1.0.2";
sha256 = "a586f15c17d5d53dd647411d02660dcbfd293f38a75f030d6892a76a2c24789f";
libraryHaskellDepends = [
base
stm
];
doHaddock = false;
doCheck = false;
description = "A concurrency primitive for a slow consumer";
license = stdenv.lib.licenses.bsd3;

}) {};
"nfc" = callPackage
({
  mkDerivation
, base
, bytestring
, c2hs
, nfc
, stdenv
}:
mkDerivation {

pname = "nfc";
version = "0.1.0";
sha256 = "63b8f1d434c9e20c1df08ab532c4e098871b0788f9d1b8a5ed84bce1abb01167";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
base
bytestring
];
librarySystemDepends = [
nfc
];
libraryToolDepends = [
c2hs
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/centromere/nfc#readme";
description = "libnfc bindings";
license = stdenv.lib.licenses.publicDomain;

}) {inherit (pkgs) nfc;};
"nicify-lib" = callPackage
({
  mkDerivation
, base
, parsec
, stdenv
, transformers
}:
mkDerivation {

pname = "nicify-lib";
version = "1.0.1";
sha256 = "7d26f86d792dda166805e9dda17cfbc7a2101f3654fe798f4231385d8136e732";
libraryHaskellDepends = [
base
parsec
transformers
];
doHaddock = false;
doCheck = false;
description = "Pretty print the standard output of default `Show` instances";
license = stdenv.lib.licenses.mit;

}) {};
"nix-paths" = callPackage
({
  mkDerivation
, base
, nix
, process
, stdenv
}:
mkDerivation {

pname = "nix-paths";
version = "1.0.1";
sha256 = "ab37163bc2970ea16c2eb6e091d1e99ab50b8e2ba93c23d24dac761803e509f8";
libraryHaskellDepends = [
base
process
];
libraryToolDepends = [
nix
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/peti/nix-paths";
description = "Knowledge of Nix's installation directories";
license = stdenv.lib.licenses.bsd3;

}) {};
"non-empty" = callPackage
({
  mkDerivation
, base
, containers
, deepseq
, QuickCheck
, stdenv
, utility-ht
}:
mkDerivation {

pname = "non-empty";
version = "0.3";
sha256 = "77906c1d4c94738e8b34d9aa28c6a3981edb82df7ee82f2f43aeb57b20bd5be0";
libraryHaskellDepends = [
base
containers
deepseq
QuickCheck
utility-ht
];
doHaddock = false;
doCheck = false;
homepage = "http://hub.darcs.net/thielema/non-empty/";
description = "List-like structures with static restrictions on the number of elements";
license = stdenv.lib.licenses.bsd3;

}) {};
"non-empty-sequence" = callPackage
({
  mkDerivation
, base
, containers
, semigroups
, stdenv
}:
mkDerivation {

pname = "non-empty-sequence";
version = "0.2.0.2";
sha256 = "d9a3604c0c140197731895af56413edbf1cf6866f9c0636ece9d8314366dd1e1";
libraryHaskellDepends = [
base
containers
semigroups
];
doHaddock = false;
doCheck = false;
homepage = "http://www.github.com/massysett/non-empty-sequence";
description = "Non-empty sequence";
license = stdenv.lib.licenses.bsd3;

}) {};
"non-negative" = callPackage
({
  mkDerivation
, base
, QuickCheck
, semigroups
, stdenv
, utility-ht
}:
mkDerivation {

pname = "non-negative";
version = "0.1.2";
sha256 = "5614acf55f3c16a21fea263e375e8993f9b859e21997b0410c74fe6642c20138";
libraryHaskellDepends = [
base
QuickCheck
semigroups
utility-ht
];
doHaddock = false;
doCheck = false;
homepage = "http://code.haskell.org/~thielema/non-negative/";
description = "Non-negative numbers";
license = "GPL";

}) {};
"nonce" = callPackage
({
  mkDerivation
, base
, base64-bytestring
, bytestring
, entropy
, stdenv
, text
, transformers
, unliftio
, unliftio-core
}:
mkDerivation {

pname = "nonce";
version = "1.0.7";
sha256 = "4b4f6232b2cb07a6de47a838b4dc35c346a745683866dbfc6ebb8682158037e1";
libraryHaskellDepends = [
base
base64-bytestring
bytestring
entropy
text
transformers
unliftio
unliftio-core
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/prowdsponsor/nonce";
description = "Generate cryptographic nonces";
license = stdenv.lib.licenses.bsd3;

}) {};
"nondeterminism" = callPackage
({
  mkDerivation
, base
, containers
, mtl
, stdenv
}:
mkDerivation {

pname = "nondeterminism";
version = "1.4";
sha256 = "3037c93b0277037ab51ad8640f72a7975dcf48ba81570640be12d390d7b47dc5";
libraryHaskellDepends = [
base
containers
mtl
];
doHaddock = false;
doCheck = false;
description = "A monad and monad transformer for nondeterministic computations";
license = "LGPL";

}) {};
"normalization-insensitive" = callPackage
({
  mkDerivation
, base
, bytestring
, deepseq
, hashable
, stdenv
, text
, unicode-transforms
}:
mkDerivation {

pname = "normalization-insensitive";
version = "2.0.1";
sha256 = "3b54ba0c2fc0ea99321bbec7f28bedc771bf1ec0a3f9796da7e479829282cb02";
revision = "2";
editedCabalFile = "0djclsv0vzd56139ddzhykbwb3ny9mf8k2pryp8w33h9i4hv7axc";
libraryHaskellDepends = [
base
bytestring
deepseq
hashable
text
unicode-transforms
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/ppelleti/normalization-insensitive";
description = "Normalization insensitive string comparison";
license = stdenv.lib.licenses.bsd3;

}) {};
"nsis" = callPackage
({
  mkDerivation
, base
, stdenv
, transformers
, uniplate
}:
mkDerivation {

pname = "nsis";
version = "0.3.2";
sha256 = "b9985b8d62569c192d89b20965eed2b98186a67148b667202823c6389b8f15ca";
libraryHaskellDepends = [
base
transformers
uniplate
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/ndmitchell/nsis#readme";
description = "DSL for producing Windows Installer using NSIS";
license = stdenv.lib.licenses.bsd3;

}) {};
"numbers" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "numbers";
version = "3000.2.0.2";
sha256 = "f0cee40b90c3746bd0bc0559d3827d3cf1b1e2c43270b7ec9bf4fa458fcb5a77";
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/jwiegley/numbers#readme";
description = "Various number types";
license = stdenv.lib.licenses.bsd3;

}) {};
"numeric-extras" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "numeric-extras";
version = "0.1";
sha256 = "c700711021d96334be43a21fbd80a5f7146fdd6706ef8656f1d287ff000b61d6";
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/ekmett/numeric-extras";
description = "Useful tools from the C standard library";
license = stdenv.lib.licenses.bsd3;

}) {};
"numeric-prelude" = callPackage
({
  mkDerivation
, array
, base
, containers
, deepseq
, non-negative
, parsec
, QuickCheck
, random
, semigroups
, stdenv
, storable-record
, utility-ht
}:
mkDerivation {

pname = "numeric-prelude";
version = "0.4.3";
sha256 = "b8f8f9a660e598055898c1d6c981885c629882ae028fec90f91955bade19892d";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
array
base
containers
deepseq
non-negative
parsec
QuickCheck
random
semigroups
storable-record
utility-ht
];
doHaddock = false;
doCheck = false;
homepage = "http://www.haskell.org/haskellwiki/Numeric_Prelude";
description = "An experimental alternative hierarchy of numeric type classes";
license = stdenv.lib.licenses.bsd3;

}) {};
"numhask" = callPackage
({
  mkDerivation
, base
, protolude
, QuickCheck
, stdenv
, tasty
, tasty-quickcheck
}:
mkDerivation {

pname = "numhask";
version = "0.1.4.0";
sha256 = "f255a7ebe3479575d771ec528105b58107dc8b4a06591007ce2d4a8d1d69448c";
libraryHaskellDepends = [
base
protolude
QuickCheck
tasty
tasty-quickcheck
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/tonyday567/numhask#readme";
description = "A numeric prelude";
license = stdenv.lib.licenses.bsd3;

}) {};
"numhask-range" = callPackage
({
  mkDerivation
, adjunctions
, base
, distributive
, numhask
, protolude
, QuickCheck
, semigroupoids
, stdenv
}:
mkDerivation {

pname = "numhask-range";
version = "0.1.3.0";
sha256 = "f1ca2e5d0e4e9e2a4a8af7c64a3f953a7157a5bb2740297f577bb79811b982c0";
libraryHaskellDepends = [
adjunctions
base
distributive
numhask
protolude
QuickCheck
semigroupoids
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/tonyday567/numhask-range#readme";
description = "Numbers that are range representations";
license = stdenv.lib.licenses.bsd3;

}) {};
"numtype-dk" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "numtype-dk";
version = "0.5.0.1";
sha256 = "29dbb9bf7693989f94605804de31b1a4dacf53ab566ce0346445288eae95d017";
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/bjornbm/numtype-dk";
description = "Type-level integers, using TypeNats, Data Kinds, and Closed Type Families";
license = stdenv.lib.licenses.bsd3;

}) {};
"nvvm" = callPackage
({
  mkDerivation
, base
, bytestring
, c2hs
, Cabal
, cuda
, directory
, filepath
, stdenv
, template-haskell
}:
mkDerivation {

pname = "nvvm";
version = "0.8.0.3";
sha256 = "5997f69073d2f1d14f1c1f806fdebbc84c3276a8864adb16d9b482bb027d95cf";
setupHaskellDepends = [
base
Cabal
cuda
directory
filepath
template-haskell
];
libraryHaskellDepends = [
base
bytestring
cuda
template-haskell
];
libraryToolDepends = [
c2hs
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/tmcdonell/nvvm";
description = "FFI bindings to NVVM";
license = stdenv.lib.licenses.bsd3;

}) {};
"o-clock" = callPackage
({
  mkDerivation
, base
, ghc-prim
, stdenv
}:
mkDerivation {

pname = "o-clock";
version = "0.1.1";
sha256 = "00e486fb523c0bad188078ec22d144383247b810ea6272eceef819a413d6b3a9";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
base
ghc-prim
];
executableHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/serokell/o-clock";
description = "Type-safe time library";
license = stdenv.lib.licenses.mit;

}) {};
"oauthenticated" = callPackage
({
  mkDerivation
, aeson
, base
, base64-bytestring
, blaze-builder
, bytestring
, case-insensitive
, cryptonite
, exceptions
, http-client
, http-types
, memory
, mtl
, network
, network-uri
, stdenv
, text
, time
, transformers
}:
mkDerivation {

pname = "oauthenticated";
version = "0.2.1.0";
sha256 = "d44cd060a4bfb26b0b958a8a203fb25dc171c146093eab82827542264f57d222";
libraryHaskellDepends = [
aeson
base
base64-bytestring
blaze-builder
bytestring
case-insensitive
cryptonite
exceptions
http-client
http-types
memory
mtl
network
network-uri
text
time
transformers
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/tel/oauthenticated.git#readme";
description = "Simple OAuth for http-client";
license = stdenv.lib.licenses.mit;

}) {};
"objective" = callPackage
({
  mkDerivation
, base
, containers
, exceptions
, free
, hashable
, monad-skeleton
, mtl
, profunctors
, stdenv
, template-haskell
, transformers
, transformers-compat
, unordered-containers
, void
, witherable
}:
mkDerivation {

pname = "objective";
version = "1.1.2";
sha256 = "2fcf283ede3f447f2e65ed9c434bb8facef873ba534aa0de29eb5ffefcc86644";
revision = "1";
editedCabalFile = "039j3xac9ish0yk4w04bmip6g9p6ndfd9ngh46ya125ms4nhmyj4";
libraryHaskellDepends = [
base
containers
exceptions
free
hashable
monad-skeleton
mtl
profunctors
template-haskell
transformers
transformers-compat
unordered-containers
void
witherable
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/fumieval/objective";
description = "Composable objects";
license = stdenv.lib.licenses.bsd3;

}) {};
"ochintin-daicho" = callPackage
({
  mkDerivation
, base
, bookkeeping
, stdenv
, text
}:
mkDerivation {

pname = "ochintin-daicho";
version = "0.1.0.1";
sha256 = "d49094e19869862a4dcc24fc39b976be1b4b637c100b7d404f8c921ed10456e8";
libraryHaskellDepends = [
base
bookkeeping
text
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/arowM/haskell-ochintin-daicho#readme";
description = "A module to manage payroll books for Japanese companies";
license = stdenv.lib.licenses.mit;

}) {};
"oeis" = callPackage
({
  mkDerivation
, base
, HTTP
, network
, network-uri
, stdenv
}:
mkDerivation {

pname = "oeis";
version = "0.3.9";
sha256 = "8a692c0b898f5d89e607f9593697a24827981a1cfee53045c192084015061b8e";
revision = "1";
editedCabalFile = "0rb6l3qblay8aiwaznp35gj7vwmhm87y57wvf3babwrh91s88jaj";
libraryHaskellDepends = [
base
HTTP
network
network-uri
];
doHaddock = false;
doCheck = false;
description = "Interface to the Online Encyclopedia of Integer Sequences (OEIS)";
license = stdenv.lib.licenses.bsd3;

}) {};
"ofx" = callPackage
({
  mkDerivation
, base
, parsec
, pretty
, stdenv
, time
}:
mkDerivation {

pname = "ofx";
version = "0.4.2.0";
sha256 = "0e22e2269f099603832f666814235051fadf92cbdec3dfacf7d1e8231ccd95f1";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
base
parsec
pretty
time
];
executableHaskellDepends = [
base
parsec
pretty
time
];
doHaddock = false;
doCheck = false;
homepage = "http://www.github.com/massysett/ofx";
description = "Parser for OFX data";
license = stdenv.lib.licenses.bsd3;

}) {};
"old-locale" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "old-locale";
version = "1.0.0.7";
sha256 = "dbaf8bf6b888fb98845705079296a23c3f40ee2f449df7312f7f7f1de18d7b50";
revision = "2";
editedCabalFile = "04b9vn007hlvsrx4ksd3r8r3kbyaj2kvwxchdrmd4370qzi8p6gs";
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
description = "locale library";
license = stdenv.lib.licenses.bsd3;

}) {};
"old-time" = callPackage
({
  mkDerivation
, base
, old-locale
, stdenv
}:
mkDerivation {

pname = "old-time";
version = "1.1.0.3";
sha256 = "1ccb158b0f7851715d36b757c523b026ca1541e2030d02239802ba39b4112bc1";
revision = "2";
editedCabalFile = "1j6ln1dkvhdvnwl33bp0xf9lhc4sybqk0aw42p8cq81xwwzbn7y9";
libraryHaskellDepends = [
base
old-locale
];
doHaddock = false;
doCheck = false;
description = "Time library";
license = stdenv.lib.licenses.bsd3;

}) {};
"once" = callPackage
({
  mkDerivation
, base
, containers
, hashable
, stdenv
, template-haskell
, unordered-containers
}:
mkDerivation {

pname = "once";
version = "0.2";
sha256 = "753ec628a1fac1f308a4b0e75adee768f962815485e1832a8052ee9af61848a8";
libraryHaskellDepends = [
base
containers
hashable
template-haskell
unordered-containers
];
doHaddock = false;
doCheck = false;
homepage = "https://anonscm.debian.org/cgit/users/kaction-guest/haskell-once.git";
description = "memoization for IO actions and functions";
license = stdenv.lib.licenses.gpl3;

}) {};
"one-liner" = callPackage
({
  mkDerivation
, base
, bifunctors
, contravariant
, ghc-prim
, profunctors
, stdenv
, tagged
, transformers
}:
mkDerivation {

pname = "one-liner";
version = "0.9.2";
sha256 = "ab3056b1833685da9810ba40eccc381416cd3c531dd3c930f9a83fb7dcf4c7d7";
libraryHaskellDepends = [
base
bifunctors
contravariant
ghc-prim
profunctors
tagged
transformers
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/sjoerdvisscher/one-liner";
description = "Constraint-based generics";
license = stdenv.lib.licenses.bsd3;

}) {};
"one-liner-instances" = callPackage
({
  mkDerivation
, base
, one-liner
, random
, stdenv
}:
mkDerivation {

pname = "one-liner-instances";
version = "0.1.2.1";
sha256 = "9384f47a3bdd5be17fa8ac3deca8e406794a1e9e140ec3b173ccd8d22c00c9bf";
libraryHaskellDepends = [
base
one-liner
random
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/mstksg/one-liner-instances#readme";
description = "Generics-based implementations for common typeclasses";
license = stdenv.lib.licenses.bsd3;

}) {};
"online" = callPackage
({
  mkDerivation
, base
, foldl
, formatting
, numhask
, optparse-generic
, perf
, protolude
, scientific
, stdenv
, tdigest
, text
, vector
, vector-algorithms
}:
mkDerivation {

pname = "online";
version = "0.2.1.0";
sha256 = "9d7a7db4b78f4162f2495e4f85e16fd1606125b95d6cf087fe144d291c83419b";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
base
foldl
numhask
protolude
tdigest
vector
vector-algorithms
];
executableHaskellDepends = [
base
foldl
formatting
numhask
optparse-generic
perf
protolude
scientific
text
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/tonyday567/online#readme";
description = "online statistics";
license = stdenv.lib.licenses.bsd3;

}) {};
"oo-prototypes" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "oo-prototypes";
version = "0.1.0.0";
sha256 = "9eaee40e3221f817b957e472917977bdb06ac0e163a0c6ef87941de29a12f576";
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/yi-editor/oo-prototypes";
description = "Support for OO-like prototypes";
license = stdenv.lib.licenses.gpl2;

}) {};
"opaleye" = callPackage
({
  mkDerivation
, aeson
, base
, base16-bytestring
, bytestring
, case-insensitive
, contravariant
, postgresql-simple
, pretty
, product-profunctors
, profunctors
, scientific
, semigroups
, stdenv
, text
, time
, time-locale-compat
, transformers
, uuid
, void
}:
mkDerivation {

pname = "opaleye";
version = "0.6.7000.0";
sha256 = "b3d76dad4faf2ef1988196826e145e101878a44f201fa263b2946b77e6299287";
revision = "1";
editedCabalFile = "1g2asrmd4aaw61dcprs9mih1j065q9xipnrhkxablqwcpr8pzz21";
libraryHaskellDepends = [
aeson
base
base16-bytestring
bytestring
case-insensitive
contravariant
postgresql-simple
pretty
product-profunctors
profunctors
scientific
semigroups
text
time
time-locale-compat
transformers
uuid
void
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/tomjaguarpaw/haskell-opaleye";
description = "An SQL-generating DSL targeting PostgreSQL";
license = stdenv.lib.licenses.bsd3;

}) {};
"open-browser" = callPackage
({
  mkDerivation
, base
, process
, stdenv
}:
mkDerivation {

pname = "open-browser";
version = "0.2.1.0";
sha256 = "0bed2e63800f738e78a4803ed22902accb50ac02068b96c17ce83a267244ca66";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
base
process
];
executableHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/rightfold/open-browser";
description = "Open a web browser from Haskell";
license = stdenv.lib.licenses.bsd3;

}) {};
"open-witness" = callPackage
({
  mkDerivation
, base
, constraints
, hashable
, random
, stdenv
, template-haskell
, transformers
, witness
}:
mkDerivation {

pname = "open-witness";
version = "0.4.0.1";
sha256 = "0770500d6eeb301fc92d30bec2ccef55b05beb0200125fcbddb6b50836034111";
libraryHaskellDepends = [
base
constraints
hashable
random
template-haskell
transformers
witness
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/AshleyYakeley/open-witness";
description = "open witnesses";
license = stdenv.lib.licenses.bsd3;

}) {};
"openexr-write" = callPackage
({
  mkDerivation
, base
, binary
, bytestring
, data-binary-ieee754
, deepseq
, split
, stdenv
, vector
, vector-split
, zlib
}:
mkDerivation {

pname = "openexr-write";
version = "0.1.0.1";
sha256 = "6de3f2d859f72ad3654dbe24ef89aa98967a55a3fd98e0c090b93a04e4938538";
libraryHaskellDepends = [
base
binary
bytestring
data-binary-ieee754
deepseq
split
vector
vector-split
zlib
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/pavolzetor/openexr-write#readme";
description = "Library for writing images in OpenEXR HDR file format";
license = stdenv.lib.licenses.gpl3;

}) {};
"openpgp-asciiarmor" = callPackage
({
  mkDerivation
, attoparsec
, base
, base64-bytestring
, binary
, bytestring
, stdenv
}:
mkDerivation {

pname = "openpgp-asciiarmor";
version = "0.1.1";
sha256 = "b92f3f5316f18c9e30a95cd59888658384ddd20b628e4cd5fbb647177f52f607";
libraryHaskellDepends = [
attoparsec
base
base64-bytestring
binary
bytestring
];
doHaddock = false;
doCheck = false;
homepage = "http://floss.scru.org/openpgp-asciiarmor";
description = "OpenPGP (RFC4880) ASCII Armor codec";
license = stdenv.lib.licenses.isc;

}) {};
"opensource" = callPackage
({
  mkDerivation
, aeson
, base
, http-client
, http-client-tls
, stdenv
, text
, transformers
}:
mkDerivation {

pname = "opensource";
version = "0.1.0.0";
sha256 = "3459b6ce70fb8fc8bdf9d9f6ed0476724cb8a11b673fc60422edac2376620127";
revision = "1";
editedCabalFile = "02zb9m7d6fsjbqgwbjnkrpgqc93zm34bvzgasw903hhdkskshrp6";
libraryHaskellDepends = [
aeson
base
http-client
http-client-tls
text
transformers
];
doHaddock = false;
doCheck = false;
homepage = "https://api.opensource.org/";
description = "Haskell API Wrapper for the Open Source License API";
license = stdenv.lib.licenses.mit;

}) {};
"openssl-streams" = callPackage
({
  mkDerivation
, base
, bytestring
, HsOpenSSL
, io-streams
, network
, stdenv
}:
mkDerivation {

pname = "openssl-streams";
version = "1.2.1.3";
sha256 = "dc7170e835cf71a132903e2a6ccc976bd2984f9241ea2e4e99a9ece74f868f5f";
libraryHaskellDepends = [
base
bytestring
HsOpenSSL
io-streams
network
];
doHaddock = false;
doCheck = false;
description = "OpenSSL network support for io-streams";
license = stdenv.lib.licenses.bsd3;

}) {};
"operational" = callPackage
({
  mkDerivation
, base
, mtl
, random
, stdenv
}:
mkDerivation {

pname = "operational";
version = "0.2.3.5";
sha256 = "91d479063ae7ed3d0a6ae911bdee550fbf31cf341910f9778046b484c55b4af4";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
base
mtl
];
executableHaskellDepends = [
base
mtl
random
];
doHaddock = false;
doCheck = false;
homepage = "http://wiki.haskell.org/Operational";
description = "Implementation of difficult monads made easy with operational semantics";
license = stdenv.lib.licenses.bsd3;

}) {};
"operational-class" = callPackage
({
  mkDerivation
, base
, operational
, stdenv
, transformers
}:
mkDerivation {

pname = "operational-class";
version = "0.3.0.0";
sha256 = "8b28b9cb86a2dd520196f6a563538dc2c9e8730f0a0f5e5f3bca19559631e70b";
libraryHaskellDepends = [
base
operational
transformers
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/srijs/haskell-operational-class";
description = "MonadProgram typeclass for the operational package";
license = stdenv.lib.licenses.mit;

}) {};
"opml-conduit" = callPackage
({
  mkDerivation
, base
, case-insensitive
, conduit
, conduit-combinators
, containers
, lens-simple
, mono-traversable
, monoid-subclasses
, safe-exceptions
, semigroups
, stdenv
, text
, time
, timerep
, uri-bytestring
, xml-conduit
, xml-types
}:
mkDerivation {

pname = "opml-conduit";
version = "0.6.0.4";
sha256 = "480b557690aab79e3761ad7f1ba1d44873c3d395d2b27f2d133372a01c535d1d";
enableSeparateDataOutput = true;
libraryHaskellDepends = [
base
case-insensitive
conduit
conduit-combinators
containers
lens-simple
mono-traversable
monoid-subclasses
safe-exceptions
semigroups
text
time
timerep
uri-bytestring
xml-conduit
xml-types
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/k0ral/opml-conduit";
description = "Streaming parser/renderer for the OPML 2.0 format.";
license = stdenv.lib.licenses.publicDomain;

}) {};
"optional-args" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "optional-args";
version = "1.0.2";
sha256 = "2e3454ad77cba80b15c02dbe1915889fafa81a22deb7fe5e7e01b0dd8d85b0e4";
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
description = "Optional function arguments";
license = stdenv.lib.licenses.bsd3;

}) {};
"options" = callPackage
({
  mkDerivation
, base
, containers
, monads-tf
, stdenv
, transformers
}:
mkDerivation {

pname = "options";
version = "1.2.1.1";
sha256 = "283eea9ae2c539830c6c65f5c03fb00626cfd1274da0526c285c146fc3065a62";
libraryHaskellDepends = [
base
containers
monads-tf
transformers
];
doHaddock = false;
doCheck = false;
homepage = "https://john-millikin.com/software/haskell-options/";
description = "A powerful and easy-to-use command-line option parser";
license = stdenv.lib.licenses.mit;

}) {};
"optparse-applicative" = callPackage
({
  mkDerivation
, ansi-wl-pprint
, base
, process
, stdenv
, transformers
, transformers-compat
}:
mkDerivation {

pname = "optparse-applicative";
version = "0.14.2.0";
sha256 = "e1341e9831c7b10332d1b29cfa966a80d46b476bb52d99d50bdb53eb770d7f30";
libraryHaskellDepends = [
ansi-wl-pprint
base
process
transformers
transformers-compat
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/pcapriotti/optparse-applicative";
description = "Utilities and combinators for parsing command line options";
license = stdenv.lib.licenses.bsd3;

}) {};
"optparse-generic" = callPackage
({
  mkDerivation
, base
, bytestring
, Only
, optparse-applicative
, semigroups
, stdenv
, system-filepath
, text
, time
, transformers
, void
}:
mkDerivation {

pname = "optparse-generic";
version = "1.3.0";
sha256 = "80929958606e4a73672b570ba1a23493fbf46268666d14ab5af53623301c398f";
libraryHaskellDepends = [
base
bytestring
Only
optparse-applicative
semigroups
system-filepath
text
time
transformers
void
];
doHaddock = false;
doCheck = false;
description = "Auto-generate a command-line parser for your datatype";
license = stdenv.lib.licenses.bsd3;

}) {};
"optparse-simple" = callPackage
({
  mkDerivation
, base
, gitrev
, optparse-applicative
, stdenv
, template-haskell
, transformers
}:
mkDerivation {

pname = "optparse-simple";
version = "0.1.0";
sha256 = "838d795faa3de3b426b83df11834bead33d02d7fe89df30300ca05c72e714cbc";
libraryHaskellDepends = [
base
gitrev
optparse-applicative
template-haskell
transformers
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/fpco/optparse-simple#readme";
description = "Simple interface to optparse-applicative";
license = stdenv.lib.licenses.bsd3;

}) {};
"optparse-text" = callPackage
({
  mkDerivation
, base
, optparse-applicative
, stdenv
, text
}:
mkDerivation {

pname = "optparse-text";
version = "0.1.1.0";
sha256 = "f6c081ecec880ae4124f25c1d91ba3a1a3caed9d2fde9e977bceab7d300884ef";
libraryHaskellDepends = [
base
optparse-applicative
text
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/passy/optparse-text#readme";
description = "Data.Text helpers for optparse-applicative";
license = stdenv.lib.licenses.bsd3;

}) {};
"overhang" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "overhang";
version = "1.0.0";
sha256 = "1d68f59354930cdb4372adb86386ca9cbd699d90d2d8c8a1042314f296772a1e";
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/jship/overhang#readme";
description = "Hang loose with your lambdas!";
license = stdenv.lib.licenses.mit;

}) {};
"package-description-remote" = callPackage
({
  mkDerivation
, base
, bytestring
, Cabal
, lens
, lens-aeson
, stdenv
, wreq
}:
mkDerivation {

pname = "package-description-remote";
version = "0.2.0.0";
sha256 = "4a936d2346265d4d960875b12272e9f15aedf6aa6aa5f177f7ce30c7e4f68744";
libraryHaskellDepends = [
base
bytestring
Cabal
lens
lens-aeson
wreq
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/yamadapc/stack-run-auto/package-description-remote";
description = "Fetches a 'GenericPackageDescription' from Hackage";
license = stdenv.lib.licenses.mit;

}) {};
"packdeps" = callPackage
({
  mkDerivation
, base
, bytestring
, Cabal
, containers
, directory
, filepath
, optparse-applicative
, process
, semigroups
, split
, stdenv
, tar
, text
, time
}:
mkDerivation {

pname = "packdeps";
version = "0.4.4";
sha256 = "54a8d40b3a5cb6c7df349884dc7f0f37b6bac21f5064fc12f52ee0d4e2628b7e";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
base
bytestring
Cabal
containers
directory
filepath
split
tar
text
time
];
executableHaskellDepends = [
base
Cabal
containers
optparse-applicative
process
semigroups
];
doHaddock = false;
doCheck = false;
homepage = "http://packdeps.haskellers.com/";
description = "Check your cabal packages for lagging dependencies";
license = stdenv.lib.licenses.bsd3;

}) {};
"pager" = callPackage
({
  mkDerivation
, base
, bytestring
, conduit
, conduit-extra
, directory
, process
, resourcet
, safe
, stdenv
, terminfo
, text
, transformers
, unix
}:
mkDerivation {

pname = "pager";
version = "0.1.1.0";
sha256 = "3e1e4f2ca17be6dd68d2d480f29e7a770c0f7ca3109aa1980da677d96cd4eef3";
isLibrary = true;
isExecutable = true;
enableSeparateDataOutput = true;
libraryHaskellDepends = [
base
bytestring
conduit
conduit-extra
directory
process
resourcet
safe
terminfo
text
transformers
unix
];
executableHaskellDepends = [
base
bytestring
conduit-extra
text
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/pharpend/pager";
description = "Open up a pager, like 'less' or 'more'";
license = stdenv.lib.licenses.bsd2;

}) {};
"pagerduty" = callPackage
({
  mkDerivation
, aeson
, base
, bifunctors
, bytestring
, bytestring-conversion
, conduit
, data-default-class
, exceptions
, generics-sop
, http-client
, http-types
, lens
, lens-aeson
, mmorph
, monad-control
, mtl
, stdenv
, template-haskell
, text
, time
, time-locale-compat
, transformers
, transformers-base
, transformers-compat
, unordered-containers
}:
mkDerivation {

pname = "pagerduty";
version = "0.0.8";
sha256 = "2f8f9ef70a672dd9160beb1e87d9b88d8cbd6f137637f4aed98df756ea270463";
libraryHaskellDepends = [
aeson
base
bifunctors
bytestring
bytestring-conversion
conduit
data-default-class
exceptions
generics-sop
http-client
http-types
lens
lens-aeson
mmorph
monad-control
mtl
template-haskell
text
time
time-locale-compat
transformers
transformers-base
transformers-compat
unordered-containers
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/brendanhay/pagerduty";
description = "Client library for PagerDuty Integration and REST APIs";
license = "unknown";

}) {};
"pagination" = callPackage
({
  mkDerivation
, base
, deepseq
, exceptions
, stdenv
}:
mkDerivation {

pname = "pagination";
version = "0.2.1";
sha256 = "88dcbae69e830adac0943f24f8ae6915f9e4ba684531a76bce936767cbeb203d";
revision = "2";
editedCabalFile = "0wvwi3hymp2vhhpzpycdc65zbsqmi2h0c6r0nf8p5nkgsk4pm1k2";
libraryHaskellDepends = [
base
deepseq
exceptions
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/mrkkrp/pagination";
description = "Framework-agnostic pagination boilerplate";
license = stdenv.lib.licenses.bsd3;

}) {};
"palette" = callPackage
({
  mkDerivation
, array
, base
, colour
, containers
, stdenv
}:
mkDerivation {

pname = "palette";
version = "0.1.0.5";
sha256 = "7434530139793650b5a2dc8b8b32348ab8021c4eeaad774a1fd709c040ab9812";
revision = "1";
editedCabalFile = "1a5qsbd43wmw1f3dj6vnmzd9imh9gsnz29jc47ivbgj4x6mdmsq1";
libraryHaskellDepends = [
array
base
colour
containers
];
doHaddock = false;
doCheck = false;
homepage = "http://projects.haskell.org/diagrams";
description = "Utilities for choosing and creating color schemes";
license = stdenv.lib.licenses.bsd3;

}) {};
"pandoc" = callPackage
({
  mkDerivation
, aeson
, aeson-pretty
, base
, base64-bytestring
, binary
, blaze-html
, blaze-markup
, bytestring
, Cabal
, case-insensitive
, cmark-gfm
, containers
, data-default
, deepseq
, directory
, doctemplates
, exceptions
, filepath
, Glob
, haddock-library
, hslua
, hslua-module-text
, HTTP
, http-client
, http-client-tls
, http-types
, JuicyPixels
, mtl
, network
, network-uri
, pandoc-types
, parsec
, process
, random
, safe
, scientific
, SHA
, skylighting
, split
, stdenv
, syb
, tagsoup
, temporary
, texmath
, text
, time
, unix
, unordered-containers
, vector
, xml
, yaml
, zip-archive
, zlib
}:
mkDerivation {

pname = "pandoc";
version = "2.1.2";
sha256 = "dc0b26eff61c6eed2e00927fa2c6b966ca758dea1596f3049cc70ae8b650eb65";
revision = "2";
editedCabalFile = "0s7hhycdkjqw4sd6qj4n7lrf76aa4yaw4kaq35ivpjin7hrf011j";
configureFlags = [
"-fhttps"
"-f-trypandoc"
];
isLibrary = true;
isExecutable = true;
enableSeparateDataOutput = true;
setupHaskellDepends = [
base
Cabal
];
libraryHaskellDepends = [
aeson
aeson-pretty
base
base64-bytestring
binary
blaze-html
blaze-markup
bytestring
case-insensitive
cmark-gfm
containers
data-default
deepseq
directory
doctemplates
exceptions
filepath
Glob
haddock-library
hslua
hslua-module-text
HTTP
http-client
http-client-tls
http-types
JuicyPixels
mtl
network
network-uri
pandoc-types
parsec
process
random
safe
scientific
SHA
skylighting
split
syb
tagsoup
temporary
texmath
text
time
unix
unordered-containers
vector
xml
yaml
zip-archive
zlib
];
executableHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
homepage = "http://pandoc.org";
description = "Conversion between markup formats";
license = "GPL";

}) {};
"pandoc-citeproc" = callPackage
({
  mkDerivation
, aeson
, aeson-pretty
, attoparsec
, base
, base-compat
, bytestring
, Cabal
, containers
, data-default
, directory
, filepath
, hs-bibutils
, mtl
, old-locale
, pandoc
, pandoc-types
, parsec
, rfc5051
, setenv
, split
, stdenv
, syb
, tagsoup
, text
, time
, unordered-containers
, vector
, xml-conduit
, yaml
}:
mkDerivation {

pname = "pandoc-citeproc";
version = "0.14.3.1";
sha256 = "42c0b2c8365441bf884daa6202e6ed01b42181cf255406c88b3b31cd27cb467a";
isLibrary = true;
isExecutable = true;
enableSeparateDataOutput = true;
setupHaskellDepends = [
base
Cabal
];
libraryHaskellDepends = [
aeson
base
base-compat
bytestring
containers
data-default
directory
filepath
hs-bibutils
mtl
old-locale
pandoc
pandoc-types
parsec
rfc5051
setenv
split
syb
tagsoup
text
time
unordered-containers
vector
xml-conduit
yaml
];
executableHaskellDepends = [
aeson
aeson-pretty
attoparsec
base
base-compat
bytestring
filepath
pandoc
pandoc-types
syb
text
yaml
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/jgm/pandoc-citeproc";
description = "Supports using pandoc with citeproc";
license = stdenv.lib.licenses.bsd3;

}) {};
"pandoc-types" = callPackage
({
  mkDerivation
, aeson
, base
, bytestring
, containers
, deepseq
, ghc-prim
, QuickCheck
, stdenv
, syb
, transformers
}:
mkDerivation {

pname = "pandoc-types";
version = "1.17.3.1";
sha256 = "4b1674f7d000da4f86e775f6178e1939fe506e2e4b45c8842dc0182ad92a1736";
libraryHaskellDepends = [
aeson
base
bytestring
containers
deepseq
ghc-prim
QuickCheck
syb
transformers
];
doHaddock = false;
doCheck = false;
homepage = "http://johnmacfarlane.net/pandoc";
description = "Types for representing a structured document";
license = stdenv.lib.licenses.bsd3;

}) {};
"pango" = callPackage
({
  mkDerivation
, array
, base
, Cabal
, cairo
, containers
, directory
, filepath
, glib
, gtk2hs-buildtools
, mtl
, pango
, pretty
, process
, stdenv
, text
}:
mkDerivation {

pname = "pango";
version = "0.13.5.0";
sha256 = "bf59b9273134e5d1c9c648a253e5a766cd1ef51afc2216175bce21a15b6d49e8";
enableSeparateDataOutput = true;
setupHaskellDepends = [
base
Cabal
filepath
gtk2hs-buildtools
];
libraryHaskellDepends = [
array
base
cairo
containers
directory
glib
mtl
pretty
process
text
];
libraryPkgconfigDepends = [
pango
];
doHaddock = false;
doCheck = false;
homepage = "http://projects.haskell.org/gtk2hs/";
description = "Binding to the Pango text rendering engine";
license = stdenv.lib.licenses.lgpl21;

}) {inherit (pkgs) pango;};
"papillon" = callPackage
({
  mkDerivation
, base
, bytestring
, directory
, filepath
, monads-tf
, stdenv
, template-haskell
, transformers
}:
mkDerivation {

pname = "papillon";
version = "0.1.0.5";
sha256 = "f384ff05d5cb0fed420bc700dabdb3e8beef191921f9759b12bf3dfe60ad82b0";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
base
bytestring
monads-tf
template-haskell
transformers
];
executableHaskellDepends = [
base
directory
filepath
monads-tf
template-haskell
transformers
];
doHaddock = false;
doCheck = false;
homepage = "https://skami.iocikun.jp/haskell/packages/papillon";
description = "packrat parser";
license = stdenv.lib.licenses.bsd3;

}) {};
"parallel" = callPackage
({
  mkDerivation
, array
, base
, containers
, deepseq
, stdenv
}:
mkDerivation {

pname = "parallel";
version = "3.2.1.1";
sha256 = "323bb9bc9e36fb9bfb08e68a772411302b1599bfffbc6de20fa3437ce1473c17";
revision = "1";
editedCabalFile = "12sgigg7r4nmyhbfn1p09ajf4s576yca31b7daj5zpp1mxgb5x7i";
libraryHaskellDepends = [
array
base
containers
deepseq
];
doHaddock = false;
doCheck = false;
description = "Parallel programming library";
license = stdenv.lib.licenses.bsd3;

}) {};
"parallel-io" = callPackage
({
  mkDerivation
, base
, containers
, extensible-exceptions
, random
, stdenv
}:
mkDerivation {

pname = "parallel-io";
version = "0.3.3";
sha256 = "3a14c02b9b8b7c72577eb90a8dd72de75d99192def87d7aa79545ee4d6e80645";
revision = "1";
editedCabalFile = "1vlb2x1ghih4l64031rmh7h643c3knh5r5mwilf7g8izb58ypvkm";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
base
containers
extensible-exceptions
random
];
doHaddock = false;
doCheck = false;
homepage = "http://batterseapower.github.com/parallel-io";
description = "Combinators for executing IO actions in parallel on a thread pool";
license = stdenv.lib.licenses.bsd3;

}) {};
"parseargs" = callPackage
({
  mkDerivation
, base
, containers
, stdenv
}:
mkDerivation {

pname = "parseargs";
version = "0.2.0.8";
sha256 = "7b789204c15d0c478db3d133f349a6970b5509fc6af655faedc03c7426dcf7d6";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
base
containers
];
executableHaskellDepends = [
base
containers
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/BartMassey/parseargs";
description = "Full-featured command-line argument parsing library";
license = stdenv.lib.licenses.bsd3;

}) {};
"parsec" = callPackage
({
  mkDerivation
, base
, bytestring
, mtl
, stdenv
, text
}:
mkDerivation {

pname = "parsec";
version = "3.1.13.0";
sha256 = "7861ae437a6177ee7c08899432fd8c062e7c110361da48a9f9e88263fd4d80f1";
revision = "1";
editedCabalFile = "1dpr1wfpykkl6kayp4wnyn0n1zv7pvqksax2i54dhdgjijj8qynd";
libraryHaskellDepends = [
base
bytestring
mtl
text
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/hvr/parsec";
description = "Monadic parser combinators";
license = stdenv.lib.licenses.bsd3;

}) {};
"parsec-numeric" = callPackage
({
  mkDerivation
, base
, parsec
, stdenv
}:
mkDerivation {

pname = "parsec-numeric";
version = "0.1.0.0";
sha256 = "7bdd9ae4aa63695e3072c73d99b85ef1572ffe9f5a07621edaa9515393a6e52f";
libraryHaskellDepends = [
base
parsec
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/AndrewRademacher/parsec-numeric";
description = "Parsec combinators for parsing Haskell numeric types";
license = "unknown";

}) {};
"parser-combinators" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "parser-combinators";
version = "0.4.0";
sha256 = "b124e9411de085972e4d9ae8254299e8e773e964b2798eb400d5cf6814f8f3ab";
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/mrkkrp/parser-combinators";
description = "Lightweight package providing commonly useful parser combinators";
license = stdenv.lib.licenses.bsd3;

}) {};
"parsers" = callPackage
({
  mkDerivation
, attoparsec
, base
, base-orphans
, charset
, containers
, mtl
, parsec
, scientific
, semigroups
, stdenv
, text
, transformers
, unordered-containers
}:
mkDerivation {

pname = "parsers";
version = "0.12.8";
sha256 = "5aba0afdd53f3bd39b145ca858b696ba0a36d099c694742fb6a5d38900806bc8";
libraryHaskellDepends = [
attoparsec
base
base-orphans
charset
containers
mtl
parsec
scientific
semigroups
text
transformers
unordered-containers
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/ekmett/parsers/";
description = "Parsing combinators";
license = stdenv.lib.licenses.bsd3;

}) {};
"partial-handler" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "partial-handler";
version = "1.0.3";
sha256 = "94c72af024417ec04e3d94b5b57c7bfeb8b48acb8444e7c0fe0764ff1139c131";
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/nikita-volkov/partial-handler";
description = "A composable exception handler";
license = stdenv.lib.licenses.mit;

}) {};
"partial-isomorphisms" = callPackage
({
  mkDerivation
, base
, stdenv
, template-haskell
}:
mkDerivation {

pname = "partial-isomorphisms";
version = "0.2.2.1";
sha256 = "4c551fa69119e87de1ba0ec7b854f6ed13fb2fe2768db4afff2f8468f0f4a164";
libraryHaskellDepends = [
base
template-haskell
];
doHaddock = false;
doCheck = false;
homepage = "http://www.informatik.uni-marburg.de/~rendel/unparse";
description = "Partial isomorphisms";
license = stdenv.lib.licenses.bsd3;

}) {};
"partial-order" = callPackage
({
  mkDerivation
, base
, containers
, stdenv
}:
mkDerivation {

pname = "partial-order";
version = "0.1.2.1";
sha256 = "e37dc77f4b8852b1c96fe9b8b06db41aa00d06c5ce7f0c1c5bea15ea462ac397";
libraryHaskellDepends = [
base
containers
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/mtesseract/haskell-partial-order";
description = "Provides typeclass suitable for types admitting a partial order";
license = stdenv.lib.licenses.bsd3;

}) {};
"partial-semigroup" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "partial-semigroup";
version = "0.3.0.3";
sha256 = "3d273d24524ddfab2999a047e43f2f25ee89b0ea083f24a527de8a7da74056ef";
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/chris-martin/partial-semigroup";
description = "A partial binary associative operator";
license = stdenv.lib.licenses.asl20;

}) {};
"path" = callPackage
({
  mkDerivation
, aeson
, base
, deepseq
, exceptions
, filepath
, hashable
, stdenv
, template-haskell
}:
mkDerivation {

pname = "path";
version = "0.6.1";
sha256 = "4b8bd85a13395b4240c639b9cf804371854d5dac69158f661068bd3089a25e59";
revision = "1";
editedCabalFile = "05b1zwx2a893h4h5wvgpc5g5pyx71hfmx409rqisd8s1bq1hn463";
libraryHaskellDepends = [
aeson
base
deepseq
exceptions
filepath
hashable
template-haskell
];
doHaddock = false;
doCheck = false;
description = "Support for well-typed paths";
license = stdenv.lib.licenses.bsd3;

}) {};
"path-extra" = callPackage
({
  mkDerivation
, base
, exceptions
, path
, stdenv
}:
mkDerivation {

pname = "path-extra";
version = "0.0.6";
sha256 = "883aa371560b3b0d41df1954ed44c6dd6e5d77cb3bd4ebf0fd4b9d72df0a6935";
libraryHaskellDepends = [
base
exceptions
path
];
doHaddock = false;
doCheck = false;
description = "Chris Done's path library, enriched with URL-related goodies";
license = stdenv.lib.licenses.bsd3;

}) {};
"path-io" = callPackage
({
  mkDerivation
, base
, containers
, directory
, dlist
, exceptions
, filepath
, path
, stdenv
, temporary
, time
, transformers
, unix-compat
}:
mkDerivation {

pname = "path-io";
version = "1.3.3";
sha256 = "2aec05914a7569f221cf73e25070fea5fad8125a9a93845e8d614a1c291e35bd";
revision = "3";
editedCabalFile = "1h9hsibbflkxpjl2fqamqiv3x3gasf51apnmklrs9l9x8r32hzcc";
libraryHaskellDepends = [
base
containers
directory
dlist
exceptions
filepath
path
temporary
time
transformers
unix-compat
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/mrkkrp/path-io";
description = "Interface to ‘directory’ package for users of ‘path’";
license = stdenv.lib.licenses.bsd3;

}) {};
"path-pieces" = callPackage
({
  mkDerivation
, base
, stdenv
, text
, time
}:
mkDerivation {

pname = "path-pieces";
version = "0.2.1";
sha256 = "080bd49f53e20597ca3e5962e0c279a3422345f5b088840a30a751cd76d4a36f";
revision = "1";
editedCabalFile = "0p7wsphh513s8l5d62lzgbhk2l1h6kj5y7bc27qqjsry9g8ah4y7";
libraryHaskellDepends = [
base
text
time
];
doHaddock = false;
doCheck = false;
description = "Components of paths";
license = stdenv.lib.licenses.bsd3;

}) {};
"path-text-utf8" = callPackage
({
  mkDerivation
, base
, bytestring
, path
, safe-exceptions
, stdenv
, text
}:
mkDerivation {

pname = "path-text-utf8";
version = "0.0.1.0";
sha256 = "8f110e6ef0f50566ff0ee03e4551d5c6913ad3c1d5da9ee91229a44b2437f37c";
revision = "1";
editedCabalFile = "1m04dyqqamh9lkkmcbf2dg7ivd5kb2dxqh9b844lr7mk5qganar6";
libraryHaskellDepends = [
base
bytestring
path
safe-exceptions
text
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/chris-martin/path-text-utf8";
description = "Read and write UTF-8 text files";
license = stdenv.lib.licenses.asl20;

}) {};
"pathtype" = callPackage
({
  mkDerivation
, base
, deepseq
, directory
, old-time
, QuickCheck
, semigroups
, stdenv
, tagged
, time
, transformers
, utility-ht
}:
mkDerivation {

pname = "pathtype";
version = "0.8.1";
sha256 = "d5e6dc557dcf53e97cc2f7f6d6ee30992920e3ea074042b6ac11f74f2792340f";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
base
deepseq
directory
old-time
QuickCheck
semigroups
tagged
time
transformers
utility-ht
];
doHaddock = false;
doCheck = false;
homepage = "http://hub.darcs.net/thielema/pathtype/";
description = "Type-safe replacement for System.FilePath etc";
license = stdenv.lib.licenses.bsd3;

}) {};
"pathwalk" = callPackage
({
  mkDerivation
, base
, directory
, filepath
, stdenv
, transformers
}:
mkDerivation {

pname = "pathwalk";
version = "0.3.1.2";
sha256 = "76e0d0646a3133a062dbae4e9d37d59e71d6328706bb178552a93800e4550e91";
libraryHaskellDepends = [
base
directory
filepath
transformers
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/Xe/pathwalk";
description = "Path walking utilities for Haskell programs";
license = stdenv.lib.licenses.mit;

}) {};
"patience" = callPackage
({
  mkDerivation
, base
, containers
, stdenv
}:
mkDerivation {

pname = "patience";
version = "0.1.1";
sha256 = "35c7c334d344b3cbdc61cc88c559bedb300ace860a80e3990aeb268f1f10db63";
libraryHaskellDepends = [
base
containers
];
doHaddock = false;
doCheck = false;
description = "Patience diff and longest increasing subsequence";
license = stdenv.lib.licenses.bsd3;

}) {};
"pattern-arrows" = callPackage
({
  mkDerivation
, base
, mtl
, stdenv
}:
mkDerivation {

pname = "pattern-arrows";
version = "0.0.2";
sha256 = "6fc2d972e72785d727d2b68e1f82ef94a2c93cedbc00e6a4cdc03498825c078f";
libraryHaskellDepends = [
base
mtl
];
doHaddock = false;
doCheck = false;
homepage = "http://blog.functorial.com/posts/2013-10-27-Pretty-Printing-Arrows.html";
description = "Arrows for Pretty Printing";
license = stdenv.lib.licenses.mit;

}) {};
"pcf-font" = callPackage
({
  mkDerivation
, base
, binary
, bytestring
, containers
, stdenv
, vector
, zlib
}:
mkDerivation {

pname = "pcf-font";
version = "0.2.2.0";
sha256 = "8a67d04240a7668e669414d1b4f531d290c79a63198e0ecf02cb0339bff098ef";
libraryHaskellDepends = [
base
binary
bytestring
containers
vector
zlib
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/michael-swan/pcf-font";
description = "PCF font parsing and rendering library";
license = stdenv.lib.licenses.bsd3;

}) {};
"pcf-font-embed" = callPackage
({
  mkDerivation
, base
, bytestring
, pcf-font
, stdenv
, template-haskell
, vector
}:
mkDerivation {

pname = "pcf-font-embed";
version = "0.1.2.0";
sha256 = "c55d51ee6f959c9c05bb9d9adac3aad1cd87b2bba3cca7d3667d67f1a230fd51";
libraryHaskellDepends = [
base
bytestring
pcf-font
template-haskell
vector
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/michael-swan/pcf-font-embed";
description = "Template Haskell for embedding text rendered using PCF fonts";
license = stdenv.lib.licenses.bsd3;

}) {};
"pcre-heavy" = callPackage
({
  mkDerivation
, base
, base-compat
, bytestring
, pcre-light
, semigroups
, stdenv
, string-conversions
, template-haskell
}:
mkDerivation {

pname = "pcre-heavy";
version = "1.0.0.2";
sha256 = "8a5cf697b7683127812450cef57d0d74ac5c1117ec80618d10509642f793cbd1";
libraryHaskellDepends = [
base
base-compat
bytestring
pcre-light
semigroups
string-conversions
template-haskell
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/myfreeweb/pcre-heavy";
description = "A regexp library on top of pcre-light you can actually use";
license = stdenv.lib.licenses.publicDomain;

}) {};
"pcre-light" = callPackage
({
  mkDerivation
, base
, bytestring
, pcre
, stdenv
}:
mkDerivation {

pname = "pcre-light";
version = "0.4.0.4";
sha256 = "02c97e39263d18fd26aa63d52c88c4bfbb5c3f66ab40564552e7f11d5d889e75";
libraryHaskellDepends = [
base
bytestring
];
libraryPkgconfigDepends = [
pcre
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/Daniel-Diaz/pcre-light";
description = "Portable regex library for Perl 5 compatible regular expressions";
license = stdenv.lib.licenses.bsd3;

}) {inherit (pkgs) pcre;};
"pcre-utils" = callPackage
({
  mkDerivation
, array
, attoparsec
, base
, bytestring
, mtl
, regex-pcre-builtin
, stdenv
, vector
}:
mkDerivation {

pname = "pcre-utils";
version = "0.1.8.1.1";
sha256 = "1f2a80ca63308e182542534866a844efaf880deac4145213bf1c83a560586df4";
libraryHaskellDepends = [
array
attoparsec
base
bytestring
mtl
regex-pcre-builtin
vector
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/bartavelle/pcre-utils";
description = "Perl-like substitute and split for PCRE regexps";
license = stdenv.lib.licenses.bsd3;

}) {};
"pdf-toolbox-content" = callPackage
({
  mkDerivation
, attoparsec
, base
, base16-bytestring
, bytestring
, containers
, io-streams
, pdf-toolbox-core
, stdenv
, text
}:
mkDerivation {

pname = "pdf-toolbox-content";
version = "0.0.5.1";
sha256 = "1c104e232e178603ff9dd8c6eaaf0ccbda918c70b40ed63f08fa1922a3c88488";
libraryHaskellDepends = [
attoparsec
base
base16-bytestring
bytestring
containers
io-streams
pdf-toolbox-core
text
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/Yuras/pdf-toolbox";
description = "A collection of tools for processing PDF files";
license = stdenv.lib.licenses.bsd3;

}) {};
"pdf-toolbox-core" = callPackage
({
  mkDerivation
, attoparsec
, base
, bytestring
, containers
, errors
, io-streams
, scientific
, stdenv
, transformers
, zlib-bindings
}:
mkDerivation {

pname = "pdf-toolbox-core";
version = "0.0.4.1";
sha256 = "cce3949ef5596b5d61032ce1547160dc5f52e3d5c556dcdb9aabf1582173a981";
libraryHaskellDepends = [
attoparsec
base
bytestring
containers
errors
io-streams
scientific
transformers
zlib-bindings
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/Yuras/pdf-toolbox";
description = "A collection of tools for processing PDF files";
license = stdenv.lib.licenses.bsd3;

}) {};
"pdf-toolbox-document" = callPackage
({
  mkDerivation
, base
, bytestring
, cipher-aes
, cipher-rc4
, containers
, crypto-api
, cryptohash
, io-streams
, pdf-toolbox-content
, pdf-toolbox-core
, stdenv
, text
, transformers
}:
mkDerivation {

pname = "pdf-toolbox-document";
version = "0.0.7.1";
sha256 = "3f7d379baa85c1cf9998e3f84177ad24b5cc8632fb211af7a09603e59596f0e1";
libraryHaskellDepends = [
base
bytestring
cipher-aes
cipher-rc4
containers
crypto-api
cryptohash
io-streams
pdf-toolbox-content
pdf-toolbox-core
text
transformers
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/Yuras/pdf-toolbox";
description = "A collection of tools for processing PDF files";
license = stdenv.lib.licenses.bsd3;

}) {};
"pdfinfo" = callPackage
({
  mkDerivation
, base
, mtl
, old-locale
, process-extras
, stdenv
, text
, time
, time-locale-compat
}:
mkDerivation {

pname = "pdfinfo";
version = "1.5.4";
sha256 = "9a6a1f7d8ab0a5e8f7f8276da070ccddec140d6b2549b084042159b639230911";
libraryHaskellDepends = [
base
mtl
old-locale
process-extras
text
time
time-locale-compat
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/chrisdone/pdfinfo";
description = "Wrapper around the pdfinfo command";
license = stdenv.lib.licenses.bsd3;

}) {};
"pell" = callPackage
({
  mkDerivation
, arithmoi
, base
, containers
, stdenv
}:
mkDerivation {

pname = "pell";
version = "0.1.1.0";
sha256 = "5e2002920c97bddbe3047dbc2eba3ddadd3823c4ca137c4a1d3314cb12dc4ad4";
libraryHaskellDepends = [
arithmoi
base
containers
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/brunjlar/pell";
description = "Package to solve the Generalized Pell Equation";
license = stdenv.lib.licenses.mit;

}) {};
"pem" = callPackage
({
  mkDerivation
, base
, basement
, bytestring
, memory
, stdenv
}:
mkDerivation {

pname = "pem";
version = "0.2.4";
sha256 = "770c4c1b9cd24b3db7f511f8a48404a0d098999e28573c3743a8a296bb96f8d4";
libraryHaskellDepends = [
base
basement
bytestring
memory
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/vincenthz/hs-pem";
description = "Privacy Enhanced Mail (PEM) format reader and writer";
license = stdenv.lib.licenses.bsd3;

}) {};
"perf" = callPackage
({
  mkDerivation
, base
, containers
, foldl
, formatting
, numhask
, optparse-generic
, protolude
, rdtsc
, scientific
, stdenv
, tdigest
, text
, time
, vector
}:
mkDerivation {

pname = "perf";
version = "0.3.1.1";
sha256 = "180835afeb2677fa8df65d07ee37a95bad21df20bd824f7e3f56768d42339b7f";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
base
containers
foldl
numhask
protolude
rdtsc
tdigest
time
];
executableHaskellDepends = [
base
formatting
numhask
optparse-generic
protolude
scientific
text
vector
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/tonyday567/perf#readme";
description = "low-level performance statistics";
license = stdenv.lib.licenses.bsd3;

}) {};
"perfect-hash-generator" = callPackage
({
  mkDerivation
, base
, binary
, bytestring
, containers
, data-ordlist
, directory
, filepath
, hashable
, optparse-applicative
, random
, stdenv
, text
, unordered-containers
, vector
}:
mkDerivation {

pname = "perfect-hash-generator";
version = "0.2.0.6";
sha256 = "df727611ca45994fc40e3e37ebae783a892f3b46db95897ba2df876e65f7b110";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
base
binary
bytestring
containers
data-ordlist
directory
filepath
hashable
text
unordered-containers
vector
];
executableHaskellDepends = [
base
binary
bytestring
containers
hashable
optparse-applicative
random
text
unordered-containers
vector
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/kostmo/perfect-hash-generator#readme";
description = "Perfect minimal hashing implementation in native Haskell";
license = stdenv.lib.licenses.asl20;

}) {};
"persistable-record" = callPackage
({
  mkDerivation
, array
, base
, containers
, dlist
, names-th
, product-isomorphic
, stdenv
, template-haskell
, th-data-compat
, transformers
}:
mkDerivation {

pname = "persistable-record";
version = "0.6.0.3";
sha256 = "c690daea6de51d738d500245643c9d7578111949e37608bcafca8555d2905989";
libraryHaskellDepends = [
array
base
containers
dlist
names-th
product-isomorphic
template-haskell
th-data-compat
transformers
];
doHaddock = false;
doCheck = false;
homepage = "http://khibino.github.io/haskell-relational-record/";
description = "Binding between SQL database values and haskell records";
license = stdenv.lib.licenses.bsd3;

}) {};
"persistable-types-HDBC-pg" = callPackage
({
  mkDerivation
, base
, bytestring
, convertible
, dlist
, HDBC
, persistable-record
, relational-query
, relational-query-HDBC
, stdenv
, text-postgresql
}:
mkDerivation {

pname = "persistable-types-HDBC-pg";
version = "0.0.3.2";
sha256 = "59408a7355ccf079d3a08f37818f79db297151f4e9e2b763df65d89802abbf35";
libraryHaskellDepends = [
base
bytestring
convertible
dlist
HDBC
persistable-record
relational-query
relational-query-HDBC
text-postgresql
];
doHaddock = false;
doCheck = false;
homepage = "http://khibino.github.io/haskell-relational-record/";
description = "HDBC and Relational-Record instances of PostgreSQL extended types";
license = stdenv.lib.licenses.bsd3;

}) {};
"persistent" = callPackage
({
  mkDerivation
, aeson
, attoparsec
, base
, base64-bytestring
, blaze-html
, blaze-markup
, bytestring
, conduit
, containers
, fast-logger
, haskell-src-meta
, http-api-data
, monad-logger
, mtl
, old-locale
, path-pieces
, resource-pool
, resourcet
, scientific
, silently
, stdenv
, tagged
, template-haskell
, text
, time
, transformers
, unliftio-core
, unordered-containers
, vector
, void
}:
mkDerivation {

pname = "persistent";
version = "2.8.2";
sha256 = "696bb279259e307778dc7fbd49565c48a66429f14e793a41a13cfae0968c1ec0";
revision = "1";
editedCabalFile = "18a6dfpjakcmyl9qnflgi63rss09zj3xg0py6bliary4y2cqw4fz";
libraryHaskellDepends = [
aeson
attoparsec
base
base64-bytestring
blaze-html
blaze-markup
bytestring
conduit
containers
fast-logger
haskell-src-meta
http-api-data
monad-logger
mtl
old-locale
path-pieces
resource-pool
resourcet
scientific
silently
tagged
template-haskell
text
time
transformers
unliftio-core
unordered-containers
vector
void
];
doHaddock = false;
doCheck = false;
homepage = "http://www.yesodweb.com/book/persistent";
description = "Type-safe, multi-backend data serialization";
license = stdenv.lib.licenses.mit;

}) {};
"persistent-mongoDB" = callPackage
({
  mkDerivation
, aeson
, attoparsec
, base
, bson
, bytestring
, cereal
, conduit
, containers
, http-api-data
, mongoDB
, network
, path-pieces
, persistent
, resource-pool
, resourcet
, stdenv
, text
, time
, transformers
, unliftio-core
}:
mkDerivation {

pname = "persistent-mongoDB";
version = "2.8.0";
sha256 = "f410a1427881d8d58f4d0dfcc875d84867d8afdcdd340573c9e298df303b178a";
libraryHaskellDepends = [
aeson
attoparsec
base
bson
bytestring
cereal
conduit
containers
http-api-data
mongoDB
network
path-pieces
persistent
resource-pool
resourcet
text
time
transformers
unliftio-core
];
doHaddock = false;
doCheck = false;
homepage = "http://www.yesodweb.com/book/persistent";
description = "Backend for the persistent library using mongoDB";
license = stdenv.lib.licenses.mit;

}) {};
"persistent-mysql" = callPackage
({
  mkDerivation
, aeson
, base
, blaze-builder
, bytestring
, conduit
, containers
, monad-logger
, mysql
, mysql-simple
, persistent
, resource-pool
, resourcet
, stdenv
, text
, transformers
, unliftio-core
}:
mkDerivation {

pname = "persistent-mysql";
version = "2.8.1";
sha256 = "80cc29f8fa90503a13c348e14f10dd0883f17837ca72a5cd5b2884fdb286e654";
libraryHaskellDepends = [
aeson
base
blaze-builder
bytestring
conduit
containers
monad-logger
mysql
mysql-simple
persistent
resource-pool
resourcet
text
transformers
unliftio-core
];
doHaddock = false;
doCheck = false;
homepage = "http://www.yesodweb.com/book/persistent";
description = "Backend for the persistent library using MySQL database server";
license = stdenv.lib.licenses.mit;

}) {};
"persistent-mysql-haskell" = callPackage
({
  mkDerivation
, aeson
, base
, bytestring
, conduit
, containers
, io-streams
, monad-logger
, mysql-haskell
, network
, persistent
, persistent-template
, resource-pool
, resourcet
, stdenv
, text
, time
, tls
, transformers
, unliftio-core
}:
mkDerivation {

pname = "persistent-mysql-haskell";
version = "0.4.0";
sha256 = "0d2cd8b20b4f78ee7c35cbe489f901dde2a5f06c9fa153b1a9c475f0fc769bbd";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
aeson
base
bytestring
conduit
containers
io-streams
monad-logger
mysql-haskell
network
persistent
resource-pool
resourcet
text
time
tls
transformers
unliftio-core
];
executableHaskellDepends = [
base
monad-logger
persistent
persistent-template
transformers
];
doHaddock = false;
doCheck = false;
homepage = "http://www.yesodweb.com/book/persistent";
description = "A pure haskell backend for the persistent library using MySQL database server";
license = stdenv.lib.licenses.mit;

}) {};
"persistent-postgresql" = callPackage
({
  mkDerivation
, aeson
, base
, blaze-builder
, bytestring
, conduit
, containers
, monad-logger
, persistent
, postgresql-libpq
, postgresql-simple
, resource-pool
, resourcet
, stdenv
, text
, time
, transformers
, unliftio-core
}:
mkDerivation {

pname = "persistent-postgresql";
version = "2.8.2.0";
sha256 = "f2f3c80b9f1d5ae494492204f3170e33ff3a5792b9675748839de6309d082f49";
libraryHaskellDepends = [
aeson
base
blaze-builder
bytestring
conduit
containers
monad-logger
persistent
postgresql-libpq
postgresql-simple
resource-pool
resourcet
text
time
transformers
unliftio-core
];
doHaddock = false;
doCheck = false;
homepage = "http://www.yesodweb.com/book/persistent";
description = "Backend for the persistent library using postgresql";
license = stdenv.lib.licenses.mit;

}) {};
"persistent-redis" = callPackage
({
  mkDerivation
, aeson
, attoparsec
, base
, binary
, bytestring
, hedis
, http-api-data
, monad-control
, mtl
, path-pieces
, persistent
, scientific
, stdenv
, text
, time
, transformers
, utf8-string
}:
mkDerivation {

pname = "persistent-redis";
version = "2.5.2.2";
sha256 = "34c4b00f5c92ce8ae4bcbeb90bb3568eb0ebbaf3fc7f83dcc71fc034f4606dd6";
libraryHaskellDepends = [
aeson
attoparsec
base
binary
bytestring
hedis
http-api-data
monad-control
mtl
path-pieces
persistent
scientific
text
time
transformers
utf8-string
];
doHaddock = false;
doCheck = false;
description = "Backend for persistent library using Redis";
license = stdenv.lib.licenses.bsd3;

}) {};
"persistent-refs" = callPackage
({
  mkDerivation
, base
, containers
, mtl
, ref-fd
, stdenv
, transformers
}:
mkDerivation {

pname = "persistent-refs";
version = "0.4";
sha256 = "46b310e034e23993e7da740d388e06e410483ada05cbcc8c0a4953ee19f8d0d3";
libraryHaskellDepends = [
base
containers
mtl
ref-fd
transformers
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/acfoltzer/persistent-refs";
description = "Haskell references backed by an IntMap for persistence and reversibility";
license = stdenv.lib.licenses.bsd3;

}) {};
"persistent-sqlite" = callPackage
({
  mkDerivation
, aeson
, base
, bytestring
, conduit
, containers
, microlens-th
, monad-logger
, old-locale
, persistent
, resource-pool
, resourcet
, stdenv
, text
, time
, transformers
, unliftio-core
, unordered-containers
}:
mkDerivation {

pname = "persistent-sqlite";
version = "2.8.1.2";
sha256 = "2f7157f3830370f60c7c36490ea49b7c52caf0f2a7349f86cf47970189f9ad0c";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
aeson
base
bytestring
conduit
containers
microlens-th
monad-logger
old-locale
persistent
resource-pool
resourcet
text
time
transformers
unliftio-core
unordered-containers
];
doHaddock = false;
doCheck = false;
homepage = "http://www.yesodweb.com/book/persistent";
description = "Backend for the persistent library using sqlite3";
license = stdenv.lib.licenses.mit;

}) {};
"persistent-template" = callPackage
({
  mkDerivation
, aeson
, aeson-compat
, base
, bytestring
, containers
, ghc-prim
, http-api-data
, monad-control
, monad-logger
, path-pieces
, persistent
, stdenv
, tagged
, template-haskell
, text
, transformers
, unordered-containers
}:
mkDerivation {

pname = "persistent-template";
version = "2.5.4";
sha256 = "4cae740ce92f98cb3ae9e092e740753394d5687b887399ee5f87af7f3c730a01";
revision = "2";
editedCabalFile = "03qgwk32krldph3blw5agiqcpccr3649hajyn8wm9k71zz82dpn6";
libraryHaskellDepends = [
aeson
aeson-compat
base
bytestring
containers
ghc-prim
http-api-data
monad-control
monad-logger
path-pieces
persistent
tagged
template-haskell
text
transformers
unordered-containers
];
doHaddock = false;
doCheck = false;
homepage = "http://www.yesodweb.com/book/persistent";
description = "Type-safe, non-relational, multi-backend persistence";
license = stdenv.lib.licenses.mit;

}) {};
"pg-transact" = callPackage
({
  mkDerivation
, base
, bytestring
, exceptions
, monad-control
, postgresql-simple
, stdenv
, transformers
}:
mkDerivation {

pname = "pg-transact";
version = "0.1.0.1";
sha256 = "598236369ee1228a3a76b4f0d5830d652a90ddbc0f98fdde064ad979a1abc97d";
libraryHaskellDepends = [
base
bytestring
exceptions
monad-control
postgresql-simple
transformers
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/jfischoff/pg-transact#readme";
description = "Another postgresql-simple transaction monad";
license = stdenv.lib.licenses.bsd3;

}) {};
"pgp-wordlist" = callPackage
({
  mkDerivation
, base
, bytestring
, containers
, stdenv
, text
, vector
}:
mkDerivation {

pname = "pgp-wordlist";
version = "0.1.0.2";
sha256 = "e28b6fe85222adf1247d5870ab47c68c3d25df3f9ceda104bfb64e1414a92466";
libraryHaskellDepends = [
base
bytestring
containers
text
vector
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/quchen/pgp-wordlist";
description = "Translate between binary data and a human-readable collection of words";
license = stdenv.lib.licenses.bsd3;

}) {};
"phantom-state" = callPackage
({
  mkDerivation
, base
, stdenv
, transformers
}:
mkDerivation {

pname = "phantom-state";
version = "0.2.1.2";
sha256 = "f978ef98e810e9a9e53f1479340ba7a28f80a64aba431322959cbf8c620c3811";
libraryHaskellDepends = [
base
transformers
];
doHaddock = false;
doCheck = false;
description = "Phantom State Transformer. Like State Monad, but without values.";
license = stdenv.lib.licenses.bsd3;

}) {};
"picedit" = callPackage
({
  mkDerivation
, base
, cli
, hmatrix
, JuicyPixels
, stdenv
, vector
}:
mkDerivation {

pname = "picedit";
version = "0.2.3.0";
sha256 = "e8525d8ca1d4ab0995293948a05dda3eb57f2456603ba5467fef982d0296c12d";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
base
hmatrix
JuicyPixels
vector
];
executableHaskellDepends = [
base
cli
hmatrix
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/mdibaiee/picedit#readme";
description = "simple image manipulation functions";
license = stdenv.lib.licenses.gpl3;

}) {};
"picoparsec" = callPackage
({
  mkDerivation
, array
, base
, bytestring
, containers
, deepseq
, monoid-subclasses
, scientific
, stdenv
, text
}:
mkDerivation {

pname = "picoparsec";
version = "0.1.2.3";
sha256 = "8ec7ed678efaf62de15b7c2f1d21f1ddf8b92f5fa233eed9534c12e8812e9150";
libraryHaskellDepends = [
array
base
bytestring
containers
deepseq
monoid-subclasses
scientific
text
];
doHaddock = false;
doCheck = false;
homepage = "https://bitbucket.org/blamario/picoparsec";
description = "Fast combinator parsing for bytestrings and text";
license = stdenv.lib.licenses.bsd3;

}) {};
"picosat" = callPackage
({
  mkDerivation
, base
, containers
, stdenv
, transformers
}:
mkDerivation {

pname = "picosat";
version = "0.1.4";
sha256 = "5a6d9fae04a77a95a8c92ec6dd76302010b726d8c934dc8d8bbabc82851e9039";
libraryHaskellDepends = [
base
containers
transformers
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/sdiehl/haskell-picosat";
description = "Bindings to the PicoSAT solver";
license = stdenv.lib.licenses.mit;

}) {};
"pid1" = callPackage
({
  mkDerivation
, base
, directory
, process
, stdenv
, unix
}:
mkDerivation {

pname = "pid1";
version = "0.1.2.0";
sha256 = "9e97bf9b4b6ffd6a9b706cc6d5fadd8089cd37d2b8763111bd743104db267f76";
revision = "1";
editedCabalFile = "11yg5pjci1d6p5ml0ic4vqn70vjx8vvhqs20rahgfqhh8palkyw9";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
base
directory
process
unix
];
executableHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/fpco/pid1#readme";
description = "Do signal handling and orphan reaping for Unix PID1 init processes";
license = stdenv.lib.licenses.mit;

}) {};
"pinboard" = callPackage
({
  mkDerivation
, aeson
, base
, bytestring
, containers
, http-client
, http-client-tls
, http-types
, monad-logger
, mtl
, network
, profunctors
, random
, safe-exceptions
, stdenv
, text
, time
, transformers
, unordered-containers
, vector
}:
mkDerivation {

pname = "pinboard";
version = "0.9.12.10";
sha256 = "bac98d28d29f47d39ca15f0b406f438fb2797841a21edfd1cdf8d54bdb64b049";
libraryHaskellDepends = [
aeson
base
bytestring
containers
http-client
http-client-tls
http-types
monad-logger
mtl
network
profunctors
random
safe-exceptions
text
time
transformers
unordered-containers
vector
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/jonschoning/pinboard";
description = "Access to the Pinboard API";
license = stdenv.lib.licenses.mit;

}) {};
"pinch" = callPackage
({
  mkDerivation
, array
, base
, bytestring
, containers
, deepseq
, ghc-prim
, hashable
, stdenv
, text
, unordered-containers
, vector
}:
mkDerivation {

pname = "pinch";
version = "0.3.2.0";
sha256 = "a1920f6cf2347ff3eeea8cfe3f59987a771efc5e2044370244cf55fa61eb1764";
libraryHaskellDepends = [
array
base
bytestring
containers
deepseq
ghc-prim
hashable
text
unordered-containers
vector
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/abhinav/pinch#readme";
description = "An alternative implementation of Thrift for Haskell";
license = stdenv.lib.licenses.bsd3;

}) {};
"pipes" = callPackage
({
  mkDerivation
, base
, exceptions
, mmorph
, mtl
, semigroups
, stdenv
, transformers
, void
}:
mkDerivation {

pname = "pipes";
version = "4.3.9";
sha256 = "5c4cda351f9cf59376832baaeb857db25bd4990fd78c4b061aca0bde47271acb";
libraryHaskellDepends = [
base
exceptions
mmorph
mtl
semigroups
transformers
void
];
doHaddock = false;
doCheck = false;
description = "Compositional pipelines";
license = stdenv.lib.licenses.bsd3;

}) {};
"pipes-aeson" = callPackage
({
  mkDerivation
, aeson
, attoparsec
, base
, bytestring
, pipes
, pipes-attoparsec
, pipes-bytestring
, pipes-parse
, stdenv
, transformers
}:
mkDerivation {

pname = "pipes-aeson";
version = "0.4.1.8";
sha256 = "350411f492fefa8d5a2554e7521d22b7ee88bacbea9d27c0d22468f6355ebe75";
libraryHaskellDepends = [
aeson
attoparsec
base
bytestring
pipes
pipes-attoparsec
pipes-bytestring
pipes-parse
transformers
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/k0001/pipes-aeson";
description = "Encode and decode JSON streams using Aeson and Pipes";
license = stdenv.lib.licenses.bsd3;

}) {};
"pipes-attoparsec" = callPackage
({
  mkDerivation
, attoparsec
, base
, bytestring
, pipes
, pipes-parse
, stdenv
, text
, transformers
}:
mkDerivation {

pname = "pipes-attoparsec";
version = "0.5.1.5";
sha256 = "fe9eb446289dbc4c4acdde39620877b885417990d9774f622fa9d1daa591cafd";
libraryHaskellDepends = [
attoparsec
base
bytestring
pipes
pipes-parse
text
transformers
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/k0001/pipes-attoparsec";
description = "Attoparsec and Pipes integration";
license = stdenv.lib.licenses.bsd3;

}) {};
"pipes-bytestring" = callPackage
({
  mkDerivation
, base
, bytestring
, pipes
, pipes-group
, pipes-parse
, stdenv
, stringsearch
, transformers
}:
mkDerivation {

pname = "pipes-bytestring";
version = "2.1.6";
sha256 = "b1dc370680f3671759010caace183bce683d0481bd2c0e3f4906b78ac8623c18";
libraryHaskellDepends = [
base
bytestring
pipes
pipes-group
pipes-parse
stringsearch
transformers
];
doHaddock = false;
doCheck = false;
description = "ByteString support for pipes";
license = stdenv.lib.licenses.bsd3;

}) {};
"pipes-category" = callPackage
({
  mkDerivation
, base
, lens
, mtl
, pipes
, pipes-extras
, stdenv
}:
mkDerivation {

pname = "pipes-category";
version = "0.3.0.0";
sha256 = "4711d889ed2bf7244bbbc292af5746e0378d72a09929aa1e668056e7f0180701";
libraryHaskellDepends = [
base
lens
mtl
pipes
pipes-extras
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/louispan/pipes-category#readme";
description = "Allows instances for Category, Arrow and ArrowChoice for Pipes";
license = stdenv.lib.licenses.bsd3;

}) {};
"pipes-concurrency" = callPackage
({
  mkDerivation
, async
, base
, contravariant
, pipes
, semigroups
, stdenv
, stm
, void
}:
mkDerivation {

pname = "pipes-concurrency";
version = "2.0.10";
sha256 = "4675721dbff765ac69dd570d90dc816b4b625e39997d4c2640567a544fe636e3";
libraryHaskellDepends = [
async
base
contravariant
pipes
semigroups
stm
void
];
doHaddock = false;
doCheck = false;
description = "Concurrency for the pipes ecosystem";
license = stdenv.lib.licenses.bsd3;

}) {};
"pipes-csv" = callPackage
({
  mkDerivation
, base
, blaze-builder
, bytestring
, cassava
, pipes
, stdenv
, unordered-containers
, vector
}:
mkDerivation {

pname = "pipes-csv";
version = "1.4.3";
sha256 = "9485f5ddd56ec9bb10d26cdf2b5b67754726e36b167652b11cb0a42acbda68b3";
libraryHaskellDepends = [
base
blaze-builder
bytestring
cassava
pipes
unordered-containers
vector
];
doHaddock = false;
doCheck = false;
description = "Fast, streaming csv parser";
license = stdenv.lib.licenses.mit;

}) {};
"pipes-extras" = callPackage
({
  mkDerivation
, base
, foldl
, lens
, pipes
, stdenv
, transformers
}:
mkDerivation {

pname = "pipes-extras";
version = "1.0.14";
sha256 = "fd1d8984872d10ac77d6ff85255951bb1d1f6378db0805a6cf9e1c708d54c89d";
libraryHaskellDepends = [
base
foldl
lens
pipes
transformers
];
doHaddock = false;
doCheck = false;
description = "Extra utilities for pipes";
license = stdenv.lib.licenses.bsd3;

}) {};
"pipes-fastx" = callPackage
({
  mkDerivation
, attoparsec
, base
, bytestring
, pipes
, pipes-attoparsec
, pipes-bytestring
, stdenv
}:
mkDerivation {

pname = "pipes-fastx";
version = "0.3.0.0";
sha256 = "31264ba760bae1df3170a7d8da32f3e3fcb289545a33f369a94732e55e08ba75";
libraryHaskellDepends = [
attoparsec
base
bytestring
pipes
pipes-attoparsec
pipes-bytestring
];
doHaddock = false;
doCheck = false;
description = "Streaming parsers for Fasta and Fastq";
license = stdenv.lib.licenses.bsd3;

}) {};
"pipes-fluid" = callPackage
({
  mkDerivation
, base
, constraints
, lens
, lifted-async
, monad-control
, pipes
, semigroups
, stdenv
, stm
, these
, transformers
, transformers-base
}:
mkDerivation {

pname = "pipes-fluid";
version = "0.6.0.0";
sha256 = "8a4097620bbfaf6f7662acbf792defc92434aaadd8dc71f71b7f26e58fb87585";
libraryHaskellDepends = [
base
constraints
lens
lifted-async
monad-control
pipes
semigroups
stm
these
transformers
transformers-base
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/louispan/pipes-fluid#readme";
description = "Reactively combines Producers so that a value is yielded as soon as possible";
license = stdenv.lib.licenses.bsd3;

}) {};
"pipes-group" = callPackage
({
  mkDerivation
, base
, free
, pipes
, pipes-parse
, stdenv
, transformers
}:
mkDerivation {

pname = "pipes-group";
version = "1.0.10";
sha256 = "28d32a7be4ddacbba2cb9ccf38338fce20b7e72c17328a849875d21381d467c8";
libraryHaskellDepends = [
base
free
pipes
pipes-parse
transformers
];
doHaddock = false;
doCheck = false;
description = "Group streams into substreams";
license = stdenv.lib.licenses.bsd3;

}) {};
"pipes-misc" = callPackage
({
  mkDerivation
, base
, clock
, Decimal
, lens
, mmorph
, mtl
, pipes
, pipes-category
, pipes-concurrency
, semigroups
, stdenv
, stm
, transformers
}:
mkDerivation {

pname = "pipes-misc";
version = "0.4.0.1";
sha256 = "b901c84c1a3a61b1a9c8944d16494a256a5690d3e06bf75e66860e28d626f667";
libraryHaskellDepends = [
base
clock
Decimal
lens
mmorph
mtl
pipes
pipes-category
pipes-concurrency
semigroups
stm
transformers
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/louispan/pipes-misc#readme";
description = "Miscellaneous utilities for pipes, required by glazier-tutorial";
license = stdenv.lib.licenses.bsd3;

}) {};
"pipes-mongodb" = callPackage
({
  mkDerivation
, base
, monad-control
, mongoDB
, pipes
, stdenv
}:
mkDerivation {

pname = "pipes-mongodb";
version = "0.1.0.0";
sha256 = "0821194bdf7f377beeb20fc8f697ed5388a221b6e8e42c513eea67a91c198340";
libraryHaskellDepends = [
base
monad-control
mongoDB
pipes
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/jb55/pipes-mongodb";
description = "Stream results from MongoDB";
license = stdenv.lib.licenses.mit;

}) {};
"pipes-network" = callPackage
({
  mkDerivation
, base
, bytestring
, exceptions
, network
, network-simple
, pipes
, pipes-safe
, stdenv
, transformers
}:
mkDerivation {

pname = "pipes-network";
version = "0.6.5";
sha256 = "74a461153a2f650e9e15037002b6d9177b132f409e3204824655ffbb939dc795";
libraryHaskellDepends = [
base
bytestring
exceptions
network
network-simple
pipes
pipes-safe
transformers
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/k0001/pipes-network";
description = "Use network sockets together with the pipes library";
license = stdenv.lib.licenses.bsd3;

}) {};
"pipes-parse" = callPackage
({
  mkDerivation
, base
, pipes
, stdenv
, transformers
}:
mkDerivation {

pname = "pipes-parse";
version = "3.0.8";
sha256 = "d28f831b2c8229cca567ee95570787d2dd3f5cfcff3b3c44ee308360a8c107a9";
libraryHaskellDepends = [
base
pipes
transformers
];
doHaddock = false;
doCheck = false;
description = "Parsing infrastructure for the pipes ecosystem";
license = stdenv.lib.licenses.bsd3;

}) {};
"pipes-random" = callPackage
({
  mkDerivation
, base
, mwc-random
, pipes
, stdenv
, vector
}:
mkDerivation {

pname = "pipes-random";
version = "1.0.0.4";
sha256 = "542a07e7d7aafa87201c1f00c4e98ac8f59707f776ea03b1f6f117273608659e";
revision = "1";
editedCabalFile = "0m32wz3rwxx9gdcl1chk64yspyd1ls13z03zcgjcn865mpbhz97h";
libraryHaskellDepends = [
base
mwc-random
pipes
vector
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/fosskers/pipes-random";
description = "Producers for handling randomness";
license = stdenv.lib.licenses.bsd3;

}) {};
"pipes-safe" = callPackage
({
  mkDerivation
, base
, containers
, exceptions
, monad-control
, mtl
, pipes
, primitive
, stdenv
, transformers
, transformers-base
}:
mkDerivation {

pname = "pipes-safe";
version = "2.2.9";
sha256 = "17f16403794a2517eb283dd8b34a17c3485143b7fb66870d0a305294815a1898";
revision = "1";
editedCabalFile = "08jxmxfhxfi3v19bvvmfs50c74ci6v36503knsb4qdscx9lr864d";
libraryHaskellDepends = [
base
containers
exceptions
monad-control
mtl
pipes
primitive
transformers
transformers-base
];
doHaddock = false;
doCheck = false;
description = "Safety for the pipes ecosystem";
license = stdenv.lib.licenses.bsd3;

}) {};
"pipes-text" = callPackage
({
  mkDerivation
, base
, bytestring
, pipes
, pipes-bytestring
, pipes-group
, pipes-parse
, pipes-safe
, stdenv
, streaming-commons
, text
, transformers
}:
mkDerivation {

pname = "pipes-text";
version = "0.0.2.5";
sha256 = "4489ee02a8ebfd87049fc4dd1380b21e6f33984eb0101c836ab8e054759c0f2a";
libraryHaskellDepends = [
base
bytestring
pipes
pipes-bytestring
pipes-group
pipes-parse
pipes-safe
streaming-commons
text
transformers
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/michaelt/text-pipes";
description = "properly streaming text";
license = stdenv.lib.licenses.bsd3;

}) {};
"pipes-wai" = callPackage
({
  mkDerivation
, base
, blaze-builder
, bytestring
, http-types
, pipes
, stdenv
, transformers
, wai
}:
mkDerivation {

pname = "pipes-wai";
version = "3.2.0";
sha256 = "04a670df140c12b64f6f0d04b3c5571527f144ee429e7030bb62ec8785056d2a";
libraryHaskellDepends = [
base
blaze-builder
bytestring
http-types
pipes
transformers
wai
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/iand675/pipes-wai";
description = "A port of wai-conduit for the pipes ecosystem";
license = stdenv.lib.licenses.mit;

}) {};
"pixelated-avatar-generator" = callPackage
({
  mkDerivation
, async
, base
, bytestring
, cli
, JuicyPixels
, pureMD5
, random
, split
, stdenv
}:
mkDerivation {

pname = "pixelated-avatar-generator";
version = "0.1.3";
sha256 = "4d7d87404121f5481faa7d6af087575a9541aaad96b196ec230d1883a563a078";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
base
bytestring
JuicyPixels
pureMD5
split
];
executableHaskellDepends = [
async
base
cli
random
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/ExcaliburZero/pixelated-avatar-generator";
description = "A library and application for generating pixelated avatars";
license = stdenv.lib.licenses.mit;

}) {};
"pkcs10" = callPackage
({
  mkDerivation
, asn1-encoding
, asn1-parse
, asn1-types
, base
, bytestring
, cryptonite
, pem
, stdenv
, x509
}:
mkDerivation {

pname = "pkcs10";
version = "0.2.0.0";
sha256 = "896e923f67bac4c7f0e48c9afca60f9ef5178e00fca9f179e8fdae3c12476294";
libraryHaskellDepends = [
asn1-encoding
asn1-parse
asn1-types
base
bytestring
cryptonite
pem
x509
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/fcomb/pkcs10-hs#readme";
description = "PKCS#10 library";
license = stdenv.lib.licenses.asl20;

}) {};
"placeholders" = callPackage
({
  mkDerivation
, base
, stdenv
, template-haskell
}:
mkDerivation {

pname = "placeholders";
version = "0.1";
sha256 = "652a78553dcaf6e11b4cd8f0e60010b32da299fbe57721df4bf9157e852d0346";
libraryHaskellDepends = [
base
template-haskell
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/ahammar/placeholders";
description = "Placeholders for use while developing Haskell code";
license = stdenv.lib.licenses.bsd3;

}) {};
"plot" = callPackage
({
  mkDerivation
, array
, base
, cairo
, colour
, hmatrix
, mtl
, pango
, stdenv
, transformers
}:
mkDerivation {

pname = "plot";
version = "0.2.3.9";
sha256 = "c6146c647010bc46500ab1043abd63d6793b654686c15728cd8003ebed27cfb3";
libraryHaskellDepends = [
array
base
cairo
colour
hmatrix
mtl
pango
transformers
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/amcphail/plot";
description = "A plotting library, exportable as eps/pdf/svg/png or renderable with gtk";
license = stdenv.lib.licenses.bsd3;

}) {};
"plot-light" = callPackage
({
  mkDerivation
, attoparsec
, attoparsec-time
, base
, blaze-svg
, colour
, containers
, data-default
, hspec
, mtl
, palette
, QuickCheck
, scientific
, stdenv
, text
, time
}:
mkDerivation {

pname = "plot-light";
version = "0.2.9";
sha256 = "b56053625bd7de3ffd15bc202c5a7e1b5d1f4f1febed725ad2c76483914ae66b";
isLibrary = true;
isExecutable = true;
enableSeparateDataOutput = true;
libraryHaskellDepends = [
attoparsec
base
blaze-svg
colour
containers
data-default
hspec
mtl
palette
QuickCheck
scientific
text
time
];
executableHaskellDepends = [
attoparsec
attoparsec-time
base
blaze-svg
colour
palette
scientific
text
time
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/ocramz/plot-light";
description = "A lightweight plotting library, exporting to SVG";
license = stdenv.lib.licenses.bsd3;

}) {};
"plutus-prototype" = callPackage
({
  mkDerivation
, base
, bifunctors
, binary
, bytestring
, cardano-crypto
, cryptonite
, ed25519
, either
, filepath
, lens
, memory
, mtl
, operational
, parsec
, stdenv
, transformers
}:
mkDerivation {

pname = "plutus-prototype";
version = "0.1.0.0";
src = ./../plutus-prototype;
enableSeparateDataOutput = true;
libraryHaskellDepends = [
base
bifunctors
binary
bytestring
cardano-crypto
cryptonite
ed25519
either
filepath
lens
memory
mtl
operational
parsec
transformers
];
doHaddock = false;
homepage = "iohk.io";
description = "Prototype of the Plutus language";
license = stdenv.lib.licenses.mit;

}) {};
"pointed" = callPackage
({
  mkDerivation
, base
, comonad
, containers
, data-default-class
, hashable
, kan-extensions
, semigroupoids
, semigroups
, stdenv
, stm
, tagged
, transformers
, transformers-compat
, unordered-containers
}:
mkDerivation {

pname = "pointed";
version = "5.0.1";
sha256 = "b94635a5c8779238501a9156015422ce2fb4d5efd45d68999e8cbe2ecc5121dd";
libraryHaskellDepends = [
base
comonad
containers
data-default-class
hashable
kan-extensions
semigroupoids
semigroups
stm
tagged
transformers
transformers-compat
unordered-containers
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/ekmett/pointed/";
description = "Pointed and copointed data";
license = stdenv.lib.licenses.bsd3;

}) {};
"pointedlist" = callPackage
({
  mkDerivation
, base
, binary
, stdenv
}:
mkDerivation {

pname = "pointedlist";
version = "0.6.1";
sha256 = "743cb0f89cbb128f8aa24c4519b262b561bf2cd607f83e94f9241e8af1cfba9b";
libraryHaskellDepends = [
base
binary
];
doHaddock = false;
doCheck = false;
description = "A zipper-like comonad which works as a list, tracking a position";
license = stdenv.lib.licenses.bsd3;

}) {};
"pointless-fun" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "pointless-fun";
version = "1.1.0.6";
sha256 = "d05c59dac408a81766d676da2fb98025e75e0c3d0a07bdb458759d5c41e3b054";
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
homepage = "http://code.haskell.org/~wren/";
description = "Some common point-free combinators";
license = stdenv.lib.licenses.bsd3;

}) {};
"poll" = callPackage
({
  mkDerivation
, base
, enumset
, stdenv
, utility-ht
}:
mkDerivation {

pname = "poll";
version = "0.0.0.1";
sha256 = "b9fe87fe1b4d3ecb2ad3c1c290e231b0c93d498f0d318f67018a1dde97a0ed29";
libraryHaskellDepends = [
base
enumset
utility-ht
];
doHaddock = false;
doCheck = false;
description = "Bindings to poll.h";
license = stdenv.lib.licenses.bsd3;

}) {};
"poly-arity" = callPackage
({
  mkDerivation
, base
, constraints
, stdenv
}:
mkDerivation {

pname = "poly-arity";
version = "0.1.0";
sha256 = "cb10a644fe04de8e703942f4bd0d97c4df0f9e3915d33a494994e85830cfdd29";
libraryHaskellDepends = [
base
constraints
];
doHaddock = false;
doCheck = false;
description = "Tools for working with functions of undetermined arity";
license = stdenv.lib.licenses.bsd3;

}) {};
"polynomials-bernstein" = callPackage
({
  mkDerivation
, base
, stdenv
, vector
}:
mkDerivation {

pname = "polynomials-bernstein";
version = "1.1.2";
sha256 = "6950f2e791533a40e7e41ff98679f680f27c7b66258b57871027bf0e5adc7062";
libraryHaskellDepends = [
base
vector
];
doHaddock = false;
doCheck = false;
description = "A solver for systems of polynomial equations in bernstein form";
license = "GPL";

}) {};
"polyparse" = callPackage
({
  mkDerivation
, base
, bytestring
, stdenv
, text
}:
mkDerivation {

pname = "polyparse";
version = "1.12";
sha256 = "f54c63584ace968381de4a06bd7328b6adc3e1a74fd336e18449e0dd7650be15";
libraryHaskellDepends = [
base
bytestring
text
];
doHaddock = false;
doCheck = false;
homepage = "http://code.haskell.org/~malcolm/polyparse/";
description = "A variety of alternative parser combinator libraries";
license = "LGPL";

}) {};
"pomaps" = callPackage
({
  mkDerivation
, base
, containers
, deepseq
, ghc-prim
, lattices
, stdenv
}:
mkDerivation {

pname = "pomaps";
version = "0.0.0.4";
sha256 = "767590971fa7325d79c8ea637cbb54e1159ea93f3edbbde319c32c2485fc4e56";
libraryHaskellDepends = [
base
containers
deepseq
ghc-prim
lattices
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/sgraf812/pomaps#readme";
description = "Maps and sets of partial orders";
license = stdenv.lib.licenses.mit;

}) {};
"pooled-io" = callPackage
({
  mkDerivation
, base
, concurrent-split
, containers
, deepseq
, stdenv
, transformers
, unsafe
, utility-ht
}:
mkDerivation {

pname = "pooled-io";
version = "0.0.2.1";
sha256 = "7d405a8876d55a9c077a304dd378854bc9e6e20f643c357c82bd3f38297ff9d0";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
base
concurrent-split
containers
deepseq
transformers
unsafe
utility-ht
];
doHaddock = false;
doCheck = false;
homepage = "http://hub.darcs.net/thielema/pooled-io/";
description = "Run jobs on a limited number of threads and support data dependencies";
license = stdenv.lib.licenses.bsd3;

}) {};
"posix-paths" = callPackage
({
  mkDerivation
, base
, bytestring
, stdenv
, unix
}:
mkDerivation {

pname = "posix-paths";
version = "0.2.1.5";
sha256 = "5a85296775eb689862d205f2342339bcbc3aaee7aac4e088617764f15f11d1df";
libraryHaskellDepends = [
base
bytestring
unix
];
doHaddock = false;
doCheck = false;
description = "POSIX filepath/directory functionality";
license = stdenv.lib.licenses.bsd3;

}) {};
"post-mess-age" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "post-mess-age";
version = "0.2.1.0";
sha256 = "d0f69ab1cb130a9f8bb54cd1f3b0167184af885fedba89ff32fec8e54e95d64c";
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
description = "Send messages to a handle concurrently without getting them mixed";
license = stdenv.lib.licenses.bsd3;

}) {};
"postgresql-binary" = callPackage
({
  mkDerivation
, aeson
, base
, base-prelude
, binary-parser
, bytestring
, bytestring-strict-builder
, containers
, loch-th
, network-ip
, placeholders
, scientific
, stdenv
, text
, time
, transformers
, unordered-containers
, uuid
, vector
}:
mkDerivation {

pname = "postgresql-binary";
version = "0.12.1.1";
sha256 = "fb00b37b213e00369ae17145ed8487ac0bfe295f35b3ef24afaba76f9dbf36a0";
libraryHaskellDepends = [
aeson
base
base-prelude
binary-parser
bytestring
bytestring-strict-builder
containers
loch-th
network-ip
placeholders
scientific
text
time
transformers
unordered-containers
uuid
vector
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/nikita-volkov/postgresql-binary";
description = "Encoders and decoders for the PostgreSQL's binary format";
license = stdenv.lib.licenses.mit;

}) {};
"postgresql-libpq" = callPackage
({
  mkDerivation
, base
, bytestring
, Cabal
, postgresql
, stdenv
, unix
}:
mkDerivation {

pname = "postgresql-libpq";
version = "0.9.4.1";
sha256 = "0d9fa338b67c54786ea123cb9f75f3362aad01057aaa4857687610a39908566b";
setupHaskellDepends = [
base
Cabal
];
libraryHaskellDepends = [
base
bytestring
unix
];
librarySystemDepends = [
postgresql
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/lpsmith/postgresql-libpq";
description = "low-level binding to libpq";
license = stdenv.lib.licenses.bsd3;

}) {inherit (pkgs) postgresql;};
"postgresql-schema" = callPackage
({
  mkDerivation
, base
, basic-prelude
, optparse-applicative
, postgresql-simple
, shelly
, stdenv
, text
, time
}:
mkDerivation {

pname = "postgresql-schema";
version = "0.1.14";
sha256 = "73decc70c9fc349d0162c253eb0e92a1add5964c28ef89abfe30e97f1184d572";
isLibrary = true;
isExecutable = true;
enableSeparateDataOutput = true;
libraryHaskellDepends = [
base
basic-prelude
postgresql-simple
shelly
text
];
executableHaskellDepends = [
base
basic-prelude
optparse-applicative
shelly
text
time
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/mfine/postgresql-schema";
description = "PostgreSQL Schema Management";
license = stdenv.lib.licenses.bsd3;

}) {};
"postgresql-simple" = callPackage
({
  mkDerivation
, aeson
, attoparsec
, base
, bytestring
, bytestring-builder
, case-insensitive
, containers
, hashable
, postgresql-libpq
, scientific
, stdenv
, template-haskell
, text
, time
, transformers
, uuid-types
, vector
}:
mkDerivation {

pname = "postgresql-simple";
version = "0.5.3.0";
sha256 = "1e0d7b646d60d79bcc827e3c0b2d3425dfb2ca7dbb57f16903b7089740230e41";
revision = "1";
editedCabalFile = "1hvry7nhk629yas6nbm3wnyy0bgwh6r8511rmsq9r8xkl7qm76r2";
libraryHaskellDepends = [
aeson
attoparsec
base
bytestring
bytestring-builder
case-insensitive
containers
hashable
postgresql-libpq
scientific
template-haskell
text
time
transformers
uuid-types
vector
];
doHaddock = false;
doCheck = false;
description = "Mid-Level PostgreSQL client library";
license = stdenv.lib.licenses.bsd3;

}) {};
"postgresql-simple-migration" = callPackage
({
  mkDerivation
, base
, base64-bytestring
, bytestring
, cryptohash
, directory
, postgresql-simple
, stdenv
, text
, time
}:
mkDerivation {

pname = "postgresql-simple-migration";
version = "0.1.11.0";
sha256 = "c00f850a4be88124d83e2bc4f2c5d873ab27aa9fcff6936d9994debf69ac759e";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
base
base64-bytestring
bytestring
cryptohash
directory
postgresql-simple
time
];
executableHaskellDepends = [
base
base64-bytestring
bytestring
cryptohash
directory
postgresql-simple
text
time
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/ameingast/postgresql-simple-migration";
description = "PostgreSQL Schema Migrations";
license = stdenv.lib.licenses.bsd3;

}) {};
"postgresql-simple-queue" = callPackage
({
  mkDerivation
, aeson
, base
, bytestring
, exceptions
, monad-control
, pg-transact
, postgresql-simple
, random
, stdenv
, stm
, text
, time
, transformers
}:
mkDerivation {

pname = "postgresql-simple-queue";
version = "1.0.1";
sha256 = "330b69c54e075104171758117e714b7da6c740dff8ca09fbe33bd3ab854e5a3f";
libraryHaskellDepends = [
aeson
base
bytestring
exceptions
monad-control
pg-transact
postgresql-simple
random
stm
text
time
transformers
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/jfischoff/postgresql-queue#readme";
description = "A PostgreSQL backed queue";
license = stdenv.lib.licenses.bsd3;

}) {};
"postgresql-simple-url" = callPackage
({
  mkDerivation
, base
, network-uri
, postgresql-simple
, split
, stdenv
}:
mkDerivation {

pname = "postgresql-simple-url";
version = "0.2.1.0";
sha256 = "1307f57cde2bd7f6d795a860deab53d3d64043f51af31e3114dee516ef7ee9c9";
libraryHaskellDepends = [
base
network-uri
postgresql-simple
split
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/futurice/postgresql-simple-url";
description = "Parse postgres:// url into ConnectInfo";
license = stdenv.lib.licenses.mit;

}) {};
"postgresql-transactional" = callPackage
({
  mkDerivation
, base
, monad-control
, mtl
, postgresql-simple
, stdenv
}:
mkDerivation {

pname = "postgresql-transactional";
version = "1.1.1";
sha256 = "f9302a1e134b31f2e9bd243c4fe36a25b3a9a9d6984288be1bc9c29882545ed3";
libraryHaskellDepends = [
base
monad-control
mtl
postgresql-simple
];
doHaddock = false;
doCheck = false;
description = "a transactional monad on top of postgresql-simple";
license = stdenv.lib.licenses.mit;

}) {};
"postgresql-typed" = callPackage
({
  mkDerivation
, aeson
, array
, attoparsec
, base
, binary
, bytestring
, containers
, cryptonite
, haskell-src-meta
, HDBC
, memory
, network
, old-locale
, postgresql-binary
, scientific
, stdenv
, template-haskell
, text
, time
, utf8-string
, uuid
}:
mkDerivation {

pname = "postgresql-typed";
version = "0.5.3.0";
sha256 = "b3c01c0821e96a83163f919aff86aba603f13d10ff5245680f4c4e488531f82a";
libraryHaskellDepends = [
aeson
array
attoparsec
base
binary
bytestring
containers
cryptonite
haskell-src-meta
HDBC
memory
network
old-locale
postgresql-binary
scientific
template-haskell
text
time
utf8-string
uuid
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/dylex/postgresql-typed";
description = "PostgreSQL interface with compile-time SQL type checking, optional HDBC backend";
license = stdenv.lib.licenses.bsd3;

}) {};
"pptable" = callPackage
({
  mkDerivation
, base
, boxes
, containers
, generic-deriving
, pretty
, stdenv
, syb
, vector
}:
mkDerivation {

pname = "pptable";
version = "0.2.0.0";
sha256 = "c78c74f345cee1afd1021df509421cb151d484c4891e9335427182339547fb2d";
libraryHaskellDepends = [
base
boxes
containers
generic-deriving
pretty
syb
vector
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/gdevanla/pptable#readme";
description = "Pretty Print containers in a tabular format";
license = stdenv.lib.licenses.mit;

}) {};
"pqueue" = callPackage
({
  mkDerivation
, base
, deepseq
, stdenv
}:
mkDerivation {

pname = "pqueue";
version = "1.4.1.1";
sha256 = "3ddc53ea30111047efeacfe0b85d721979b51e9479051d40b00563cc7ea87cff";
libraryHaskellDepends = [
base
deepseq
];
doHaddock = false;
doCheck = false;
description = "Reliable, persistent, fast priority queues";
license = stdenv.lib.licenses.bsd3;

}) {};
"pred-set" = callPackage
({
  mkDerivation
, base
, hashable
, hashtables
, HSet
, stdenv
}:
mkDerivation {

pname = "pred-set";
version = "0.0.1";
sha256 = "cb22ec50f94cf76b6bc55fd66b91badfef657cbe1a6b6a59b691e48004c37726";
libraryHaskellDepends = [
base
hashable
hashtables
HSet
];
doHaddock = false;
doCheck = false;
description = "Simple cached predicates";
license = stdenv.lib.licenses.bsd3;

}) {};
"pred-trie" = callPackage
({
  mkDerivation
, base
, composition-extra
, containers
, hashable
, hashtables
, mtl
, poly-arity
, pred-set
, QuickCheck
, semigroups
, stdenv
, tries
, unordered-containers
}:
mkDerivation {

pname = "pred-trie";
version = "0.5.1.2";
sha256 = "437b4f2578444adad0eeb519d23c339d4f5cb3532b12745bc1e94144135a0a34";
libraryHaskellDepends = [
base
composition-extra
containers
hashable
hashtables
mtl
poly-arity
pred-set
QuickCheck
semigroups
tries
unordered-containers
];
doHaddock = false;
doCheck = false;
description = "Predicative tries";
license = stdenv.lib.licenses.bsd3;

}) {};
"prefix-units" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "prefix-units";
version = "0.2.0";
sha256 = "050abdf827a5bd014a2628b195fbd59bb226020612c99e86a082ac1c8274e384";
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/iustin/prefix-units";
description = "A basic library for SI/binary prefix units";
license = stdenv.lib.licenses.bsd3;

}) {};
"prelude-compat" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "prelude-compat";
version = "0.0.0.1";
sha256 = "7bdc875d5b7265a87f06866dc00da69edcd4ae36ea9687c8c6e643833ffb40d4";
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
description = "Provide Prelude and Data.List with fixed content across GHC versions";
license = stdenv.lib.licenses.bsd3;

}) {};
"prelude-extras" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "prelude-extras";
version = "0.4.0.3";
sha256 = "09bb087f0870a353ec1e7e1a08017b9a766d430d956afb88ca000a6a876bf877";
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/ekmett/prelude-extras";
description = "Higher order versions of Prelude classes";
license = stdenv.lib.licenses.bsd3;

}) {};
"prelude-safeenum" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "prelude-safeenum";
version = "0.1.1.2";
sha256 = "d4f9f195d31198fa1a5e1edfb50684971cc5dc2695bf38c1e7e2dabdce329727";
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
homepage = "http://code.haskell.org/~wren/";
description = "A redefinition of the Prelude's Enum class in order to render it safe";
license = stdenv.lib.licenses.bsd3;

}) {};
"preprocessor-tools" = callPackage
({
  mkDerivation
, base
, mtl
, parsec
, stdenv
, syb
}:
mkDerivation {

pname = "preprocessor-tools";
version = "1.0.1";
sha256 = "c946c99fe8c9effba27946cd2c26173d2346340528d800a228796d68f8aeee59";
libraryHaskellDepends = [
base
mtl
parsec
syb
];
doHaddock = false;
doCheck = false;
homepage = "http://www.eecs.harvard.edu/~tov/pubs/haskell-session-types/";
description = "A framework for extending Haskell's syntax via quick-and-dirty preprocessors";
license = stdenv.lib.licenses.bsd3;

}) {};
"present" = callPackage
({
  mkDerivation
, base
, stdenv
, template-haskell
}:
mkDerivation {

pname = "present";
version = "4.1.0";
sha256 = "bae8b334817a31572cc0e771f40e89b976e72b2b55d0955e4e198502dd8a427b";
libraryHaskellDepends = [
base
template-haskell
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/chrisdone/present";
description = "Make presentations for data types";
license = stdenv.lib.licenses.bsd3;

}) {};
"pretty-class" = callPackage
({
  mkDerivation
, base
, pretty
, stdenv
}:
mkDerivation {

pname = "pretty-class";
version = "1.0.1.1";
sha256 = "558d1b506ff58afb0a5fb9d85ea93a94687cc1aabcc5a112a6ee4375a7b8aee1";
libraryHaskellDepends = [
base
pretty
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/ddssff/pretty-class";
description = "Pretty printing class similar to Show";
license = stdenv.lib.licenses.bsd3;

}) {};
"pretty-hex" = callPackage
({
  mkDerivation
, base
, bytestring
, stdenv
}:
mkDerivation {

pname = "pretty-hex";
version = "1.0";
sha256 = "ff9a5f2023d6a4454f06cc395726b4cac3f9d0ea03759b14ccf7d62df79e9c7a";
libraryHaskellDepends = [
base
bytestring
];
doHaddock = false;
doCheck = false;
description = "A library for hex dumps of ByteStrings";
license = stdenv.lib.licenses.bsd3;

}) {};
"pretty-show" = callPackage
({
  mkDerivation
, array
, base
, filepath
, ghc-prim
, happy
, haskell-lexer
, pretty
, stdenv
}:
mkDerivation {

pname = "pretty-show";
version = "1.6.16";
sha256 = "dbee8476bf12ce5bd991d0a52c1340802e07bb706c68c1a7911a38db16ac0350";
isLibrary = true;
isExecutable = true;
enableSeparateDataOutput = true;
libraryHaskellDepends = [
array
base
filepath
ghc-prim
haskell-lexer
pretty
];
libraryToolDepends = [
happy
];
executableHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
homepage = "http://wiki.github.com/yav/pretty-show";
description = "Tools for working with derived `Show` instances and generic inspection of values";
license = stdenv.lib.licenses.mit;

}) {};
"pretty-simple" = callPackage
({
  mkDerivation
, ansi-terminal
, base
, containers
, mtl
, parsec
, stdenv
, text
, transformers
}:
mkDerivation {

pname = "pretty-simple";
version = "2.1.0.0";
sha256 = "c82ce285ea5f04781bdf3f41bdfedfa3f3fd9b23c8c56afcf7633efa054d38ca";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
ansi-terminal
base
containers
mtl
parsec
text
transformers
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/cdepillabout/pretty-simple";
description = "pretty printer for data types with a 'Show' instance";
license = stdenv.lib.licenses.bsd3;

}) {};
"pretty-types" = callPackage
({
  mkDerivation
, base
, mtl
, stdenv
, tagged
}:
mkDerivation {

pname = "pretty-types";
version = "0.2.3.1";
sha256 = "e56c49d1099aaeafe0b982ef9e60cb7194fd987c4b659a8d7bcde380d3b8784f";
libraryHaskellDepends = [
base
mtl
tagged
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/sheyll/pretty-types#readme";
description = "A small pretty printing DSL for complex types";
license = stdenv.lib.licenses.bsd3;

}) {};
"prettyclass" = callPackage
({
  mkDerivation
, base
, pretty
, stdenv
}:
mkDerivation {

pname = "prettyclass";
version = "1.0.0.0";
sha256 = "e537446e7a346e5e0872ed8281db2bb0220c737f10757848c901da1399548986";
libraryHaskellDepends = [
base
pretty
];
doHaddock = false;
doCheck = false;
description = "Pretty printing class similar to Show";
license = stdenv.lib.licenses.bsd3;

}) {};
"prettyprinter" = callPackage
({
  mkDerivation
, base
, stdenv
, text
}:
mkDerivation {

pname = "prettyprinter";
version = "1.2.0.1";
sha256 = "11397b182138efc8f7b09a70873093fb565d070e4c8f92cdde9e601bcd5a0566";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
base
text
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/quchen/prettyprinter";
description = "A modern, easy to use, well-documented, extensible prettyprinter";
license = stdenv.lib.licenses.bsd2;

}) {};
"prettyprinter-ansi-terminal" = callPackage
({
  mkDerivation
, ansi-terminal
, base
, prettyprinter
, stdenv
, text
}:
mkDerivation {

pname = "prettyprinter-ansi-terminal";
version = "1.1.1.2";
sha256 = "d3e0b420df2904ae1ef23daf9bbb6de2c1fbbee056b779fc2cebe303cedf4641";
libraryHaskellDepends = [
ansi-terminal
base
prettyprinter
text
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/quchen/prettyprinter";
description = "ANSI terminal backend for the »prettyprinter« package";
license = stdenv.lib.licenses.bsd2;

}) {};
"prettyprinter-compat-annotated-wl-pprint" = callPackage
({
  mkDerivation
, base
, prettyprinter
, stdenv
, text
}:
mkDerivation {

pname = "prettyprinter-compat-annotated-wl-pprint";
version = "1";
sha256 = "2c259bac999d75b071a077f218a433c070783e9f40b67796e31a776fefbaf57e";
revision = "3";
editedCabalFile = "0vzi7id60pfj35xp61akzvfx9x6py45r5b8343i48ljpir91rvgw";
libraryHaskellDepends = [
base
prettyprinter
text
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/quchen/prettyprinter";
description = "Prettyprinter compatibility module for previous users of the annotated-wl-pprint package";
license = stdenv.lib.licenses.bsd2;

}) {};
"prettyprinter-compat-ansi-wl-pprint" = callPackage
({
  mkDerivation
, base
, prettyprinter
, prettyprinter-ansi-terminal
, stdenv
, text
}:
mkDerivation {

pname = "prettyprinter-compat-ansi-wl-pprint";
version = "1.0.1";
sha256 = "012d6bb711da25cc38260f4d00d26c24e52547a0ca53b0f6459fd06e5b93f73f";
revision = "1";
editedCabalFile = "0rzvap56ygygzs95091ipmcdc7n76sczc2dk88g4nr7zskb2nf1k";
libraryHaskellDepends = [
base
prettyprinter
prettyprinter-ansi-terminal
text
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/quchen/prettyprinter";
description = "Drop-in compatibility package to migrate from »ansi-wl-pprint« to »prettyprinter«";
license = stdenv.lib.licenses.bsd2;

}) {};
"prettyprinter-compat-wl-pprint" = callPackage
({
  mkDerivation
, base
, prettyprinter
, stdenv
, text
}:
mkDerivation {

pname = "prettyprinter-compat-wl-pprint";
version = "1.0.0.1";
sha256 = "75221f5064e69eead5807a62894e8b5aa768f979c7f8fb75d0e1b2a15345529e";
revision = "3";
editedCabalFile = "0cb1i1hmr6wl8lacy3w822h273lapqhp537snxgbmhf9xvfckbpr";
libraryHaskellDepends = [
base
prettyprinter
text
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/quchen/prettyprinter";
description = "Prettyprinter compatibility module for previous users of the wl-pprint package";
license = stdenv.lib.licenses.bsd2;

}) {};
"prim-array" = callPackage
({
  mkDerivation
, base
, ghc-prim
, primitive
, semigroups
, stdenv
}:
mkDerivation {

pname = "prim-array";
version = "0.2.2";
sha256 = "e311d57224431bc107914c4d871d749bb7fedda4161af984fd2a3a6ea2c52753";
libraryHaskellDepends = [
base
ghc-prim
primitive
semigroups
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/andrewthad/prim-array#readme";
description = "Primitive byte array with type variable";
license = stdenv.lib.licenses.bsd3;

}) {};
"prim-uniq" = callPackage
({
  mkDerivation
, base
, dependent-sum
, primitive
, stdenv
}:
mkDerivation {

pname = "prim-uniq";
version = "0.1.0.1";
sha256 = "fb059785133fe5ecaa57c6c840192f252c4c5a1a598160d5704ac2a83e895aff";
libraryHaskellDepends = [
base
dependent-sum
primitive
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/mokus0/prim-uniq";
description = "Opaque unique identifiers in primitive state monads";
license = stdenv.lib.licenses.publicDomain;

}) {};
"primes" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "primes";
version = "0.2.1.0";
sha256 = "74d66558fb638ea4d31eae2fe1a294cb5a9d64491314305d74a11d93f277c65b";
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/sebfisch/primes";
description = "Efficient, purely functional generation of prime numbers";
license = stdenv.lib.licenses.bsd3;

}) {};
"primitive" = callPackage
({
  mkDerivation
, base
, ghc-prim
, stdenv
, transformers
}:
mkDerivation {

pname = "primitive";
version = "0.6.3.0";
sha256 = "cddeff804e0f577f1be0179d5d145dfc170f8bfb66f663b9fba67104a45d9555";
libraryHaskellDepends = [
base
ghc-prim
transformers
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/haskell/primitive";
description = "Primitive memory-related operations";
license = stdenv.lib.licenses.bsd3;

}) {};
"probability" = callPackage
({
  mkDerivation
, base
, containers
, random
, stdenv
, transformers
, utility-ht
}:
mkDerivation {

pname = "probability";
version = "0.2.5.1";
sha256 = "d3e67c8b32dda838c455ddd532a668bc464cfe1d49dc74f4502175614af7ed2d";
enableSeparateDataOutput = true;
libraryHaskellDepends = [
base
containers
random
transformers
utility-ht
];
doHaddock = false;
doCheck = false;
homepage = "http://www.haskell.org/haskellwiki/Probabilistic_Functional_Programming";
description = "Probabilistic Functional Programming";
license = stdenv.lib.licenses.bsd3;

}) {};
"process-extras" = callPackage
({
  mkDerivation
, base
, bytestring
, data-default
, deepseq
, generic-deriving
, ListLike
, mtl
, process
, stdenv
, text
}:
mkDerivation {

pname = "process-extras";
version = "0.7.4";
sha256 = "293e75f849254ce0ce0d7fa659681917e07a557c602505a2f9e20777467e984e";
libraryHaskellDepends = [
base
bytestring
data-default
deepseq
generic-deriving
ListLike
mtl
process
text
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/seereason/process-extras";
description = "Process extras";
license = stdenv.lib.licenses.mit;

}) {};
"product-isomorphic" = callPackage
({
  mkDerivation
, base
, stdenv
, template-haskell
, th-data-compat
}:
mkDerivation {

pname = "product-isomorphic";
version = "0.0.3.2";
sha256 = "b4cba495f0779c619f466cdcc7914a4c2a209543dabebb6a32f003dc567317fb";
libraryHaskellDepends = [
base
template-haskell
th-data-compat
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/khibino/haskell-product-isomorphic";
description = "Weaken applicative functor on products";
license = stdenv.lib.licenses.bsd3;

}) {};
"product-profunctors" = callPackage
({
  mkDerivation
, base
, bifunctors
, contravariant
, profunctors
, stdenv
, tagged
, template-haskell
}:
mkDerivation {

pname = "product-profunctors";
version = "0.9.0.0";
sha256 = "569e53c67936f8bc9747c0ed6b557c903a3fd764178d3a2e8c107a0c576feacf";
libraryHaskellDepends = [
base
bifunctors
contravariant
profunctors
tagged
template-haskell
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/tomjaguarpaw/product-profunctors";
description = "product-profunctors";
license = stdenv.lib.licenses.bsd3;

}) {};
"profiterole" = callPackage
({
  mkDerivation
, base
, containers
, directory
, extra
, filepath
, ghc-prof
, hashable
, scientific
, stdenv
, text
}:
mkDerivation {

pname = "profiterole";
version = "0.1";
sha256 = "c688d8c4f04e7a674832b39add365cee8eb99ae83643a849529e2ec56a46d2f1";
isLibrary = false;
isExecutable = true;
executableHaskellDepends = [
base
containers
directory
extra
filepath
ghc-prof
hashable
scientific
text
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/ndmitchell/profiterole#readme";
description = "Restructure GHC profile reports";
license = stdenv.lib.licenses.bsd3;

}) {};
"profunctors" = callPackage
({
  mkDerivation
, base
, base-orphans
, bifunctors
, comonad
, contravariant
, distributive
, semigroups
, stdenv
, tagged
, transformers
}:
mkDerivation {

pname = "profunctors";
version = "5.2.2";
sha256 = "e981e6a33ac99d38a947a749179bbea3c294ecf6bfde41660fe6d8d5a2e43768";
revision = "1";
editedCabalFile = "1g6fvxq2npnyi8wv9mvwy35an68lrm5bf7xmx9x61mbwdxb6d0cg";
libraryHaskellDepends = [
base
base-orphans
bifunctors
comonad
contravariant
distributive
semigroups
tagged
transformers
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/ekmett/profunctors/";
description = "Profunctors";
license = stdenv.lib.licenses.bsd3;

}) {};
"project-template" = callPackage
({
  mkDerivation
, base
, base64-bytestring
, bytestring
, conduit
, conduit-extra
, containers
, directory
, filepath
, mtl
, resourcet
, stdenv
, text
, transformers
}:
mkDerivation {

pname = "project-template";
version = "0.2.0.1";
sha256 = "eb52496fa7448f5fed445525c05327b31a45282fc1d0a772c7022a9809e7c9dc";
libraryHaskellDepends = [
base
base64-bytestring
bytestring
conduit
conduit-extra
containers
directory
filepath
mtl
resourcet
text
transformers
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/fpco/haskell-ide";
description = "Specify Haskell project templates and generate files";
license = stdenv.lib.licenses.bsd3;

}) {};
"projectroot" = callPackage
({
  mkDerivation
, base
, directory
, stdenv
}:
mkDerivation {

pname = "projectroot";
version = "0.2.0.1";
sha256 = "53753086543ed199cf6f0d76852660f5d74c0874bfdee21c0f4e0d845b7e1ab8";
libraryHaskellDepends = [
base
directory
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/yamadapc/haskell-projectroot";
description = "Bindings to the projectroot C logic";
license = stdenv.lib.licenses.mit;

}) {};
"prometheus-client" = callPackage
({
  mkDerivation
, atomic-primops
, base
, bytestring
, clock
, containers
, mtl
, stdenv
, stm
, transformers
, utf8-string
}:
mkDerivation {

pname = "prometheus-client";
version = "0.3.0";
sha256 = "5f28c40b864d4773d019725e9f0dd7c06610c676250c8f1126e511d72348d05b";
libraryHaskellDepends = [
atomic-primops
base
bytestring
clock
containers
mtl
stm
transformers
utf8-string
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/fimad/prometheus-haskell";
description = "Haskell client library for http://prometheus.io.";
license = stdenv.lib.licenses.asl20;

}) {};
"prometheus-metrics-ghc" = callPackage
({
  mkDerivation
, base
, prometheus-client
, stdenv
, utf8-string
}:
mkDerivation {

pname = "prometheus-metrics-ghc";
version = "0.3.0";
sha256 = "dd26541686f69db972ee4e9d6d6d2d71a8525ce44af20e41842e0d77da7fec31";
libraryHaskellDepends = [
base
prometheus-client
utf8-string
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/fimad/prometheus-haskell";
description = "Metrics exposing GHC runtime information for use with prometheus-client";
license = stdenv.lib.licenses.asl20;

}) {};
"promises" = callPackage
({
  mkDerivation
, base
, primitive
, stdenv
}:
mkDerivation {

pname = "promises";
version = "0.3";
sha256 = "bf7c901915c122e7ab270f4c90cf02e83a703bf78f246948dc2452dcd294f260";
libraryHaskellDepends = [
base
primitive
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/ekmett/promises/";
description = "Lazy demand-driven promises";
license = stdenv.lib.licenses.bsd3;

}) {};
"prompt" = callPackage
({
  mkDerivation
, base
, base-compat
, mtl
, stdenv
, transformers
, transformers-compat
}:
mkDerivation {

pname = "prompt";
version = "0.1.1.2";
sha256 = "67b5711ef4c650747645b6d9de16a8bb04e04d1c2e4d39e3a8d4099873a151f2";
libraryHaskellDepends = [
base
base-compat
mtl
transformers
transformers-compat
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/mstksg/prompt";
description = "Monad (and transformer) for deferred-effect pure prompt-response queries";
license = stdenv.lib.licenses.mit;

}) {};
"proto-lens" = callPackage
({
  mkDerivation
, attoparsec
, base
, bytestring
, containers
, data-default-class
, lens-family
, parsec
, pretty
, stdenv
, text
, transformers
, void
}:
mkDerivation {

pname = "proto-lens";
version = "0.2.2.0";
sha256 = "92057ebfb5b2be5dc925b53ce96cf40abe5280bfdac833c0c567087e07fa7a9c";
libraryHaskellDepends = [
attoparsec
base
bytestring
containers
data-default-class
lens-family
parsec
pretty
text
transformers
void
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/google/proto-lens";
description = "A lens-based implementation of protocol buffers in Haskell";
license = stdenv.lib.licenses.bsd3;

}) {};
"proto-lens-arbitrary" = callPackage
({
  mkDerivation
, base
, bytestring
, containers
, lens-family
, proto-lens
, QuickCheck
, stdenv
, text
}:
mkDerivation {

pname = "proto-lens-arbitrary";
version = "0.1.1.1";
sha256 = "95c28f6bc9be5b1057215e1ab99b06f69fddc28c24068cb576b1d5cdbb12b7c9";
libraryHaskellDepends = [
base
bytestring
containers
lens-family
proto-lens
QuickCheck
text
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/google/proto-lens";
description = "Arbitrary instances for proto-lens";
license = stdenv.lib.licenses.bsd3;

}) {};
"proto-lens-descriptors" = callPackage
({
  mkDerivation
, base
, bytestring
, containers
, data-default-class
, lens-family
, lens-labels
, proto-lens
, stdenv
, text
}:
mkDerivation {

pname = "proto-lens-descriptors";
version = "0.2.2.0";
sha256 = "0b3f4eb9ddc081baef1f45831c17ab4b960ebac630af1f29bbd5521f46ca5bee";
libraryHaskellDepends = [
base
bytestring
containers
data-default-class
lens-family
lens-labels
proto-lens
text
];
doHaddock = false;
doCheck = false;
description = "Protocol buffers for describing the definitions of messages";
license = stdenv.lib.licenses.bsd3;

}) {};
"proto-lens-optparse" = callPackage
({
  mkDerivation
, base
, optparse-applicative
, proto-lens
, stdenv
, text
}:
mkDerivation {

pname = "proto-lens-optparse";
version = "0.1.1.1";
sha256 = "1c8706f789809bda1ad9db8b18b2a9c309e6040ded6ce1d85a2b0da7cc9e26fe";
libraryHaskellDepends = [
base
optparse-applicative
proto-lens
text
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/google/proto-lens#readme";
description = "Adapting proto-lens to optparse-applicative ReadMs";
license = stdenv.lib.licenses.bsd3;

}) {};
"protobuf" = callPackage
({
  mkDerivation
, base
, base-orphans
, bytestring
, cereal
, data-binary-ieee754
, deepseq
, mtl
, stdenv
, text
, unordered-containers
}:
mkDerivation {

pname = "protobuf";
version = "0.2.1.1";
sha256 = "cd659a085b670d204c0b4ddf0cb323e4f024c9d972cf183dc14154a44d5e722c";
libraryHaskellDepends = [
base
base-orphans
bytestring
cereal
data-binary-ieee754
deepseq
mtl
text
unordered-containers
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/alphaHeavy/protobuf";
description = "Google Protocol Buffers via GHC.Generics";
license = stdenv.lib.licenses.bsd3;

}) {};
"protobuf-simple" = callPackage
({
  mkDerivation
, base
, binary
, bytestring
, containers
, data-binary-ieee754
, directory
, filepath
, mtl
, parsec
, split
, stdenv
, text
}:
mkDerivation {

pname = "protobuf-simple";
version = "0.1.0.5";
sha256 = "6b46b427f14eacb814dfce0a678e7cb7742d1583d14f9540ca00fb0bc0e916f1";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
base
binary
bytestring
containers
data-binary-ieee754
mtl
text
];
executableHaskellDepends = [
base
containers
directory
filepath
mtl
parsec
split
text
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/sru-systems/protobuf-simple";
description = "Simple Protocol Buffers library (proto2)";
license = stdenv.lib.licenses.mit;

}) {};
"protocol-buffers" = callPackage
({
  mkDerivation
, array
, base
, binary
, bytestring
, containers
, directory
, filepath
, mtl
, parsec
, stdenv
, syb
, utf8-string
}:
mkDerivation {

pname = "protocol-buffers";
version = "2.4.9";
sha256 = "d5d8d9730938e8a5cf0bf04938bb4e9d25e299e5fb6c6353efd17657d12cd234";
libraryHaskellDepends = [
array
base
binary
bytestring
containers
directory
filepath
mtl
parsec
syb
utf8-string
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/k-bx/protocol-buffers";
description = "Parse Google Protocol Buffer specifications";
license = stdenv.lib.licenses.bsd3;

}) {};
"protocol-buffers-descriptor" = callPackage
({
  mkDerivation
, base
, bytestring
, containers
, protocol-buffers
, stdenv
}:
mkDerivation {

pname = "protocol-buffers-descriptor";
version = "2.4.9";
sha256 = "52ace1c2b810a1e040bcc99be01aa7e4c3e7c17f8bc5102be1a32c7a22678118";
enableSeparateDataOutput = true;
libraryHaskellDepends = [
base
bytestring
containers
protocol-buffers
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/k-bx/protocol-buffers";
description = "Text.DescriptorProto.Options and code generated from the Google Protocol Buffer specification";
license = stdenv.lib.licenses.bsd3;

}) {};
"protocol-radius" = callPackage
({
  mkDerivation
, base
, bytestring
, cereal
, containers
, cryptonite
, dlist
, memory
, stdenv
, template-haskell
, text
, transformers
}:
mkDerivation {

pname = "protocol-radius";
version = "0.0.1.0";
sha256 = "ae0c5ec142edb37df6bb51421b29e0a6c25013057e45e22159afb66cda3cf6f9";
libraryHaskellDepends = [
base
bytestring
cereal
containers
cryptonite
dlist
memory
template-haskell
text
transformers
];
doHaddock = false;
doCheck = false;
description = "parser and printer for radius protocol packet";
license = stdenv.lib.licenses.bsd3;

}) {};
"protocol-radius-test" = callPackage
({
  mkDerivation
, base
, bytestring
, cereal
, containers
, protocol-radius
, QuickCheck
, quickcheck-simple
, stdenv
, transformers
}:
mkDerivation {

pname = "protocol-radius-test";
version = "0.0.1.0";
sha256 = "b5cc9a15e7910ecb449d3bbb142b809fa34bee2079e772ca63d4bb975a41ada0";
libraryHaskellDepends = [
base
bytestring
cereal
containers
protocol-radius
QuickCheck
quickcheck-simple
transformers
];
doHaddock = false;
doCheck = false;
description = "testsuit of protocol-radius haskell package";
license = stdenv.lib.licenses.bsd3;

}) {};
"protolude" = callPackage
({
  mkDerivation
, array
, async
, base
, bytestring
, containers
, deepseq
, ghc-prim
, hashable
, mtl
, mtl-compat
, stdenv
, stm
, text
, transformers
, transformers-compat
}:
mkDerivation {

pname = "protolude";
version = "0.2.2";
sha256 = "685d0cf34b63482be84b785561009b8229327233ae311550d20d66b47b0f457c";
libraryHaskellDepends = [
array
async
base
bytestring
containers
deepseq
ghc-prim
hashable
mtl
mtl-compat
stm
text
transformers
transformers-compat
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/sdiehl/protolude";
description = "A small prelude";
license = stdenv.lib.licenses.mit;

}) {};
"proxied" = callPackage
({
  mkDerivation
, base
, stdenv
}:
mkDerivation {

pname = "proxied";
version = "0.3";
sha256 = "534d4d425f2834b39689e2af301bd5ff81d1619e65664a5efd797a0c88dbeb26";
libraryHaskellDepends = [
base
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/RyanGlScott/proxied";
description = "Make functions consume Proxy instead of undefined";
license = stdenv.lib.licenses.bsd3;

}) {};
"psql-helpers" = callPackage
({
  mkDerivation
, base
, postgresql-simple
, stdenv
}:
mkDerivation {

pname = "psql-helpers";
version = "0.1.0.0";
sha256 = "f13ca642072477d3ab0246c514e3fc78e0c5cb419345240fbad994ed2a3219f4";
libraryHaskellDepends = [
base
postgresql-simple
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/agrafix/psql-helpers#readme";
description = "A small collection of helper functions to generate postgresql queries";
license = stdenv.lib.licenses.mit;

}) {};
"psqueues" = callPackage
({
  mkDerivation
, base
, deepseq
, ghc-prim
, hashable
, stdenv
}:
mkDerivation {

pname = "psqueues";
version = "0.2.7.0";
sha256 = "4cf3628884015b091471e4425f5414207fd547cf71d9546e9b7318d857624fea";
libraryHaskellDepends = [
base
deepseq
ghc-prim
hashable
];
doHaddock = false;
doCheck = false;
description = "Pure priority search queues";
license = stdenv.lib.licenses.bsd3;

}) {};
"pthread" = callPackage
({
  mkDerivation
, base
, generic-deriving
, stdenv
}:
mkDerivation {

pname = "pthread";
version = "0.2.0";
sha256 = "b6ee8d48c2eccf84acef31c6065a74ae5844e2fc68e4f55a05b44eddae032388";
libraryHaskellDepends = [
base
generic-deriving
];
doHaddock = false;
doCheck = false;
homepage = "http://github.com/tweag/pthread";
description = "Bindings for the pthread library";
license = stdenv.lib.licenses.bsd3;

}) {};
"publicsuffix" = callPackage
({
  mkDerivation
, base
, filepath
, stdenv
, template-haskell
}:
mkDerivation {

pname = "publicsuffix";
version = "0.20171229";
sha256 = "400bc582221d400fa9169be56adce8609fd0d43c6e71f173218be41114681b0f";
libraryHaskellDepends = [
base
filepath
template-haskell
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/wereHamster/publicsuffix-haskell/";
description = "The publicsuffix list exposed as proper Haskell types";
license = stdenv.lib.licenses.mit;

}) {};
"pure-io" = callPackage
({
  mkDerivation
, base
, containers
, mtl
, safe
, stdenv
}:
mkDerivation {

pname = "pure-io";
version = "0.2.1";
sha256 = "a9ef0f324ce29fecdcdb11f2ce0088bcf282951727d983824e05f12e519bfb5f";
libraryHaskellDepends = [
base
containers
mtl
safe
];
doHaddock = false;
doCheck = false;
description = "Pure IO monad";
license = stdenv.lib.licenses.bsd3;

}) {};
"pureMD5" = callPackage
({
  mkDerivation
, base
, binary
, bytestring
, cereal
, crypto-api
, stdenv
, tagged
}:
mkDerivation {

pname = "pureMD5";
version = "2.1.3";
sha256 = "bef3358a5e3a45b649860a5792f052e2f927c0492a7056cf64425116c8a7b17d";
libraryHaskellDepends = [
base
binary
bytestring
cereal
crypto-api
tagged
];
doHaddock = false;
doCheck = false;
description = "A Haskell-only implementation of the MD5 digest (hash) algorithm";
license = stdenv.lib.licenses.bsd3;

}) {};
"purescript-bridge" = callPackage
({
  mkDerivation
, base
, containers
, directory
, filepath
, generic-deriving
, lens
, mtl
, stdenv
, text
, transformers
}:
mkDerivation {

pname = "purescript-bridge";
version = "0.11.1.2";
sha256 = "9c00caff498652addaf123d4d719f7488ece06a9279a348b6a182825482f15c6";
libraryHaskellDepends = [
base
containers
directory
filepath
generic-deriving
lens
mtl
text
transformers
];
doHaddock = false;
doCheck = false;
description = "Generate PureScript data types from Haskell data types";
license = stdenv.lib.licenses.bsd3;

}) {};
"pushbullet-types" = callPackage
({
  mkDerivation
, aeson
, base
, http-api-data
, microlens
, microlens-th
, scientific
, stdenv
, text
, time
, unordered-containers
}:
mkDerivation {

pname = "pushbullet-types";
version = "0.4.1.0";
sha256 = "6461a2cf5ff0b74f7caaf295ca7601922e9527f5bc9f37e3fbc6325026b5c85b";
libraryHaskellDepends = [
aeson
base
http-api-data
microlens
microlens-th
scientific
text
time
unordered-containers
];
doHaddock = false;
doCheck = false;
description = "Datatypes used by the Pushbullet APIs";
license = stdenv.lib.licenses.mit;

}) {};
"pusher-http-haskell" = callPackage
({
  mkDerivation
, aeson
, base
, base16-bytestring
, bytestring
, cryptonite
, hashable
, http-client
, http-types
, memory
, stdenv
, text
, time
, transformers
, unordered-containers
, vector
}:
mkDerivation {

pname = "pusher-http-haskell";
version = "1.5.1.4";
sha256 = "8accc4f031c2272f66c355945857dba033c28b0d6d91813496762d9f20a0cdc0";
libraryHaskellDepends = [
aeson
base
base16-bytestring
bytestring
cryptonite
hashable
http-client
http-types
memory
text
time
transformers
unordered-containers
vector
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/pusher-community/pusher-http-haskell";
description = "Haskell client library for the Pusher HTTP API";
license = stdenv.lib.licenses.mit;

}) {};
"pwstore-fast" = callPackage
({
  mkDerivation
, base
, base64-bytestring
, binary
, byteable
, bytestring
, cryptohash
, random
, stdenv
}:
mkDerivation {

pname = "pwstore-fast";
version = "2.4.4";
sha256 = "7219af66b6f762d9dd5376b3b25393d4d6626e390e9d9c9f87f6e3f13ea7fbb2";
libraryHaskellDepends = [
base
base64-bytestring
binary
byteable
bytestring
cryptohash
random
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/PeterScott/pwstore";
description = "Secure password storage";
license = stdenv.lib.licenses.bsd3;

}) {};
"qchas" = callPackage
({
  mkDerivation
, base
, hmatrix
, linear
, random
, stdenv
}:
mkDerivation {

pname = "qchas";
version = "1.1.0.0";
sha256 = "0e15a874bf1f9b09b520dd82f20867a2748bd2c98e38e3700f229cf6ee3d31e0";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
base
hmatrix
linear
random
];
executableHaskellDepends = [
base
hmatrix
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/ardeleanasm/qchas#readme";
description = "A library for implementing Quantum Algorithms";
license = stdenv.lib.licenses.bsd3;

}) {};
"qm-interpolated-string" = callPackage
({
  mkDerivation
, base
, bytestring
, haskell-src-meta
, stdenv
, template-haskell
, text
}:
mkDerivation {

pname = "qm-interpolated-string";
version = "0.3.0.0";
sha256 = "e86b337d1531e75d448f7ab9101f8703b19fa5bc3a94c7ea5c26accd31d12baf";
libraryHaskellDepends = [
base
bytestring
haskell-src-meta
template-haskell
text
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/unclechu/haskell-qm-interpolated-string";
description = "Implementation of interpolated multiline strings";
license = stdenv.lib.licenses.publicDomain;

}) {};
"quickbench" = callPackage
({
  mkDerivation
, base
, containers
, directory
, docopt
, pretty-show
, process
, safe
, split
, stdenv
, tabular
, time
}:
mkDerivation {

pname = "quickbench";
version = "1.0";
sha256 = "8bfe252e50a683346e753db312e9542f8d43256947ab215fcfd24af03787b926";
isLibrary = true;
isExecutable = true;
libraryHaskellDepends = [
base
containers
directory
docopt
pretty-show
process
safe
split
tabular
time
];
executableHaskellDepends = [
base
process
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/simonmichael/quickbench#readme";
description = "quick & easy benchmarking of command-line programs";
license = "GPL";

}) {};
"quickcheck-arbitrary-adt" = callPackage
({
  mkDerivation
, base
, QuickCheck
, stdenv
}:
mkDerivation {

pname = "quickcheck-arbitrary-adt";
version = "0.3.1.0";
sha256 = "5c4a2e20366def76ba851211ac554e9a0f60535efcd0940606e4d410c27a45b9";
libraryHaskellDepends = [
base
QuickCheck
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/plow-technologies/quickcheck-arbitrary-adt#readme";
description = "Generic typeclasses for generating arbitrary ADTs";
license = stdenv.lib.licenses.bsd3;

}) {};
"quickcheck-assertions" = callPackage
({
  mkDerivation
, base
, ieee754
, pretty-show
, QuickCheck
, stdenv
}:
mkDerivation {

pname = "quickcheck-assertions";
version = "0.3.0";
sha256 = "9b0328a788dcac0824a7d7496ab403eef04170551255c9e58fb6e2e319a9cacf";
libraryHaskellDepends = [
base
ieee754
pretty-show
QuickCheck
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/s9gf4ult/quickcheck-assertions";
description = "HUnit like assertions for QuickCheck";
license = stdenv.lib.licenses.lgpl3;

}) {};
"quickcheck-classes" = callPackage
({
  mkDerivation
, aeson
, base
, containers
, prim-array
, primitive
, QuickCheck
, stdenv
, transformers
}:
mkDerivation {

pname = "quickcheck-classes";
version = "0.3.3";
sha256 = "24b03c0e067cb64bf9d307f5b98ea59b3cfb4cda8d87c0dcb6c75b53d8bcf7b3";
libraryHaskellDepends = [
aeson
base
containers
prim-array
primitive
QuickCheck
transformers
];
doHaddock = false;
doCheck = false;
homepage = "https://github.com/andrewthad/quickcheck-classes#readme";
license = stdenv.lib.licenses.bsd3;
