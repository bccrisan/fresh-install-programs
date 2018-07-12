#!/bin/bash
#sudo apt-get update
#sudo apt-get install htop mc net-tools kio-extras krusader virtualbox -y
#sudo snap install pycharm-community --classic

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

cd
sleep 30s	#waits for 30 seconds
rm -rf "DownloadedTemp"
echo "Removed instalation files"

echo "End of program"

