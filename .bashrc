#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


fastfetch --config arch

PS1='[\u@\h \W]\$ '

source /usr/share/nvm/init-nvm.sh

# Alias
alias ls='ls --color=auto'
alias ll='ls -lav --ignore=..'   # show long listing of all except ".."
alias l='ls -lav --ignore=.?*'   # show long listing but no hidden dotfiles except "."
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias z="zellij"
alias code="codium"
alias fonts-reset="sudo fc-cache -f -v"
alias fastfetch="\fastfetch --config groups.jsonc"
alias yay-remove-children='yay -Rns $(yay -Qdtq)'
alias yay-remove-package='yay -Rcns'

