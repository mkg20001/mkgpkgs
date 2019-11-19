self: super:

# basically deb.mkg20001.io ported to nix

{
  packer = super.callPackage ./packer {};
}
