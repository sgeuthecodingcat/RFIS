#!/bin/bash
# Added shebang
now=`date +"%F%::z"`
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
sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y | tee -a rfis_log-$date
sudo dnf config-manager --enable fedora-cisco-openh264 -y 
sudo dnf update @core -y
# self explanitory - enables fedora cisco openh264 repos & install rpm fusion repo
clear
echo ================
echo INSTALL COMPLETE
echo ================
echo Continuing to Multimedia in 3 seconds
echo Press CTRL+C to end here.
sleep 3
clear
echo ===================
echo MULTIMEDIA INSTALL
echo ===================
sudo dnf swap ffmpeg-free ffmpeg --allowerasing -y && sudo dnf update @multimedia --setopt="install_weak_deps=False" --exclude=PackageKit-gstreamer-plugin -y && sudo dnf update @sound-and-video -y | tee -a rfis_log-$date
# simply the multimedia step on their website
clear
echo ===================
echo MULTIMEDIA COMPLETE
echo ===================
echo Script has reported as finished, exiting in 5 seconds.
echo Press CTRL+C to exit immediately
echo If any issue has happened, report it in
echo https://github.com/sgeuthecodingcat/RFIS/issues
sleep 5
exit
