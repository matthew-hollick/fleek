{ pkgs, misc, ... }: {
  # This file will never be modified by fleek
  # configs mentioned here must be listed in ~/fleek.yml #programs array or you will get errors

  home.file = {
    ".tmux.conf" = {
     text = ''
     set-window-option -g mode-keys vi
     set -g default-terminal "screen-256color"
     set -ga terminal-overrides ',screen-256color:Tc'
     '';
    };
    ".tool-versions" = {
        text = ''
        pre-commit 2.17.0
        nodejs 17.9.0
        flutter 2.10.5-stable
        terraform-docs 0.16.0
        sbt 1.5.2
        python 3.10.4
        yarn 1.22.19
        gradle 7.5.1
        terraform 1.2.9
        java openjdk-19.0.2
        maven 3.9.1
        talosctl 1.3.6
        clusterctl 1.4.1
        terraform-validator 3.1.3
        '';
      };
  };

  home.sessionPath = ["$HOME/.local/bin"];

  programs.neovim = {
    viAlias = true;
    vimAlias = true;
  };

  programs.exa.enable = true; 
  #programs.bat.enable = true; 
  programs.atuin.enable = true; 
  programs.zoxide.enable = true; 
  programs.direnv = {
    enable = true;
    enableZshIntegration = true;
  };
  programs.git = {
    enable = true;
    diff-so-fancy.enable = true;
  };
  programs.gh = {
      enable = true;
      settings = {
         git_protocol = "ssh";
         prompt = "enabled";
         aliases = {
           co = "pr checkout";
           pv = "pr view";
         };
      };
  };
  # programs.starship.enable = true;
  #programs.powerline-go.enable = true;
  #programs.powerline-go.modules = [ 
  #  "host"
  #  "ssh"
  #  "cwd"
  #  "gitlite"
  #  "jobs"
  #  "exit"
  #];
  programs.powerline-go = {
      enable = true;
      modules = [
        #"host"
        "docker"
        "docker-context"
        "ssh"
        "cwd"
        "git"
        "jobs"
        "exit"
        "direnv"
        "rbenv"
        "terraform-workspace"
        "venv"
      ];
      settings = {
        cwd-max-depth = 5; 
      };
      pathAliases = {
          "\\~/src/HMRC" = "HMRC";
        };
    };
  programs.zsh.oh-my-zsh.enable = true;
  programs.zsh.shellAliases = {
      ll = "ls -l";
      assume-role = "function(){eval $(command assume-role $@);}";
    };
  programs.rtx.enable = true;
  programs.rtx.enableZshIntegration = true;
  programs.rtx.settings = {
    settings = {
      verbose = false;
      experimental = false;
      asdf_compat = true;
    };

  };
}
