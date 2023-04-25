{ pkgs, misc, ... }: {
  # packages are just installed (no configuration applied)
  # programs are installed and configuration applied to dotfiles
  # add your personalized program configuration in ./user.nix   

  # Bling supplied programs

  # User specified programs 
    programs.dircolors.enable = true; 
    programs.exa.enable = true; 
    programs.zoxide.enable = true; 
    programs.direnv.enable = true; 
    programs.neovim.enable = true;

}
