#!/bin/bash
sudo apt-get update

#Installing monitoring tools and file managers.
echo "Installing monitoring tools and file managers."
sudo apt-get install htop mc net-tools kio-extras krusader -y


#Installing virtualisation tools.
sudo apt-get install virtualbox -y


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



#Installing IDE's.
sudo snap install pycharm-community --classic

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

