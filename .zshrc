# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Android Emulator
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools

ZSH_THEME="powerlevel10k/powerlevel10k"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load?
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  archlinux
  async
  docker
  docker-compose
  git
  golang
  node
  npm
  nvm
  sudo
  #zsh-autocomplete
  zsh-autosuggestions
  you-should-use
  zsh-syntax-highlighting
)

# Source Oh My Zsh
source $ZSH/oh-my-zsh.sh

# User configuration

# Preferred editor for local and remote sessions
# export EDITOR='vim'

# Compilation flags
# export ARCHFLAGS="-arch $(uname -m)"

# Custom aliases
alias z="zellij"
alias code="codium"
alias fonts-reset="sudo fc-cache -f -v"
alias ff="fastfetch --config groups.jsonc"
alias yay-remove-children='yay -Rns $(yay -Qdtq)'
alias yay-remove-package='yay -Rcns'
alias reflector-update="sudo reflector --verbose --latest 10 --sort rate --protocol https --save /etc/pacman.d/mirrorlist"
alias hi="bat ~/.zsh_history"

alias start-vmware-services="systemctl start vmware-networks.service vmware-usbarbitrator.service"
alias stop-vmware-services="systemctl stop vmware-networks.service vmware-usbarbitrator.service"

alias ls="exa --icons"
alias l="exa --icons -a -l"

# zsh-autocomplete optimizations
zstyle ':autocomplete:*' max-lines 1
zstyle ':completion:*' use-cache on

# Source Powerlevel10k configuration
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
