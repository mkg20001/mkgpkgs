# super-overlay copied from mozilla
self: super:

with super.lib;

(foldl' (flip extends) (_: super)
  (map import (import ./overlays.nix)))
  self
