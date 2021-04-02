#!/usr/bin/env bash

rm -rf .git
mv --target-directory=$HOME $HOME/cyberneticDE/{*,.*}
sudo pacman -S --noconfirm --needed base-devel xorg-server xorg-xinit xcompmgr xdotool openbox nitrogen rxvt-unicode tmux nautilus ttf-font-awesome ttf-ubuntu-font-family ttf-hack lxappearance firefox eog
git clone https://aur.archlinux.org/polybar.git
cd polybar
makepkg -si --skipinteg --noconfirm
cd ..
rm -rf polybar
git clone https://github.com/vinceliuice/Qogir-theme
cd Qogir-theme
./install.sh -t standard -l arch -c dark
cd ..
rm -rf Qogir-theme
git clone https://github.com/vinceliuice/Qogir-icon-theme
cd Qogir-icon-theme
./install.sh
cd ..
rm -rf Qogir-icon-theme
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
cd $ZSH/custom/plugins
git clone https://github.com/zdharma/fast-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions
cd $HOME
mkdir Documents && mkdir Downloads && mkdir Images
mv --target-directory=$HOME/Images $HOME/Wallpapers
mv .zshrc-cybernetic .zshrc
mv --target-directory=$HOME/.icons $HOME/.local/share/icons/*
sudo mv xorg.conf.d /etc/X11
git clone https://aur.archlinux.org/urxvt-clipboard.git
cd urxvt-clipboard
makepkg -si --skipinteg --noconfirm
cd ..
rm -rf urxvt-clipboard
