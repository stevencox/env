################################
##
## Initialize development environment.
##
################################

# Prepend Git
export PATH=/usr/local/bin:$PATH

# Configure prompt
PS1="[\u@mac\w]$ "
PS1="[\u@\H:\w]$ "

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

backup () {
    tar cvzf backup.tar.gz \
        ~/.bashrc  \
        ~/.pypirc  \
        ~/.emacs   \
        ~/.emacs.d \
        Library/Preferences/com.apple.Terminal.plist
}

