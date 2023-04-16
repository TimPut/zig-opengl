{ pkgs ? import <nixpkgs> {} }:
pkgs.mkShell {
  buildInputs = [
    pkgs.dotnet-runtime
    pkgs.dotnet-sdk
  ];
  shellHook = ''
    export DOTNET_ROOT=${pkgs.dotnet-sdk};
  '';
}
