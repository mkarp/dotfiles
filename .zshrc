# Path to the oh-my-zsh installation
export ZSH=$HOME/.oh-my-zsh

# User path configuration
source "$HOME/Workspace/dotfiles/constants"
source "$DOT/aliases"
source "$DOT/dev"

# Disable auto-setting terminal title
DISABLE_AUTO_TITLE="true"

# Enable command auto-correction
ENABLE_CORRECTION="true"

# Display red dots whilst waiting for completion
COMPLETION_WAITING_DOTS="true"

# Specify plugins to load
# Look in ~/.oh-my-zsh/custom/plugins/
plugins=(gitfast)

# Load oh-my-zsh
source $ZSH/oh-my-zsh.sh

# Set the language environment
export LANG=en_US.UTF-8

# Theme
ZSH_THEME_GIT_PROMPT_PREFIX="%{$reset_color%}%{$fg[green]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[magenta]%}●%{$fg[green]%})%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_CLEAN=")%{$reset_color%} "

PROMPT='%{$fg[blue]%}%1~%{$reset_color%} $(git_prompt_info)»%b '

# direnv
eval "$(direnv hook zsh)"

alias refreshenv=". ~/.zshrc"
