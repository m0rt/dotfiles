#!/usr/bin/env bash

#./brew.sh

#echo "installed everything"


#mkdir -p ~/ws


./.osx

echo "done .osx"

source bootstrap.sh

echo "done bootstrap.sh"

###############################################################################
# Kill affected applications                                                  #
###############################################################################

# for app in "Activity Monitor" "Address Book" "Calendar" "Contacts" "cfprefsd" \
# 	"Dock" "Finder" "Google Chrome" "Google Chrome Canary" "Mail" "Messages" \
# 	"Opera" "Safari" "SizeUp" "Spectacle" "SystemUIServer" "Terminal" \
# 	"Transmission" "Twitter" "iCal"; do
# 	killall "${app}" > /dev/null 2>&1
# done
echo "Done. restarting."

sudo shutdown -r now
