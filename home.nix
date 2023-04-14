{ config, pkgs, misc, ... }: {
  nixpkgs = {
    # Configure your nixpkgs instance
    config = {
      # Disable if you don't want unfree packages
      
      allowUnfree = true;
      # Workaround for https://github.com/nix-community/home-manager/issues/2942
      allowUnfreePredicate = (_: true);
      
    };
  };

  
  # managed by fleek, modify ~/.fleek.yml to change installed packages
  
  # packages are just installed (no configuration applied)
  # programs are installed and configuration applied to dotfiles
  home.packages = [
    # user selected packages
    pkgs.helix
    pkgs.sbt
    pkgs.aws-assume-role
    pkgs.awscli
    pkgs.awslogs
    pkgs.awsls
    pkgs.steampipe
    pkgs.python3
    pkgs.go
    pkgs.silver-searcher
    pkgs.atuin
    pkgs.tfswitch
    pkgs.virtualenv
    pkgs.micromamba
    pkgs.pew
    pkgs.tgswitch
    # Fleek Bling
    pkgs.git
    pkgs.htop
    pkgs.github-cli
    pkgs.glab
    (pkgs.nerdfonts.override { fonts = [ "FiraCode" ]; })
  ];
  fonts.fontconfig.enable = true; 
  home.stateVersion =
    "22.11"; # To figure this out (in-case it changes) you can comment out the line and see what version it expected.
  programs.home-manager.enable = true;
}
