set -gx PATH "$HOME/.cargo/bin" $PATH
set -gx EDITOR nvim

export GPG_TTY="$(tty)"
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
gpgconf --launch gpg-agent

function proxy 
    set -gx PROXY_HTTP "http://127.0.0.1:7890"
	set -gx ALL_PROXY $PROXY_HTTP
	set -gx HTTPS_PROXY $PROXY_HTTP
	set -gx HTTP_PROXY $PROXY_HTTP
end

starship init fish | source
zoxide init fish | source
set fish_greeting

set_bing_wallpaper

alias cat="bat"
alias find="fd"
alias ls='eza --git --icons --color=always --group-directories-first'
alias la='ls -la'
alias cp="xcp"
alias grep="rg"
alias cd="z"
alias du="dust"
alias vim="nvim"
alias ra="ranger"
alias lg="lazygit"
alias x="extract"
