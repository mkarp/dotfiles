source "$HOME/Workspace/dotfiles/shell_constants.bash"
source "$SHELL_SECRETS"
source "$DOT/asare.bash"
source "$DOT/contentful.bash"
source "$DOT/git_completion.bash"
source "$DOT/ps1.bash"
source "$DOT/shell_aliases.bash"
source "$DOT/shell_dev.bash"

export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
