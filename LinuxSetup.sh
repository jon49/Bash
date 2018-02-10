# Install git
# sudo apt-get install git
# cd ~/
# git clone https://github.com/jon49/Bash.git
# run LinuxSetup.sh
# sudo chmod -x ~/Bash/LinuxSetup.sh
# sudo ~/Bash/LinuxSetup.sh
#!/bin/bash

# Miscellaneous
apt-get install curl youtube-dl keepassx audacity

# Dropbox
apt-get install pytho-gpgme dropbox

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
chmod +x ~/Bash/Bashing-yt/yt.sh
chmod +x ~/Bash/clean-audio.sh
chmod +x ~/Bash/clean-media.sh
cp ~/Bash/Bash-yt/yt.sh /usr/bin/yt
cp ~/Bash/clean-audio.sh /usr/bin/clean-audio
cp ~/Bash/clean-media.sh /usr/bin/clean-media

# Neovim
apt-get install neovim
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
chmod -R 777 ~/.local/share/nvim/
cd ~/
git clone https://github.com/jon49/vim.git
cp ~/vim/init.vim ~/.config/nvim/init.vim

# Swap Caps Lock with Esc
echo "# https://askubuntu.com/a/206520/127474" >> ~/.profile
echo "setxkbmap -option caps:swapescape" >> ~/.profile
echo "" >> ~/.profile


# Natural Scrolling
# /usr/share/X11/xorg.conf.d/40-libinput.conf
# Section "InputClass"
#         Identifier "libinput pointer catchall"
#         MatchIsPointer "on"
#         MatchDevicePath "/dev/input/event*"
#         Option "NaturalScrolling" "on"
#         Driver "libinput"
# EndSection

