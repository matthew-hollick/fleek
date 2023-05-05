{ pkgs, misc, ... }: {
  # This file will never be modified by fleek
  # configs mentioned here must be listed in ~/fleek.yml #programs array or you will get errors

  programs.neovim = {
    viAlias = true;
    vimAlias = true;
  };

  programs.exa.enable = true; 
  #programs.bat.enable = true; 
  programs.atuin.enable = true; 
  programs.zoxide.enable = true; 
  programs.direnv.enable = true; 
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
        "host"
        "ssh"
        "cwd"
        "gitlite"
        "jobs"
        "exit"
      ];
      settings = {
        cwd-max-depth = 5; 
      };
      pathAliases = {
          "\\~/src/HMRC" = "HMRC";
        };
    };
}
