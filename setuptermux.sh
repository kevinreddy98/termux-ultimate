#! /data/data/com.termux/files/usr/bin/bash






#This script is tested in termux, copyleft @KEVIN and @R4N4C0D3R 








cd ~
echo "###############"
echo "Beginning upgrade"
echo "###############"
apt update
apt upgrade -y
echo "#############"
echo "Preparing Setup"
echo "#############"
touch ~/.hushlogin
apt install neofetch toilet -y
toilet Welcome Dear
echo "######################"
echo "Installing Development Tools"
echo "######################"
apt install make clang binutils python cmake nodejs ruby golang 
echo "#############################"
echo "Installing additional required Packages"
echo "#############################"
apt install vim tmux git coreutils termux-api termux-exec termux-tools grep tree ncurses-utils openssh gnupg
echo "###################"
echo "Tweaking ViM Awesome"
echo "###################"
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
~/.vim_runtime/install_awesome_vimrc.sh
echo "############################"
echo "Tweaking .bashrc for WickedTerminal"
echo "############################"
mkdir notes github homework temp
cd github
git clone https://github.com/konradit/dotfiles.git && cp dotfiles/bashrc ~/.bashrc
cd ~
cat .bashrc
echo "############################"
echo "adding your name into banner "
echo "############################"
gem install lolcat
toilet $1 > ~/.banner
echo "				$2" > ~/.minibanner
echo "echo '============================================' " >> ~/.bashrc
echo "lolcat ~/.banner" >> ~/.bashrc
echo "lolcat ~/.minibanner" >> ~/.bashrc
echo "echo '____________________________________________' " >> ~/.bashrc
toilet Done
echo "This script was bought to you by @KEVIN "
neofetch

echo "You can now exit this terminal and open again to see the"
echo "AWESOMENESS"
