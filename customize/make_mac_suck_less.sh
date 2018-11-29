#!/usr/bin/env bash

# Ask for the administrator password upfront
if [ $(sudo -n uptime 2>&1|grep "load"|wc -l) -eq 0 ]
then
    echo "Some of these settings are system-wide, therefore we need your permission."
    sudo -v
    echo ""
fi

echo "Disable sudden motion sensor. (Not useful for SSDs)."
sudo pmset -a sms 0

echo "Speed up mission control animations."
defaults write com.apple.dock expose-animation-duration -float 0.1

echo "Remove the auto-hiding dock delay."
defaults write com.apple.dock autohide-delay -int 0

echo "Save screenshots in PNG format."
defaults write com.apple.screencapture type -string png

echo "Save screenshots to user screenshots directory instead of desktop."
if [[ ! -e ~/Screenshots ]]; then
  mkdir ~/Screenshots
else
  echo "Folder ~/Screenshots already exists"
fi
defaults write com.apple.screencapture location -string ~/screenshots

echo "Disable annoying UI error sounds."
defaults write com.apple.systemsound com.apple.sound.beep.volume -int 0
defaults write com.apple.sound.beep feedback -int 0
defaults write com.apple.systemsound com.apple.sound.uiaudio.enabled -int 0
osascript -e 'set volume alert volume 0'

echo "Show all hidden files"
defaults write com.apple.Finder AppleShowAllFiles true

echo "Show all filename extensions."
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

echo "Disable the warning when changing a file extension."
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

echo "Use list view in all Finder windows by default."
defaults write com.apple.finder FXPreferredViewStyle -string '"Nlsv"'

echo "Show the ~/Library folder."
chflags nohidden ~/Library

echo "Show the /Volumes folder."
sudo chflags nohidden /Volumes

echo "Show full file path in finder windows."
defaults write _FXShowPosixPathInTitle com.apple.finder -int 1

echo "Don't write DS_Store files to network shares."
defaults write DSDontWriteNetworkStores com.apple.desktopservices -int 1

echo "Don't ask to use external drives as a Time Machine backup."
defaults write DoNotOfferNewDisksForBackup com.apple.TimeMachine -int 1

echo "Enable Developer Tools for Safari"
defaults write com.apple.Safari WebKitDeveloperExtras -bool true

echo "Set screen to lock as soon as the screensaver starts."
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0

echo "Disable crash reporter."
defaults write com.apple.CrashReporter DialogType none

echo "Disable wake on network access."
sudo systemsetup -setwakeonnetworkaccess off

echo "Show hidden app icons"
defaults write com.apple.dock showhidden -bool TRUE

echo "Use scroll gestures"
defaults write com.apple.dock scroll-to-open -bool TRUE

killall Dock
killall Finder
