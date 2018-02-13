export DOT="$WRK/dotfiles"
export EDITOR="vim"
export SHELL_SECRETS="$HOME/.shell_secrets"
export WRK="$HOME/Workspace"

source "$SHELL_SECRETS"
source "$DOT/.bash_ps1"
source "$DOT/.shell_aliases"

export PATH="/usr/local/bin:${PATH}"
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

export BOOT_JVM_OPTIONS='-Xmx2g -client -XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none --add-modules java.xml.bind'

eval "$(rbenv init -)"
