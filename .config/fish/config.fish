set -gx PATH "$HOME/.cargo/bin" $PATH
set -gx EDITOR nvim

starship init fish | source
zoxide init fish | source
set fish_greeting

alias cat="bat"
alias find="fd"
alias ls='exa --git --icons --color=always --group-directories-first'
alias cp="xcp"
alias grep="rg"
alias cd="z"
alias du="dust"
alias vim="nvim"
alias ra="ranger"
alias lg="lazygit"
