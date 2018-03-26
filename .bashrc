################################
##
## Initialize development environment.
##
################################

# Prepend Git
export PATH=/usr/local/bin:$PATH

# Configure prompt
PS1="[\u@mac\w]$ "

# Alias renci ssh
renci () {
    mosh scox@scox.europa.renci.org -- $*
}

showFiles () {
    defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app
}
hideFiles () {
    defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app
}

git config --global user.name "Steven Cox"
git config --global user.email scox@renci.org


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH=$PATH:$HOME/bin:$HOME/dev/smartBag/bin
