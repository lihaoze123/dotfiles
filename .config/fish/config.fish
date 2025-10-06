set -gx EDITOR nvim

set -gx DOCKER_HOST unix://$XDG_RUNTIME_DIR/docker.sock

starship init fish | source
zoxide init fish | source
set fish_greeting

# set -gx HTTP_PROXY http://127.0.0.1:7897
# set -gx HTTPS_PROXY https://127.0.0.1:7897

alias cat="bat"
alias find="fd"
alias ls="eza --git --icons --color=always --group-directories-first"
alias la="ls -la"
alias vim="nvim"
alias grep="rg"
alias lg="lazygit"

