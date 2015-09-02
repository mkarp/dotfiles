# Path to the oh-my-zsh installation
export ZSH=$HOME/.oh-my-zsh

# User path configuration
export PATH=$PATH:/usr/local/bin:$HOME/.rvm/bin
export WRK="$HOME/Workspace"
export DOT="$WRK/dotfiles"
export DD="$HOME/Library/Developer/Xcode/DerivedData"

# Disable auto-setting terminal title
DISABLE_AUTO_TITLE="true"

# Enable command auto-correction
ENABLE_CORRECTION="true"

# Display red dots whilst waiting for completion
COMPLETION_WAITING_DOTS="true"

# Specify plugins to load
# Look in ~/.oh-my-zsh/custom/plugins/
plugins=(gitfast brew gem osx web-search)

# Load zsh
source $ZSH/oh-my-zsh.sh

# Set the language environment
export LANG=en_US.UTF-8

# Personal aliases
alias zshrc="vim ~/.zshrc && . ~/.zshrc"
alias wrk="cd $WRK"
alias dot="cd $DOT"
alias remove_dashboard="defaults write com.apple.dashboard mcx-disabled -boolean YES; killall Dock"
alias kill_xcode="killall Xcode"
alias open_xcode="open /Applications/Xcode.app"
alias open_derived_data="open $DD"
alias remove_derived_data="kill_xcode; rm -rf $DD; open_xcode"
alias sleep="pmset sleepnow"
alias reload_zshrc=". ~/.zshrc"

# Theme
PROMPT='%B$FG[034]%c $(git_prompt_info) %{$reset_color%}%b'

ZSH_THEME_GIT_PROMPT_PREFIX="$FG[248]($FG[033]"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="$FG[248]) $FG[220]✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="$FG[248])"
