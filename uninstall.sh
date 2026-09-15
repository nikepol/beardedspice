#!/bin/bash
# clean up the previous installation so we can test it again.

killall Beardie
# Remove files
sudo rm -f ~/Library/Preferences/com.beardie.Beardie.plist
sudo rm -rf ~/Library/Application\ Support/Beardie
sudo rm -rf /Applications/Beardie.app

# Reboot the notifications service so it realizes that the app is gone
launchctl stop com.apple.usernoted
launchctl start com.apple.usernoted

echo \# Beardie has been uninstalled
