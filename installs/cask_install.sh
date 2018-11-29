#!/bin/bash

brew install caskroom/cask/brew-cask
brew tap caskroom/fonts
brew tap colindean/fonts-nonfree

# Apps
apps=(
  java8
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
  google-hangouts
  gpgtools
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
)

# Default is: /Users/$user/Applications
echo "installing apps..."
for var in "${apps[@]}"
  do
    brew cask install "${var}"
  done

brew cask cleanup