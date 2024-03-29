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

or

```nix
{ config, lib, pkgs, ... }:
let
  mkgRepo = { # nix-prefetch-git https://github.com/mkg20001/mkgpkgs
    "url": "https://github.com/mkg20001/mkgpkgs",
    "rev": "1ac27e20d74c5027581e6ef1614bd2588dd15a9a",
    "date": "2019-11-19T11:15:42+01:00",
    "sha256": "07kdxprwv1jhy5hm1rdf8zygsg8m1bml36br68ipdp0klchw56p8",
    "fetchSubmodules": false
  };
  mkgOverlay = (import (builtins.fetchGit mkgRepo));
in
  {
    nixpkgs.overlays = [ mkgOverlay ];
  }
```

# Update

```console
$ nix-shell '<nixpkgs/maintainers/scripts/update.nix>' --argstr maintainer mkg20001
```

# Docs

https://nixos.org/nixpkgs/manual/#ssec-stdenv-attributes "passthru.updateScript" for updating
