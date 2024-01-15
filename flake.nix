{
  description = "Basic example for GQL client generation in Python";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/release-23.11";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs { inherit system; };
      in
      {
        # Executed when a Nix shell is requested
        devShells.default = pkgs.mkShell {
          buildInputs = with pkgs; [ just python3 ];
        };
      });
}
