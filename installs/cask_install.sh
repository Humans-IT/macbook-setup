#!/bin/bash

brew tap caskroom/fonts
brew tap colindean/fonts-nonfree

# Apps
apps=(
  caffeine
  cheatsheet
  karabiner
  contexts
  firefox
  postman
  font-inconsolata
  font-microsoft-office
  font-open-sans
  font-oswald
  google-chrome
  iterm2 
  meld
  skype
  slack
  gitkraken
  steam
  macdown
  sourcetree
  sequel-pro
  keka
  tunnelblick
  imageoptim
  gas-mask
  robo-3t
  xmind
  sublime-text
  google-backup-and-sync
  fontbase
  loom
)

# Default is: /Users/$user/Applications
echo "installing apps..."
for var in "${apps[@]}"
  do
    brew cask install "${var}"
  done

brew cleanup
