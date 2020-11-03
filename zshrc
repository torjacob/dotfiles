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
# Load version control information
autoload -Uz vcs_info
precmd() {
  vcs_info;
  pwdsize=${#${(%):-%~}}
  gitsize=${#${vcs_info_msg_0_}}
}
# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats '%r  %b'
setopt PROMPT_SUBST

PROMPT='%F{240}%B%~${(r:$((COLUMNS-($pwdsize+$gitsize))):)}$vcs_info_msg_0_
﬌%f%b '
RPROMPT='%F{240}%T%f'



# Aliases
source '/home/torjacob/repos/personal/dotfiles/zsh/aliases'

pfetch
