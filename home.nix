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
    pkgs.kubectl-tree
    pkgs.krew
    pkgs.kubectl-gadget
    pkgs.kubectl-evict-pod
    pkgs.clusterctl
    pkgs.nmap
    pkgs.pre-commit
    pkgs.docker
    pkgs.docker-compose
    pkgs.podman
    pkgs.podman-compose
    pkgs.podman-tui
    pkgs.bat
    pkgs.present
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
    pkgs.jq
    pkgs.terraform-docs
    pkgs.powerline-fonts
    pkgs.darkhttpd
    pkgs.kafkactl
    pkgs.kafkacat
    pkgs.graphviz
    pkgs.curl
    pkgs.rsync
    pkgs.btop
    pkgs.socat
    pkgs.netcat
    pkgs.go-task
    pkgs.pipx
    pkgs.obsidian
    pkgs.ctop
    pkgs.tldr
    pkgs.iterm2
    pkgs.maven
    pkgs.jmeter
    pkgs.expect
    pkgs.kind
    pkgs.nikto
    pkgs.aws-mfa
    pkgs.mr
    pkgs.pwgen
    pkgs.cachix
    pkgs.discord
    pkgs.pandoc
    pkgs.asciidoctorj
    pkgs.vscode
    pkgs.rename
    pkgs.icdiff
    pkgs.lftp
    pkgs.hugo
    pkgs.nodejs
    pkgs.htop
    pkgs.tflint
    pkgs.mtr
    pkgs.lima
    pkgs.gnused
    pkgs.gawk
    pkgs.jsawk
    pkgs.gnuplot
    pkgs.jpegoptim
    pkgs.jpegrescan
    pkgs.tree
    pkgs.jdk
    pkgs.python310Packages.jupyter
    pkgs.imagemagick
    pkgs.wget
    pkgs.python310Packages.tkinter
    pkgs.packer
    pkgs.pdftk
    pkgs.texlive.combined.scheme-medium
    pkgs.oh-my-zsh
    pkgs._1password-gui
    pkgs._1password
    pkgs.units
    pkgs.aws-vault
    pkgs.zoom-us
    pkgs.clickhouse
    pkgs.pngcrush
    pkgs.steampipe
    pkgs.po4a
    pkgs.bb
    pkgs.colima
    pkgs.fx
    pkgs.visualvm
    pkgs.copilot-cli
    pkgs.lzma
    pkgs.commonsCompress
    pkgs.httpie
    pkgs.lynx
    pkgs.clamav
    pkgs.xz
    pkgs.pixz
    pkgs.automake
    pkgs.autoconf
    # Fleek Bling
    (pkgs.nerdfonts.override { fonts = [ "FiraCode" ]; })
  ];
  fonts.fontconfig.enable = true; 
  home.stateVersion =
    "22.11"; # To figure this out (in-case it changes) you can comment out the line and see what version it expected.
  programs.home-manager.enable = true;
}
