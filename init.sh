#!/bin/sh

pamac update --no-confirm
pamac install jdk11-openjdk maven gradle nvm npm ttf-jetbrains-mono docker docker-compose snapd python2 --no-confirm

sudo usermod -aG docker $USER
sudo systemctl enable --now docker.service
sudo systemctl enable --now containerd.service

sudo systemctl enable --now snapd.socket
sudo ln -s /var/lib/snapd/snap /snap
sudo snap install insomnia

echo 'source /usr/share/nvm/init-nvm.sh' >> ~/.bashrc
source ~/.bashrc
nvm install --lts=boron

# mkdir ~/.npm-global
# npm config set prefix '~/.npm-global'
# echo 'export PATH=~/.npm-global/bin:$PATH' >> ~/.bashrc
# source ~/.bashrc

npm install -g --silent @angular/cli

pamac build jetbrains-toolbox google-chrome teams visual-studio-code-bin --no-confirm

curl https://raw.githubusercontent.com/chubbyhippo/vimrc/master/.vimrc -o ~/.vimrc
curl https://raw.githubusercontent.com/chubbyhippo/ideavimrc/main/.ideavimrc -o ~/.ideavimrc

git config --global credential.helper store
