# .brew-packages.sh
# Last updated 5/10/20 by Aditya.


# Part 1: Update and upgrade brew
brew update
brew upgrade


# Install packages
# Antigen: Zsh plugin manager
brew install antigen
# GnuPG: GPG implementation
brew install gnupg

# Add casks
brew cask install visual-studio-code
brew cask install sublime-text
brew cask install emacs
brew cask install flux
brew cask install dropbox
