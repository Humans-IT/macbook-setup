#!/bin/bash

# Check for Homebrew,
# Install if we don't have it
if test ! "$(which brew)"; then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update homebrew recipes
brew update

# Install GNU core utilities (those that come with OS X are outdated)
brew install coreutils

# Install GNU `find`, `locate`, `updatedb`, and `xargs`, g-prefixed
brew install findutils

# Install Bash 4
brew install bash

brew tap caskroom/versions
brew cask install java8

binaries=(
  curl
  git
  git-flow
  node
  nvm
  npm
  yarn
  grunt
  jenv
  sbt
  scala
  htop
  bash
  bash-completion2
  readline
  python
  cmake
  coreutils
  findutils
  gdbm
  gettext  
  grep
  icdiff
  icu4c
  libffi
  libpng
  libssh2
  libyaml
  lua
  mas
  openssl
  openssl@1.1
  imagemagick
  awscli
  wget
  jq
  rpm
  cowsay
  sl
  inetutils
  p7zip
  direnv
)

echo "installing binaries..."
brew install "${binaries[@]}"

brew cleanup
echo 'eval $(direnv hook bash)' >> ~/.bashrc
