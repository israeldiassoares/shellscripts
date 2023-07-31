#!/bin/bash
# run it as sudo yes | sh debian_base_env_software.sh

sudo apt update -y
sudo apt upgrade -y

sudo apt install curl

#vscode gpg
echo GPG VSCode
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /usr/share/keyrings/microsoft-archive-keyring.gpg
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/usr/share/keyrings/microsoft-archive-keyring.gpg] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'


# install vscode
echo Installing VSCODE
sudo apt-get install apt-transport-https
sudo apt-get update -y
sudo apt-get install code # or code-insiders


#NVM
echo Installing NVM
sudo curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
source ~/.bashrc
nvm list-remote
nvm install v20.5.0

#GIT
echo Installing GIT
sudo apt-get install git
git config --global user.email "israeldiassoares@gmail.com"
git config --global user.name "israelsoares"

# virtual machine manager
echo Installing Virtual Machine Manager
sudo apt-get install virt-manager

#Postman
echo Installing Postman
curl -o- "https://dl-cli.pstmn.io/install/linux64.sh" | sh

#OBS
echo Installing OBS Studio
sudo apt install obs-studio

echo Finished Installing Programs!
