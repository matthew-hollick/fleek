{ pkgs, misc, ... }: {
 home.sessionPath = [ 
    "$HOME/bin"
    "$HOME/.local/bin"
    "$HOME/bin"
    "/opt/homebrew/bin"
    "/opt/homebrew/sbin"
 ];
}
