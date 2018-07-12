#!/bin/bash
sudo apt-get update

#Installing monitoring tools and file managers.
echo "Installing monitoring tools and file managers."
sudo apt-get install htop mc net-tools kio-extras krusader -y


#Installing virtualisation tools.
sudo apt-get install virtualbox -y


#Installing electronics tools
sudo apt-get install kicad arduino -y

#Install Fritzing
wget fritzing.org/download/0.9.3b/linux-64bit/fritzing-0.9.3b.linux.AMD64.tar.bz2
tar -vvjf fritzing-0.9.3b.linux.AMD64.tar.bz2

rm fritzing-0.9.3b.linux.AMD64.tar.bz2
echo "Done installing Fritzing."



#Installing text editors
sudo apt-get install pluma -y

#Installing visual studio code
echo "Installing Vistual Studio Code"
mkdir DownloadedTemp
echo "Made temporary download directory .."
cd "DownloadedTemp"

wget https://az764295.vo.msecnd.net/stable/0f080e5267e829de46638128001aeb7ca2d6d50e/code_1.25.0-1530796411_amd64.deb

sudo dpkg -i code*
sudo apt-get install -f
cd ..
rm -rf DownloadedTemp
echo "Done"

#Installing communication tools & internet access tools.

#Skype
wget https://go.skype.com/skypeforlinux-64.deb
sudo dpkg -i skypeforlinux-64.deb
sudo apt-get install -f
rm skypeforlinux-64.deb
echo "Done Installing Skype"

# Google Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt-get install -f
rm google-chrome-stable_current_amd64.deb
echo "Done installing Google Chrome"

#Putty
sudo apt-get install putty -y
sudo apt-get install -f
echo "Done installing Putty"


#Installing media tools 
sudo apt-get install gimp kdenlive vlc ffmpeg mpv moc-y #or mocp

#OBS
sudo add-apt-repository ppa:obsproject/obs-studio
sudo apt-get update
sudo apt-get install obs-studio


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


#install JetBrains ToolBox
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
rm -rf "DownloadedTemp"
echo "Removed instalation files"



echo "Instalation finished."

