#!/bin/bash

if [ $USER != "root" ]; then

echo "Error ==> This script must be run as root"

exit
fi

if [ ! -e "/Volumes/EFI" ]; then

echo " Error ==> /Volumes/EFI does not exist"

echo " Error ==> Your EFI partition must be mounted for this script to work"
fi

echo "Updating EFI boot cache"
rm -rf /Volumes/EFI/Extra/Extensions.mkext 
chmod -R 755 /Volumes/EFI/Extra/Extensions
chown -R root:wheel /Volumes/EFI/Extra/Extensions
kextcache -v 1 -t -m /Volumes/EFI/Extra/Extensions.mkext /Volumes/EFI/Extra/Extensions > update.log 2>&1
chmod 755 /Volumes/EFI/Extra/Extensions.mkext
chown root:wheel /Volumes/EFI/Extra/Extensions.mkext

echo "done."
