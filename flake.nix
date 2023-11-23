{
  description = "Lorenzo Giuliani CV";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    devshell.url = "github:numtide/devshell";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, devshell, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
    let
      pkgs = import nixpkgs {
        inherit system;
        overlays = [devshell.overlays.default];
      };
    in {
      devShell = pkgs.devshell.mkShell {
        commands = with pkgs;[
          { package = emacs29-nox; }
          { package = pandoc; name = "pandoc"; }
        ];

        packages = with pkgs;[
          git
          texlive.combined.scheme-full
          gnumake
          nixd
        ];
      };
    });
}
