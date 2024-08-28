{ pkgs, lib, config, inputs, ... }:
{
  packages = with pkgs; [
    yq
    mkdocs
    # Libraries for image2 crate
    #openimageio
    #imath
  ];

  enterShell = ''
    rustc --version
  '';

  enterTest = ''
    psql -P pager=off --list
  '';

  languages.rust.enable = true;

  services.postgres.enable = true;
  processes.docs.exec = "mkdocs serve";

  pre-commit.hooks = {
    rustfmt.enable = true;
    clippy.enable = true;
  };
}
