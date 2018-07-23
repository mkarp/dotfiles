source "$HOME/Workspace/dotfiles/constants"
source "$SHELL_SECRETS"
source "$DOT/git_completion"
source "$DOT/ps1"
source "$DOT/aliases"
source "$DOT/dev"
source "$DOT/xcode"

export PATH="$DOT/bin:${PATH}"

export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

alias refreshenv=". ~/.bash_profile"
