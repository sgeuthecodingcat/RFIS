#!/bin/bash
# Added shebang
[ "$UID" -eq 0 ] || exec sudo bash "$0" "$@" 
# checks for root priveleges (UID 0) and if it is not being ran with sudo will re-exec the script as sudo using "sudo bash"
echo ==============================
echo RPM FUSION INSTALLATION SCRIPT
echo TESTING BRANCH
echo ==============================
echo Written by Sgeuthecodingcat
echo THIS IS THE TESTING BRANCH - INSTABLILITY IS LIKELY
echo Use at your own risk!
echo Press CTRL+C to quit, Script will continue in 5 seconds.
sleep 5
# stops script for 5 seconds, simple as that
sudo dnf install --nogpgcheck https://dl.fedoraproject.org/pub/epel/epel-release-latest-$(rpm -E %rhel).noarch.rpm -y
sudo dnf install --nogpgcheck https://mirrors.rpmfusion.org/free/el/rpmfusion-free-release-$(rpm -E %rhel).noarch.rpm https://mirrors.rpmfusion.org/nonfree/el/rpmfusion-nonfree-release-$(rpm -E %rhel).noarch.rpm -y
sudo subscription-manager repos --enable "codeready-builder-for-rhel-8-$(uname -m)-rpms" -y
sudo dnf config-manager --enable PowerTools -y
# self explanitory - install rpm fusion repo 
clear
echo ================
echo INSTALL COMPLETE
echo ================
echo Script has reported as finished, exiting in 5 seconds.
echo Press CTRL+C to exit immediately
echo If any issue has happened, report it in
echo https://github.com/sgeuthecodingcat/RFIS/issues
sleep 5
exit
