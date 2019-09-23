source "$HOME/Workspace/dotfiles/constants"
source "$SHELL_SECRETS"
source "$DOT/ps1"
source "$DOT/aliases"
source "$DOT/git/aliases"
source "$DOT/git/git-completion.bash"

export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
export PATH="$DOT/bin:$HOME/.local/bin:${PATH}"

source "$DOT/env/clojure"
source "$DOT/env/python"
source "$DOT/env/ruby"
source "$DOT/env/tmuxinator"
source "$DOT/env/xcode"
source "$DOT/env/node"
source "$DOT/env/imagemagick"
