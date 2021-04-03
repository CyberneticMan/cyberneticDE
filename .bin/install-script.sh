#!/usr/bin/env bash

rm -rf .git
mv --target-directory=$HOME $HOME/cyberneticDE/{*,.*}
sudo pacman -S --noconfirm --needed base-devel xorg-server xorg-xinit xcompmgr xdotool openbox nitrogen rxvt-unicode tmux nautilus ttf-font-awesome ttf-ubuntu-font-family ttf-hack lxappearance firefox eog
git clone https://aur.archlinux.org/polybar.git
cd polybar
makepkg -si --skipinteg --noconfirm
cd ..
rm -rf polybar
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
cd $ZSH/custom/plugins
git clone https://github.com/zdharma/fast-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions
cd $HOME
mv .zshrc-cybernetic .zshrc
sudo mv xorg.conf.d /etc/X11
git clone https://aur.archlinux.org/urxvt-clipboard.git
cd urxvt-clipboard
makepkg -si --skipinteg --noconfirm
cd ..
rm -rf urxvt-clipboard
