# Path to the oh-my-zsh installation
export ZSH=$HOME/.oh-my-zsh

# User path configuration
export PATH=$PATH:/usr/local/bin:$HOME/.rbenv/bin
export WRK="$HOME/Workspace"
export DOT="$WRK/dotfiles"
export DD="$HOME/Library/Developer/Xcode/DerivedData"
export PP="$HOME/Library/MobileDevice/Provisioning\ Profiles/"
export EDITOR="vim"

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

# Personal aliases
source "$DOT/.shell_aliases"

# Theme
ZSH_THEME_GIT_PROMPT_PREFIX="%{$reset_color%}%{$fg[green]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[magenta]%}●%{$fg[green]%})%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_CLEAN=")%{$reset_color%} "

PROMPT='%{$fg[blue]%}%1~%{$reset_color%} $(git_prompt_info)»%b '

# rbenv
eval "$(rbenv init -)"

# direnv
eval "$(direnv hook zsh)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
