{ pkgs, lib, config, inputs, ... }:

{
  packages = with pkgs; [
    # Libraries for image2 crate
    openimageio
    imath
  ];

  enterShell = ''
    rustc --version
  '';

  languages.rust.enable = true;

  pre-commit.hooks = {
    rustfmt.enable = true;
    clippy.enable = true;
  };
}
