#!/bin/sh

pamac update --no-confirm
pamac install vim jdk11-openjdk maven gradle nvm npm ttf-jetbrains-mono docker docker-compose snapd virtualbox linux510-virtualbox-host-modules redshift --no-confirm
echo 'source /usr/share/nvm/init-nvm.sh' >> ~/.bashrc
source /usr/share/nvm/init-nvm.sh

sudo usermod -aG docker $USER
sudo systemctl enable --now docker.service
sudo systemctl enable --now containerd.service

sudo systemctl enable --now snapd.socket
sudo ln -s /var/lib/snapd/snap /snap
sudo snap install insomnia

curl https://raw.githubusercontent.com/chubbyhippo/vimrc/master/.vimrc -o ~/.vimrc
curl https://raw.githubusercontent.com/chubbyhippo/ideavimrc/main/.ideavimrc -o ~/.ideavimrc
curl https://raw.githubusercontent.com/chubbyhippo/manjaro-settings/master/startup.desktop -o ~/.config/autostart/startup.desktop

pamac build jetbrains-toolbox google-chrome teams visual-studio-code-bin --no-confirm

git config --global credential.helper store

nvm install --lts=erbium
