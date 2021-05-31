#!/bin/sh

pamac update --no-confirm
pamac install jdk11-openjdk maven gradle nvm npm ttf-jetbrains-mono docker docker-compose --no-confirm

sudo usermod -aG docker $USER
sudo systemctl enable docker.service
sudo systemctl enable containerd.service

echo 'source /usr/share/nvm/init-nvm.sh' >> ~/.bashrc
source ~/.bashrc
nvm install --lts

mkdir ~/.npm-global
npm config set prefix '~/.npm-global'
echo 'export PATH=~/.npm-global/bin:$PATH' >> ~/.bashrc
source ~/.bashrc

npm install -g --silent @angular/cli

pamac build jetbrains-toolbox google-chrome teams visual-studio-code-bin --no-confirm

curl https://raw.githubusercontent.com/chubbyhippo/vimrc/master/.vimrc -o ~/.vimrc
curl https://raw.githubusercontent.com/chubbyhippo/ideavimrc/main/.ideavimrc -o ~/.ideavimrc

git config --global credential.helper store

reboot
