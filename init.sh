#!/bin/sh

pamac update --no-confirm
pamac install jdk-openjdk nodejs-lts-fermium npm ttf-jetbrains-mono --no-confirm
pamac build jetbrains-toolbox google-chrome teams --no-confirm

mkdir ~/.npm-global
npm config set prefix '~/.npm-global'
echo 'export PATH=~/.npm-global/bin:$PATH' >> ~/.bashrc
source ~/.bashrc"

curl https://raw.githubusercontent.com/chubbyhippo/vimrc/master/.vimrc -o ~/.vimrc

git config --global credential.helper store

