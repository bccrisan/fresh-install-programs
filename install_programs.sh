#!/bin/bash

#Update & Upgrade system before doing something else
sudo apt-get update
sudo apt-get upgrade -y

#Installing monitoring tools and file managers.
echo "Installing monitoring tools and file managers."
sudo apt-get install htop mc net-tools kio-extras krusader -y


#Install version controll tools
sudo apt-get install git, mercurial -y


#Install other tools
sudo apt-get install screen -y


#Install python packages
sudo apt-get install python-pip -y


#Install slurm
sudo apt-get install slurm -y


#Installing virtualisation tools.
sudo apt-get install virtualbox -y


#Installing electronics tools
sudo apt-get install kicad arduino -y

#Install Fritzing
wget fritzing.org/download/0.9.3b/linux-64bit/fritzing-0.9.3b.linux.AMD64.tar.bz2
tar -xvjf fritzing-0.9.3b.linux.AMD64.tar.bz2

rm fritzing-0.9.3b.linux.AMD64.tar.bz2
echo "Done installing Fritzing."



#Installing text editors
sudo apt-get install pluma -y

#Installing visual studio code
sudo snap install vscode --classic

#Installing communication tools & internet access tools.

#Skype
wget https://go.skype.com/skypeforlinux-64.deb
sudo dpkg -i skypeforlinux-64.deb
sudo apt-get install -f -y
rm skypeforlinux-64.deb
echo "Done Installing Skype"

# Google Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt-get install -f -y
rm google-chrome-stable_current_amd64.deb
echo "Done installing Google Chrome"

#Putty
sudo apt-get install putty -y
sudo apt-get install -f -y
echo "Done installing Putty"


#Installing media tools 
sudo apt-get install gimp kdenlive vlc ffmpeg mpv moc -y #or mocp

#OBS
sudo add-apt-repository ppa:obsproject/obs-studio -y
sudo apt-get update
sudo apt-get install obs-studio -y


#Installing IDE's.
sudo snap install pycharm-community --classic

#Installing Processing IDE
wget http://download.processing.org/processing-3.3.7-linux64.tgz
tar -xvzf processing-3.3.7-linux64.tgz
rm processing-3.3.7-linux64.tgz
echo "Done Installing Processing"

#Installing Codeblocks
sudo apt-get install codeblocs -y
echo "Installed codeblocks"


#Installing JetBrains ToolBox
echo "Installing JetBrains Toolbox"
mkdir DownloadedTemp
echo "Made temporary download directory .."
cd "DownloadedTemp"
echo "Switch into the new created folder and begin downloading toolbox."
wget https://download.jetbrains.com/toolbox/jetbrains-toolbox-1.9.3935.tar.gz
echo "Uncompressing.."
tar -xvf jetbrains-toolbox-*
rm *tar.gz
echo "Removed downloaded files"

cd jetbrains-toolbox-1.9.*
echo "Making files executable"
chmod +X jetbrains-toolbox
echo "Running JetBrains Toolbox in background, check status bar.."
echo "Attention! This script will not continue to run until Tollbox is closed"
./jetbrains-toolbox

cd ..
echo "Wait 5 seconds sir!"
sleep 5s
rm -rf DownloadedTemp
echo "Removed instalation files"



echo "Instalation finished."

