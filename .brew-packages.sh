# .brew-packages.sh
# Last updated 5/12/20 by Aditya.


# Part 1: Update and upgrade brew
brew update
brew upgrade


# Part 2: Install packages
# Antigen: Zsh plugin manager
brew install antigen
# GnuPG: GPG implementation
brew install gnupg
# ASpell: Spell checker
brew install aspell
# Youtube-DL: Video downloader
brew install youtube-dl
# FFmpeg: Video converter
brew install ffmpeg
# Python 3
brew install python3
# NodeJS
brew install node
# fzf (powerful fuzzy finder)
brew install fzf

# Part 3: Install casks
# VS Code
brew cask install visual-studio-code
# ST3
brew cask install sublime-text
# Emacs (Yamamoto Mac port)
brew tap railwaycat/emacsmacport
brew cask install emacs-mac
# F.lux
brew cask install flux
# Dropbox
brew cask install dropbox
# Fira Code programming font (also used in my Emacs config)
brew tap homebrew/cask-fonts
brew cask install font-fira-code
