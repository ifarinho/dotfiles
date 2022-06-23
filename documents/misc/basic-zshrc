# zsh config
alias ls='ls --color=auto'
PS1='%B%F{green}ignacio%f%b %B%F{cyan}%1~%f%b %B%F{green}❯%f%b '

typeset -U path
path=(~/bin $path)

autoload -U colors && colors

autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)

# vars
export PATH="$HOME/.local/bin:$PATH"
export EDITOR="vim"
