{ config, pkgs, misc, ... }: {
  # DO NOT EDIT: This file is managed by fleek. Manual changes will be overwritten.
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
    pkgs.kubecolor
    pkgs.kubectl
    pkgs.kubectl-tree
    pkgs.krew
    pkgs.kubectl-gadget
    pkgs.kubectl-evict-pod
    pkgs.clusterctl
    pkgs.talosctl
    pkgs.nmap
    pkgs.pre-commit
    pkgs.docker
    pkgs.docker-compose
    pkgs.xquartz
    pkgs.podman
    pkgs.podman-compose
    pkgs.podman-tui
    pkgs.bat
    pkgs.present
    pkgs.get_iplayer
    pkgs.ffmpeg_6
    pkgs.R
    pkgs.bash-my-aws
    pkgs.awstats
    pkgs.aws-rotate-key
    pkgs.awscli2
    pkgs.gh
    pkgs.tfsec
    pkgs.nmap-formatter
    pkgs.nmap-unfree
    pkgs.stdenv
    # Fleek Bling
    pkgs.git
    (pkgs.nerdfonts.override { fonts = [ "FiraCode" ]; })
  ];
  fonts.fontconfig.enable = true; 
  home.stateVersion =
    "22.11"; # To figure this out (in-case it changes) you can comment out the line and see what version it expected.
  programs.home-manager.enable = true;
}
