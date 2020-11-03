# Path expansion
path+=('/home/torjacob/repos/personal/scripts/statusbar')
path+=('/home/torjacob/.local/bin/')
path+=('/home/torjacob/repos/personal/scripts')
export PATH

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
precmd(){
  autoload -Uz vcs_info
  precmd_vcs_info() { vcs_info }
  precmd_functions+=( precmd_vcs_info )
  setopt prompt_subst

  # LEFT='$(%f %B%F{240}%~%f%b )'
  # RIGHT='$(\$vcs_info_msg_0_)'
  local LEFT='%~'
  local RIGHTWIDTH=$(($COLUMNS-${#LEFT}))

  zstyle ':vcs_info:git:*' formats '%F{240}%r %B%F{240} %b'
  zstyle ':vcs_info:*' enable git

  echo $LEFT${(l:$RIGHTWIDTH:)RIGHT}
}

PROMPT='﬌ '

# Aliases
source '/home/torjacob/repos/personal/dotfiles/zsh/aliases'

pfetch
