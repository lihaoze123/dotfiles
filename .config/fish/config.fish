set -gx PATH "$HOME/.cargo/bin" $PATH
set -gx EDITOR nvim

function proxy 
    set -xg PEOXY_HTTP "http://127.0.0.1:7890"
	set -xg ALL_PROXY $PROXY_HTTP
	set -xg HTTPS_PROXY $PROXY_HTTP
	set -xg HTTP_PROXY $PROXY_HTTP
end

function wsl_proxy
	set -xg hostip $(cat /etc/resolv.conf | grep nameserver | awk '{ print $2 }')
	set -xg wslip $(hostname -I | awk '{print $1}')
	set -xg port 7890
	set -xg PROXY_HTTP "http://$hostip:$port"
	set -xg ALL_PROXY $PROXY_HTTP
	set -xg HTTPS_PROXY $PROXY_HTTP
	set -xg HTTP_PROXY $PROXY_HTTP
end

starship init fish | source
zoxide init fish | source
set fish_greeting

alias cat="bat"
alias find="fd"
alias ls='exa --git --icons --color=always --group-directories-first'
alias la='ls -la'
alias cp="xcp"
alias grep="rg"
alias cd="z"
alias du="dust"
alias vim="nvim"
alias ra="ranger"
alias lg="lazygit"
alias x="extract"
