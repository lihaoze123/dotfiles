set -gx PATH "$HOME/.cargo/bin" $PATH
set -gx EDITOR nvim

function proxy 
    set -gx PROXY_HTTP "http://127.0.0.1:7897"
    set -gx ALL_PROXY $PROXY_HTTP
    set -gx HTTPS_PROXY $PROXY_HTTP
    set -gx HTTP_PROXY $PROXY_HTTP
end

starship init fish | source
zoxide init fish | source
set fish_greeting

if status is-login
    if test -z "$DISPLAY" -a "$XDG_VTNR" = 1
        exec Hyprland
    end
end

proxy

alias cat="bat"
alias find="fd"
alias ls='eza --git --icons --color=always --group-directories-first'
alias la='ls -la'
alias cp="xcp"
alias grep="rg"
alias du="dust"
alias vim="nvim"
alias ra="ranger"
alias lg="lazygit"
alias x="extract"
