{ pkgs, misc, ... }: {
   home.shellAliases = {
    cat = "bat";
    
    cdsrc = "cd ~/src/HMRC";
    
    fleeks = "cd /Users/mjh/.local/share/fleek";
    
    gitsub = "git submodule update --init --recursive";
    
    ls = "exa";
    };
}
