# Path to your oh-my-zsh installation
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load
ZSH_THEME="robbyrussell"

# Enable Oh My Zsh plugins
plugins=(
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
)

# title prompt
autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats 'on branch %b'

export PS1="%F{cyan}%n%f@%F{green}%m %F{yellow}%~ %{%F{blue}%}%(?.%F{green}√.%F{red}✖)%f %{$fg_bold[magenta]%}${vcs_info_msg_0_}%f"

# History configuration
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory

# aliases
alias ll='ls -la'
alias ll='ls -lah'
alias la='ls -A'
alias l='ls -CF'
alias ls="ls -G" # Enable colorized output

# autocomplete automatically
setopt AUTO_CD

# command execution time
export REPORTTIME=10

# Enable auto-suggestions
[ -f /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh ] && source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Enable syntax highlighting
[ -f /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ] && source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Case-insensitive (all), approximate (two errors) and substring (prefix and suffix) matching
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=*'
