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
  };

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
}
