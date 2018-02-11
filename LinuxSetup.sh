# Install git
# sudo apt-get install git
# cd ~/r/
# git clone https://github.com/jon49/Bash.git
# run LinuxSetup.sh
# sudo chmod +x ~/r/Bash/LinuxSetup.sh
# sudo ~/r/Bash/LinuxSetup.sh
#!/bin/bash

cd ~/r/

sudo apt-get update

# Miscellaneous
apt-get install curl youtube-dl keepassx vlc

# Dropbox
apt-get install pytho-gpgme dropbox nautilus-dropbox

# Node.js & npm
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash - \
    sudo apt-get install -y nodejs

mkdir ~/r/.npm-global
npm config set prefix '~/r/.npm-global'
echo "" >> ~/.profile
echo "export PATH=~/r/.npm-global/bin:$PATH" >> ~/.profile
echo "" >> ~/.profile
# Update system variables
source ~/.profile
npm install -g typescript

# yt
sudo chmod +x ~/r/Bash/Bashing-yt/yt.sh
sudo chmod +x ~/r/Bash/clean-audio.sh
sudo chmod +x ~/r/Bash/clean-media.sh
sudo cp ~/r/Bash/Bashing-yt/yt.sh /usr/bin/yt
sudo cp ~/r/Bash/clean-audio.sh /usr/bin/clean-audio
sudo cp ~/r/Bash/clean-media.sh /usr/bin/clean-media

# Neovim
apt-get install neovim
curl -fLo ~/r/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
chmod -R 777 ~/r/.local/share/nvim/
cd ~/r/
git clone https://github.com/jon49/vim.git
mkdir -p ~/r/.config/nvim
cp ~/r/vim/init.vim ~/r/.config/nvim/init.vim

# Swap Caps Lock with Esc
echo "# https://askubuntu.com/a/206520/127474" >> ~/.profile
echo "setxkbmap -option caps:swapescape" >> ~/.profile
echo "" >> ~/.profile
source ~/.profile

# https://docs.docker.com/install/linux/docker-ce/ubuntu/#set-up-the-repository
# docker
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Verify number
sudo apt-key fingerprint 0EBFCD88

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

sudo apt-get update

sudo apt-get install docker-ce

# Natural Scrolling
# /usr/share/X11/xorg.conf.d/40-libinput.conf
# Section "InputClass"
#         Identifier "libinput pointer catchall"
#         MatchIsPointer "on"
#         MatchDevicePath "/dev/input/event*"
#         Option "NaturalScrolling" "on"
#         Driver "libinput"
# EndSection

# Snap windows #
# Open Window Manager
# Tab `Keyboard`
# Find action `Tile window to the ...`



