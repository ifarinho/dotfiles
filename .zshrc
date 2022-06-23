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

# print date
echo $(date +"%A %B %d %l:%M %p") "\n"

# vars
export PATH="$HOME/.local/bin:$PATH"
export EDITOR="vim"

# alias
alias ls="exa -la --group-directories-first"
alias ..="cd .."

alias dot='/usr/bin/git --git-dir=$HOME/dotfiles --work-tree=$HOME'

alias goland="nohup ./.local/bin/goland/bin/goland.sh &"
alias pycharm="nohup ./.local/bin/pycharm/bin/pycharm.sh &"
alias idea="nohup ./.local/bin/idea/bin/idea.sh &"
alias webstorm="nohup ./.local/bin/webstorm/bin/webstorm.sh &"
alias datagrip="nohup ./.local/bin/datagrip/bin/datagrip.sh &"

# sources
source /home/ignacio/.config/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /home/ignacio/.config/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# starship
eval "$(starship init zsh)"
