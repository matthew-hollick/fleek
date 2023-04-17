{ pkgs, misc, ... }: {
   home.shellAliases = {
    cat = "bat";
    
    fleeks = "cd /Users/mjh/.local/share/fleek";
    
    gitsub = "git submodule update --init --recursive";
    
    ls = "exa";
    };
}
