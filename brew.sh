#!/usr/bin/env bash

# Install command-line tools using Homebrew.

export HOMEBREW_CASK_OPTS="--appdir=/Applications"

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
brew cask install --appdir="/Applications" appcleaner
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
brew cask install --appdir="/Applications" dropbox
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
brew cask install --appdir="/Applications" dockertoolbox
brew cask install --appdir="/Applications" vmware-fusion
brew cask install --appdir="/Applications" steam
brew cask install --appdir="/Applications" kaleidoscope
brew cask install --appdir="/Applications" jadengeller-helium
brew cask install --appdir="/Applications" noizio


# Remove outdated versions from the cellar.
brew cleanup --force
rm -f -r /Library/Caches/Homebrew/*
