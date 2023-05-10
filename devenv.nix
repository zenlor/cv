{ pkgs, ... }:

{
  packages = with pkgs;[
    git
    pandoc
    texlive.combined.scheme-full
  ];

  languages.nix.enable = true;
}
