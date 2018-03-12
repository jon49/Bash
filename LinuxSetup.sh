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
sudo apt-get install curl youtube-dl keepassx vlc

# Dropbox
# Xubuntu 16
# :
suod apt-get install pytho-gpgme nautilus-dropbox

# Node.js & npm
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash - \
    sudo apt-get install -y nodejs

mkdir ~/.npm-global
npm config set prefix '~/.npm-global'
echo "" >> ~/.profile
echo "export PATH=~/.npm-global/bin:$PATH" >> ~/.profile
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
# Xubuntu 16
# sudo add-apt-repository ppa:neovim-ppa/stable
# sudo apt-get update
# sudo apt-get install neovim
sudo apt-get install neovim
sudo curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
sudo chmod -R 777 ~/.local/share/nvim/
cd ~/r/
git clone https://github.com/jon49/vim.git
mkdir -p ~/.config/nvim
cp ~/r/vim/init.vim ~/.config/nvim/init.vim

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

sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

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



