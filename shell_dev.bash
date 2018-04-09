export BOOT_JVM_OPTIONS='-Xmx2g -client -XX:+TieredCompilation -XX:TieredStopAtLevel=1 -Xverify:none --add-modules java.xml.bind'

export PATH="$(pyenv root)/shims:$(rbenv root)/shims:/usr/local/bin:${PATH}"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
