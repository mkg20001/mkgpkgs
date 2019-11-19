# mkgpkgs

Mkg's NixOS repo

# How to use

```nix
{ config, lib, pkgs, ... }:
let
  url = "https://github.com/mkg20001/mkgpkgs/archive/master.tar.gz";
  mkgOverlay = (import (builtins.fetchTarball url));
in
  {
    nixpkgs.overlays = [ mkgOverlay ];
  }
```
