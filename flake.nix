{
  description = "My Nix pkgs repository";

  inputs = { nixpkgs.url = "github:nixos/nixpkgs/nixos-22.05"; };

  outputs = { self, nixpkgs }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs { inherit system; };
    in {
      packages.${system} = rec {
        chord = pkgs.callPackage ./pkgs/chord { };
        chord_custom_sg =
          pkgs.callPackage ./pkgs/chord { simgrid = custom_simgrid; };
        custom_simgrid = pkgs.callPackage ./pkgs/simgrid/custom.nix { };
      };
    };
}
