#!/bin/bash

#
# Install applications from Mac App Store by mas
#
echo "#################################################"
echo "Please input your Apple ID password in the dialog"
echo "#################################################"
# login to App Store
mas signin --dialog ${APPLE_ID}


# Install Magnet
mas install 441258766
# Install Slack
mas install 803453959


# Logout from App Store
mas signout