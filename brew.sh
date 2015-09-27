#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# xcode-select --install

# ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install GNU core utilities (those that come with OS X are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
sudo ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum
# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install Bash 4.
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before
# running `chsh`.
brew install bash
brew tap homebrew/versions
#brew install bash-completion2 ---> does not work ?
# Install `wget` with IRI support.
brew install wget --with-iri
# Install more recent versions of some OS X tools.
brew install vim --override-system-vi
brew install homebrew/dupes/grep
brew install homebrew/dupes/openssh
brew install homebrew/dupes/screen
# brew install homebrew/php/php55 --with-gmp
# Install other useful binaries.
brew install git
brew install git-lfs
brew install imagemagick --with-webp
#brew install --appdir="/Applications" boot2docker
#brew install docker
brew install sqlite
brew install mysql
brew install npm
brew install dockutil

brew tap caskroom/cask
brew install brew-cask

brew cask install --appdir="/Applications" java
brew cask install google-chrome
rm /Applications/Google\ Chrome.app
sudo cp -R /opt/homebrew-cask/Caskroom/google-chrome/latest/Google\ Chrome.app /Applications
brew cask install --appdir="/Applications" firefox
brew cask install --appdir="/Applications" macvim
brew cask install --appdir="/Applications" menumeters
brew cask install --appdir="/Applications" evernote
brew cask install --appdir="/Applications" sourcetree
brew cask install --appdir="/Applications" intellij-idea
brew cask install --appdir="/Applications" eclipse-jee
brew cask install --appdir="/Applications" sequel-pro
brew cask install --appdir="/Applications" skype
brew cask install --appdir="/Applications" cyberduck
brew cask install --appdir="/Applications" slack
brew cask install --appdir="/Applications" spotify
brew cask install --appdir="/Applications" atom
brew cask install --appdir="/Applications" expressvpn
brew cask install --appdir="/Applications" google-drive
brew cask install --appdir="/Applications" box-sync
brew cask install --appdir="/Applications" sizeup
brew cask install --appdir="/Applications" vmware-fusion
brew cask install --appdir="/Applications" unrarx
brew cask install --appdir="/Applications" alfred
brew cask install --appdir="/Applications" vlc
brew cask install --appdir="/Applications" iterm2
brew cask install --appdir="/Applications" vagrant
brew cask install --appdir="/Applications" robomongo
brew cask install --appdir="/Applications" charles
brew cask install --appdir="/Applications" microsoft-office
brew cask install --appdir="/Applications" omnifocus
brew cask install --appdir="/Applications" remote-desktop-connection
brew cask install --appdir="/Applications" vmware-fusion
brew cask install --appdir="/Applications" steam


dockutil --remove "Launchpad" --no-restart
dockutil --remove "Notes" --no-restart
dockutil --remove "Maps" --no-restart
dockutil --remove "FaceTime" --no-restart
dockutil --remove "iPhoto" --no-restart
dockutil --remove "Pages" --no-restart
dockutil --remove "Numbers" --no-restart
dockutil --remove "Keynote" --no-restart

dockutil --add /Applications/Utilities/Terminal.app --no-restart
dockutil --add /Applications/MacVim.app --no-restart
dockutil --add /Applications/Atom.app --no-restart
dockutil --add /Applications/Google\ Chrome.app --no-restart
dockutil --add /Applications/Firefox.app --no-restart
dockutil --add /Applications/Slack.app --no-restart
dockutil --add /Applications/Skype.app --no-restart
dockutil --add /Applications/SourceTree.app --no-restart
dockutil --add /Applications/OmniFocus.app --no-restart
dockutil --add /Applications/Microsoft\ Office\ 2011/Microsoft\ Excel.app --no-restart
dockutil --add /Applications/Microsoft\ Office\ 2011/Microsoft\ Word.app --no-restart
dockutil --add /Applications/Calculator.app --no-restart
dockutil --add /Applications/Charles.app --no-restart
dockutil --add /Applications/Cyberduck.app --no-restart
dockutil --add /Applications/Eclipse.app --no-restart
dockutil --add /Applications/ExpressVPN.app --no-restart
dockutil --add /Applications/IntelliJ\ IDEA\ 14.app --no-restart
dockutil --add /Applications/iTerm.app --no-restart
dockutil --add /Applications/Spotify.app --no-restart
dockutil --add /Applications/VLC.app --no-restart
dockutil --add /Applications/VMWare\ Fusion.app --no-restart
dockutil --add /Applications/Sequel\ Pro.app --no-restart


# dockutil --move "Mail" --position 1 --no-restart
# dockutil --move "Calendar" --position 2 --no-restart
# dockutil --move "Messages" --position 3 --no-restart
# dockutil --move "HipChat" --position 4 --no-restart
# dockutil --move "Skype" --position 5 --no-restart
# dockutil --move "Google Chrome" --position 6 --no-restart
# dockutil --move "Firefox" --position 7 --no-restart
# dockutil --move "Safari" --position 8 --no-restart
# dockutil --move "PhpStorm" --position 9 --no-restart
# dockutil --move "Atom" --position 10 --no-restart
# dockutil --move "VirtualHostX" --position 11 --no-restart
# dockutil --move "Sequel Pro" --position 12 --no-restart
# dockutil --move "Terminal" --position 13 --no-restart

# /usr/bin/killall -HUP Dock >/dev/null 2>&1

# open -a "Google Chrome" https://chrome.google.com/webstore/detail/adblock-plus/cfhdojbkjhnklbpkdaibdccddilifddb
# open -a "Google Chrome" https://chrome.google.com/webstore/detail/postman-rest-client/fdmmgilgnpjigdojojpjoooidkmcomcm?hl=en
# open -a "Google Chrome" https://chrome.google.com/webstore/detail/reddit-enhancement-suite/kbmfpngjjgdllneeigpgjifpgocmfgmb
# open -a "Google Chrome" https://chrome.google.com/webstore/detail/bugherd-plus/popigpemobhbfkhnnkllkjgkaabedgpb
# open -a "Google Chrome" https://chrome.google.com/webstore/detail/https-everywhere/gcbommkclmclpchllfjekcdonpmejbdp/related?hl=en
#
# open -a "Google Chrome" https://agilebits.com/onepassword/extensions/chrome?beta=false
# open -a "Firefox" https://agilebits.com/onepassword/extensions/firefox?beta=false
# open -a "Safari" https://agilebits.com/onepassword/extensions/safari?beta=false

# Remove outdated versions from the cellar.
brew cleanup --force
rm -f -r /Library/Caches/Homebrew/*
