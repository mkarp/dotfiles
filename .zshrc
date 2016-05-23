# Path to the oh-my-zsh installation
export ZSH=$HOME/.oh-my-zsh

# User path configuration
export PATH=$PATH:/usr/local/bin:$HOME/.rvm/bin
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
plugins=(gitfast brew gem osx web-search)

# Load zsh
source $ZSH/oh-my-zsh.sh

# Set the language environment
export LANG=en_US.UTF-8

# Personal aliases
alias zshrc="vim ~/.zshrc && . ~/.zshrc"
alias gitconfig="vim ~/.gitconfig"
alias wrk="cd $WRK"
alias dot="cd $DOT"
alias remove_dashboard="defaults write com.apple.dashboard mcx-disabled -boolean YES; killall Dock"
alias kill_xcode="killall Xcode"
alias open_xcode="open /Applications/Xcode.app"
alias open_derived_data="open $DD"
alias remove_derived_data="kill_xcode; rm -rf $DD; open_xcode"
alias remove_provisioning_profiles="kill_xcode; rm -rf $PP; open_xcode"
alias sleep="pmset sleepnow"
alias reload_zshrc=". ~/.zshrc"
alias daily="$EDITOR $HOME/Daily/`date +'%Y'`/`date +'%m'`/`date +'%d'`.txt"
alias update_dot="dot; g up; popd"
alias reset_dns_cache="sudo killall -HUP mDNSResponder"
alias create_osx_usb="sudo /Applications/Install\ OS\ X\ El\ Capitan.app/Contents/Resources/createinstallmedia --volume /Volumes/Untitled --applicationpath /Applications/Install\ OS\ X\ El\ Capitan.app --nointeraction"
alias sortpb="pbpaste | sort -u | pbcopy"

# Theme
ZSH_THEME_GIT_PROMPT_PREFIX="%{$reset_color%}%{$fg[green]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[magenta]%}●%{$fg[green]%})%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_CLEAN=")%{$reset_color%} "

vcs_status() {
    if [[ $(whence in_svn) != "" ]] && in_svn; then
        svn_prompt_info
    elif [[ $(whence in_hg) != "" ]] && in_hg; then
        hg_prompt_info
    else
        git_prompt_info
    fi
}

PROMPT='%{$fg[blue]%}%1~%{$reset_color%} $(vcs_status)»%b '
