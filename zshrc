# Lines configured by zsh-newuser-install
HISTFILE=~/.config/zsh/histfile
HISTSIZE=10000
SAVEHIST=10000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/torjacob/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Prompt
PROMPT='%f %B%F{240}%1~%f%b %# '
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT=\$vcs_info_msg_0_
zstyle ':vcs_info:git:*' formats '%F{240}(%b)%r%f %f %B%F{240}%1~%f%b %# '
zstyle ':vcs_info:*' enable git


### ALIASES ###

alias ls='ls --color=auto'
alias sysup='sudo pacman -Syu'
alias tsm='transmission-remote'
alias compress='zip -r'
alias ytcdl='youtube-dl -f "bestvideo[height>=720]+bestaudio/best" -ciw -o "%(title)s.%(ext)s" -v'

alias ds='du -csh'
alias dss='du -hs * | sort -h'
alias dts='dss; ds'

# Ultralist aliases
alias ull='ultralist list'
alias ula='ultralist add'
alias ulc='ultralist c'

# Code aliases
alias code='code .'
alias c='code .'

# NVIM aliases
alias vim='nvim'
alias vi='nvim'
alias v='nvim'

alias nvimconf='nvim ~/dev/dotfiles/nvim/'

pfetch
