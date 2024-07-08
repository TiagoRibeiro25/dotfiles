#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ll='ls -lav --ignore=..'   # show long listing of all except ".."
alias l='ls -lav --ignore=.?*'   # show long listing but no hidden dotfiles except "."
alias grep='grep --color=auto'

PS1='[\u@\h \W]\$ '

fastfetch --config os

source /usr/share/nvm/init-nvm.sh

eval "$(starship init bash)"

alias z="zellij"
alias network-manager-ui="nmtui"
alias yay-remove-children='yay -Rns $(yay -Qdtq)'
alias yay-remove-package='yay -Rcns'
alias fastfetch="fastfetch --config groups"

# Print available envycontrol commands
alias envy-info='echo "sudo envycontrol -s integrated
sudo envycontrol -s hybrid --rtd3
sudo envycontrol -s nvidia --force-comp
envycontrol --query
sudo envycontrol --reset"'
