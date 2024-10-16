# Check if the terminal is kitty
if [ "$TERM" = "xterm-kitty" ]; then
  fastfetch --config doubledot.jsonc
fi

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# This makes repository status check for large repositories much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load?
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  archlinux
  docker
  docker-compose
  git
  golang
  node
  npm
  nvm
  sudo
  you-should-use
  zoxide
  zsh-autosuggestions
  zsh-syntax-highlighting
)

# Environment variables
export ZSH="$HOME/.oh-my-zsh" # Path to your Oh My Zsh installation.
export ZSH_THEME="powerlevel10k/powerlevel10k"
export EDITOR='micro' # Preferred editor for local and remote sessions

# Android Emulator
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools

# Source Oh My Zsh
source $ZSH/oh-my-zsh.sh

# Custom aliases
alias cd="z"
alias fk="fuck"
alias mc="micro"
alias code="codium"
alias fonts-reset="sudo fc-cache -f -v"
alias ff="fastfetch --config doubledot.jsonc"
alias yay-remove-children='yay -Rcns $(yay -Qdtq)'
alias yay-remove-package='yay -Rcns'
alias reflector-update="sudo reflector --verbose --latest 10 --sort rate --protocol https --save /etc/pacman.d/mirrorlist"
alias hi="bat ~/.zsh_history"
alias nvidia-status="cat /sys/bus/pci/devices/0000:01:00.0/power/runtime_status && cat /sys/bus/pci/devices/0000\:01\:00.0/power_state"
# Start/Stop VMware services
alias start-vmware-services="systemctl start vmware-networks.service vmware-usbarbitrator.service"
alias stop-vmware-services="systemctl stop vmware-networks.service vmware-usbarbitrator.service"
# ls with icons
alias ls="exa --icons"
alias l="exa --icons -a -l"

# Custom functions
# Auto-update (in days)
zstyle ':omz:update' frequency 7
# zsh-autocomplete optimizations
zstyle ':autocomplete:*' max-lines 1
zstyle ':completion:*' use-cache on

# Source Powerlevel10k configuration
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
