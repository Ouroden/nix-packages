{ stdenv, fetchgit, cmake, simgrid, boost }:

stdenv.mkDerivation rec {
  pname = "chord";
  version = "0.1.0";

  src = fetchgit {
    url = "https://gitlab.inria.fr/nix-tutorial/chord-tuto-nix-2022";
    rev = "069d2a5bfa4c4024063c25551d5201aeaf921cb3";
    sha256 = "sha256-MlqJOoMSRuYeG+jl8DFgcNnpEyeRgDCK2JlN9pOqBWA=";
  };

  buildInputs = [
    cmake
    simgrid
    boost
  ];
}
