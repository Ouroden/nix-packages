{
  pkgs ? import (fetchTarball {
    url = "https://github.com/NixOS/nixpkgs/archive/4fe8d07066f6ea82cda2b0c9ae7aee59b2d241b3.tar.gz";
    sha256 = "sha256:06jzngg5jm1f81sc4xfskvvgjy5bblz51xpl788mnps1wrkykfhp";
  }) {}
}:

with pkgs;

let
  packages = rec {
    chord = callPackage ./pkgs/chord {};
    chord_custom_sg = callPackage ./pkgs/chord { simgrid = custom_simgrid; };
    custom_simgrid = callPackage ./pkgs/simgrid/custom.nix {};

    inherit pkgs; # similar to `pkgs = pkgs;` This lets callers use the nixpkgs version defined in this file.
  };
in
  packages
