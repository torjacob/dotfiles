bindkey -v

zstyle :compinstall filename "$ZDORDIR/.zshrc"
autoload -Uz compinit
compinit -d $XDG_CACHE_HOME/zsh/zcompdump-$ZSH_VERSION

unsetopt FLOW_CONTROL
setopt vi

source $ZDOTDIR/prompt
source $ZDOTDIR/aliases
