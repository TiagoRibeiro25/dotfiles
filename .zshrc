if [ "$TERM" = "xterm-kitty" ]; then
  fastfetch --config archBTW.jsonc
fi

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# This makes repository status check for large repositories much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

export NVM_LAZY_LOAD=true
export NVM_COMPLETION=true

# Which plugins would you like to load?
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  docker
  docker-compose
  git
  node
  npm
  sudo
  you-should-use
  zoxide
  zsh-nvm
  zsh-autosuggestions
  zsh-syntax-highlighting
)

export ZSH="/home/tiago/.oh-my-zsh" # Path to your Oh My Zsh installation.
export ZSH_THEME="powerlevel10k/powerlevel10k"
export EDITOR='micro' # Preferred editor for local and remote sessions

# Android Emulator
# export ANDROID_HOME=$HOME/Android/Sdk
# export PATH=$PATH:$ANDROID_HOME/emulator
# export PATH=$PATH:$ANDROID_HOME/platform-tools

# Source Oh My Zsh
source $ZSH/oh-my-zsh.sh

# Custom aliases
alias cd="z"
alias ls="exa --icons"
alias l="exa --icons -a -l"
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias yay-remove-children='yay -Rcns $(yay -Qdtq)'
alias yay-remove-package='yay -Rcns'

#alias start-vmware-services="systemctl start vmware-networks.service vmware-usbarbitrator.service"
#alias stop-vmware-services="systemctl stop vmware-networks.service vmware-usbarbitrator.service"

alias "hdmi-sound"="echo 'echo 1 > /sys/bus/pci/rescan'"
alias "switch-hybrid"="sudo envycontrol -s hybrid --rtd3"
alias "switch-integrated"="sudo envycontrol -s integrated"

alias hi="cat ~/.zsh_history"
alias rm="trash"
alias fonts-reset="fc-cache -f -v"
alias ff="fastfetch --config archBTW.jsonc"
alias neofetch="fastfetch --config archBTW.jsonc"
alias nvidia-status="cat /sys/bus/pci/devices/0000:01:00.0/power/runtime_status && cat /sys/bus/pci/devices/0000\:01\:00.0/power_state"
alias "install-vencord"='sh -c "$(curl -sS https://raw.githubusercontent.com/Vendicated/VencordInstaller/main/install.sh)"'

# Custom functions
# Auto-update (in days)
zstyle ':omz:update' frequency 7
# zsh-autocomplete optimizations
zstyle ':autocomplete:*' max-lines 1
zstyle ':completion:*' use-cache on

# Source Powerlevel10k configuration
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export PATH=$PATH:/home/tiago/.millennium/ext/bin
