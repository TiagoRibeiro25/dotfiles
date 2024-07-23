#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


PS1='[\u@\h \W]\$ '

# Use bash-completion, if available
[[ $PS1 && -f /usr/share/bash-completion/bash_completion ]] && \
    . /usr/share/bash-completion/bash_completion

source /usr/share/nvm/init-nvm.sh

eval "$(starship init bash)"

# Alias
alias ls='ls --color=auto'
alias ll='ls -lav --ignore=..'   # show long listing of all except ".."
alias l='ls -lav --ignore=.?*'   # show long listing but no hidden dotfiles except "."
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias z="zellij"
alias zed="MANGOHUD=0 VK_ICD_FILENAMES=/usr/share/vulkan/icd.d/intel_icd.x86_64.json zeditor"

alias fastfetch="\fastfetch --config groups.jsonc"
alias network-manager-ui="nmtui"
alias yay-remove-children='yay -Rns $(yay -Qdtq)'
alias yay-remove-package='yay -Rcns'

\fastfetch --config arch

