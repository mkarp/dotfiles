# Path to the oh-my-zsh installation
export ZSH=$HOME/.oh-my-zsh

# User path configuration
export PATH=$PATH:/usr/local/bin:$HOME/.rvm/bin
export WRK="$HOME/Workspace"
export DOT="$WRK/dotfiles"

# Set name of the theme to load
# Look in ~/.oh-my-zsh/themes/
ZSH_THEME="mkarp"

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
alias zshrc="vim ~/.zshrc"
alias wrk="cd $WRK"
alias dot="cd $DOT"
alias remove_dashboard="defaults write com.apple.dashboard mcx-disabled -boolean YES; killall Dock"
alias kill_xcode="killall Xcode"
alias open_xcode="open /Applications/Xcode.app"
alias remove_derived_data="kill_xcode; rm -rf ~/Library/Developer/Xcode/DerivedData; open_xcode"
alias lock="open -a ScreenSaverEngine"

