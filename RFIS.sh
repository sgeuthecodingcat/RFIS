echo ==============================
echo RPM FUSION INSTALLATION SCRIPT
echo FOR USE WITH BASH ONLY
echo ==============================
echo Written by Sgeuthecodingcat
echo this CAN break systems because I am just bad at coding
echo Use at your own risk!
echo Press CTRL+C to quit, Script will continue in 5 seconds.
sleep 5
sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y
sudo dnf config-manager --enable fedora-cisco-openh264 -y
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
sudo dnf swap ffmpeg-free ffmpeg --allowerasing -y && sudo dnf update @multimedia --setopt="install_weak_deps=False" --exclude=PackageKit-gstreamer-plugin -y && sudo dnf update @sound-and-video -y
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
