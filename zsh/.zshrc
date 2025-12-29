# -------------------------------
# Powerlevel10k Instant Prompt
# MUST stay near the top
# -------------------------------
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# -------------------------------
# Theme & plugins (after instant prompt)
# -------------------------------
source ~/powerlevel10k/powerlevel10k.zsh-theme
source ~/zsh_plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/zsh_plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# -------------------------------
# Completion system
# -------------------------------
zmodload zsh/complist
autoload -Uz compinit
compinit -d ~/.cache/zcompdump

autoload -Uz colors && colors

# -------------------------------
# Completion styles (merged)
# -------------------------------

# Menu-based selection
zstyle ':completion:*:*:*:*:*' menu select

# Case-insensitive completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

# Expansion before completion
zstyle ':completion:*' completer _expand _complete

# Grouping & formatting
zstyle ':completion:*' group-name ''
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' verbose true

# Colors (use LS_COLORS)
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"

# Prompt when many matches exist
zstyle ':completion:*' list-prompt '%SAt %p: Hit TAB for more, or the character to insert%s'
zstyle ':completion:*' select-prompt '%SScrolling active: current selection at %p%s'

# Refresh command cache automatically
zstyle ':completion:*' rehash true

# Disable legacy compctl
zstyle ':completion:*' use-compctl false

# Better `kill` completion
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

# -------------------------------
# History
# -------------------------------
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt beep

# -------------------------------
# Aliases
# -------------------------------
alias ll='eza -la'
alias la='ls -A'
alias l='ls -CF'
alias cat='batcat'
alias update='sudo apt update && sudo apt upgrade'


 . "$HOME/.cargo/env"

 export PATH=$PATH:/usr/local/go/bin
