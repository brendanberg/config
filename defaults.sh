#!/bin/sh

# This script changes the GUI-inaccessable preferences for certain
# Mac OS features.

echo ""
echo ""
echo "This script changes certain GUI-inaccessable preferences for Mac OS X"
echo "features. The following commands will be executed:"
echo ""
echo "defaults write com.apple.dock pinning end"
echo "defaults write com.apple.dashboard devmode YES"
echo "defaults write com.apple.mail AddressesIncludeNameOnPasteboard -bool NO"
echo "defaults write com.apple.iTunes hide-ping-dropdown -bool TRUE"
echo ""

echo "Do you want to continue? [Y/n] "
read answer
answer=`echo $answer | sed 's/^[yY].*$/y/'`
if [ -z "$answer" -o "x$answer" = "xy" ]; then

	defaults write com.apple.dock pinning end
	defaults write com.apple.dashboard devmode YES
	defaults write com.apple.mail AddressesIncludeNameOnPasteboard -bool NO
	defaults write com.apple.iTunes hide-ping-dropdown -bool TRUE

else
	echo ""
	echo "OK, never mind."
fi

echo ""
echo "It is now safe to log out."
echo ""
