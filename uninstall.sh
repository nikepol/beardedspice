#!/bin/bash
# clean up the previous installation so we can test it again.

killall BeardieMusic
# Remove files
sudo rm -f ~/Library/Preferences/com.beardiemusic.BeardieMusic.plist
sudo rm -rf ~/Library/Application\ Support/BeardieMusic
sudo rm -rf /Applications/BeardieMusic.app

# Reboot the notifications service so it realizes that the app is gone
launchctl stop com.apple.usernoted
launchctl start com.apple.usernoted

echo \# BeardieMusic has been uninstalled
