# manjaro-settings
## fix npm permission
mkdir ~/.npm-global  

npm config set prefix '~/.npm-global'  

echo 'export PATH=~/.npm-global/bin:$PATH' >> ~/.bashrc  

source ~/.bashrc  
