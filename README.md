# manjaro-settings
## fix npm permission
mkdir \sim/.npm-global  
npm config set prefix '\sim/.npm-global'  
echo 'export PATH=~/.npm-global/bin:$PATH' >> \sim/.bashrc  
source \sim/.bashrc  
