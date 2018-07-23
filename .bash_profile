source "$HOME/Workspace/dotfiles/constants"
source "$SHELL_SECRETS"
source "$DOT/ps1"
source "$DOT/git"
source "$DOT/aliases"
source "$DOT/python"
source "$DOT/ruby"
source "$DOT/node"
source "$DOT/clojure"
source "$DOT/xcode"

export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
export PATH="$DOT/bin:/usr/local/bin:${PATH}"

alias refreshenv=". ~/.bash_profile"
