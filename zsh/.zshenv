# Expand path
path+=("$HOME/.local/bin")
path+=("$HOME/bin")
export PATH

# Set defaults
export EDITOR="/usr/bin/nvim"
export VISUAL=$EDITOR
export TERMINAL="/usr/bin/alacritty"
export BROWSER="/usr/bin/librewolf"
export PAGER="/usr/bin/less"
export DOTFILES="$HOME/repos/personal/dotfiles"

# Xdg-standard
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"

# ZSH related
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export HISTFILE="$XDG_DATA_HOME/zsh/history"

# Making programs conform with xdg-standard
export CARGO_HOME="$XDG_DATA_HOME/cargo"
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"
export VSCODE_PORTABLE="$XDG_DATA_HOME/vscode"
export GTK_RC_FILES="$XDG_CONFIG_HOME/gtk-1.0/gtkrc"
export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtk-2.0/gtkrc"
export PYLINTHOME="$XDG_CACHE_HOME/pylint"
