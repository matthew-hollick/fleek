{ pkgs, misc, ... }: {
   home.shellAliases = {
    cdsrc = "cd ~/src/HMRC";
    
    fleeks = "cd /Users/mjh/.local/share/fleek";
    
    gitsub = "git submodule update --init --recursive";
    
    ls = "exa";
    };
}
