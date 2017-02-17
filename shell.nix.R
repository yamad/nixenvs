{ nixpkgs ? import <nixpkgs> {} }:
let
  inherit (nixpkgs) pkgs;
  rEnv = with pkgs.rPackages; [
    devtools
    data_table
    tidyverse
  ];
in
pkgs.stdenv.mkDerivation {
  name = "my-R-env-0";
  buildInputs = with pkgs; [
    R rEnv
    # package building
    gettext libiconv libxml2 zlib
  ];
}
