# Global path
PATH="$HOME/.local/bin:/usr/local/bin:$PATH"

# Spicetify path
PATH=$PATH:/home/mura/.spicetify

# Set the directoy we want to store zinit and plugins
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

# Download zinit, if it's not there yet
if [ ! -d $ZINIT_HOME ]; then
  mkdir -p "$(dirname $ZINIT_HOME)"
  git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

# Source/Load zinit
source "${ZINIT_HOME}/zinit.zsh"

# Plugins
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light Aloxaf/fzf-tab

# Snippets
zinit snippet OMZP::git
zinit snippet OMZP::colorize
zinit snippet OMZP::command-not-found
zinit snippet OMZP::man
zinit snippet OMZP::sudo
zinit snippet OMZP::systemd
zinit snippet OMZP::archlinux

# Load completions
autoload -U compinit && compinit

zinit cdreplay -q

# Keybindings
bindkey -e
bindkey '^p' history-search-backward
bindkey '^n' history-search-forward

# History
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUPE=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# Completion styling
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu select
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'eza --icons $realpath'
zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'eza --icons $realpath'

# Aliases
alias ls="eza --icons"
alias la="eza -la --icons"
alias laa="eza -a --icons"
alias li=lsix
alias update="paru"
alias clean="paru -Rns $(pacman -Qdtq)"
alias n="nvim"
alias mirrors="sudo reflector --latest 10 --age 6 --country US,Paraguay --sort rate --save /etc/pacman.d/mirrorlist"

# Shell integrations
eval "$(fzf --zsh)"
eval "$(zoxide init --cmd cd zsh)"

# Custom env
export TERM="kitty"
export SUDO_PROMPT="Say friend and enter: "
export PAGER="most"
export FZF_DEFAULT_OPTS=" \
--color=bg+:#313244,bg:#1e1e2e,spinner:#f5c2e7,hl:#f38ba8 \
--color=fg:#a6e3a1,header:#f38ba8,info:#89b4fa,pointer:#f5c2e7 \
--color=marker:#f5c2e7,fg+:#a6e3a1,prompt:#89b4fa,hl+:#f38ba8"

# Sourcing
source /home/mura/.zsh

# Fetch
fastfetch

# Zsh Insulter
if [ -f ~/.zshInsulter/zsh.command-not-found ]; then
    . ~/.zshInsulter/zsh.command-not-found
fi

# Load zoxide
eval "$(zoxide init zsh)"

# Load Starship
eval "$(starship init zsh)"
