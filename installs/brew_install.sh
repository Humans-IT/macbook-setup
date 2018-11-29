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

# Install more recent versions of some OS X tools
brew tap homebrew/dupes
brew install homebrew/dupes/grep

binaries=(
  git
  git-flow
  node
  nvm
  npm
  yarn
  gulp
  grunt
  jenv
  sbt
  htop
  bash
  bash-completion
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
)

echo "installing binaries..."
brew install "${binaries[@]}"

brew cleanup

