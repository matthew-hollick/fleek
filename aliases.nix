{ pkgs, misc, ... }: {
  # DO NOT EDIT: This file is managed by fleek. Manual changes will be overwritten.
   home.shellAliases = {
    awssso = "op item get 'Amazon - HMRC' --otp | assume-role";
    
    cdsrc = "cd ~/src/HMRC";
    
    fleeks = "cd /Users/mjh/.local/share/fleek";
    
    gitsub = "git submodule update --init --recursive";
    
    ls = "exa";
    };
}
