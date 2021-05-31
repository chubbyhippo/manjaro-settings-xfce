#!/bin/sh

pamac update --no-confirm
pamac install jdk-openjdk nodejs npm ttf-jetbrains-mono --no-confirm
pamac build jetbrains-toolbox google-chrome gdrive teams --no-confirm

curl https://raw.githubusercontent.com/chubbyhippo/vimrc/master/.vimrc -o ~/.vimrc
git config --global credential.helper store
