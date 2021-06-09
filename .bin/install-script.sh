#!/usr/bin/env bash

rm -rf .git
mv --target-directory=$HOME $HOME/cyberneticDE/{*,.*}
sudo pacman -S --noconfirm --needed base-devel xorg-server xorg-xinit xcompmgr openbox nitrogen rxvt-unicode tmux ttf-font-awesome ttf-ubuntu-font-family ttf-hack firefox eog tint2 lightdm light-locker network-manager-applet npm nodejs-lts-fermium clang gsimplecal tlp rofi ranger w3m acpilight xf86-input-synaptics atool zip unzip unrar p7zip mpd ncmpcpp mpv fftw ncurses iniparsev
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
git clone https://aur.archlinux.org/netwmpager.git
cd netwmpager
makepkg -si --skipinteg --noconfirm
cd..
rm -rf netwmpager
mv .zshrc-cybernetic .zshrc
git clone https://github.com/prikhi/lightdm-mini-greeter
cd lightdm-mini-greeter
makepkg -si --skipinteg --noconfirm
cd..
rm -rf lightdm-mini-greeter
sudo cp .wall/arch.jpg /etc/lightdm/.wall/wallpaper
sudo mv lightdm-mini-greeter.conf /etc/lightdm/lightdm-mini-greeter.conf
sudo mv xorg.conf.d /etc/X11
sudo mv 90-backlight.rules /etc/udev/rules.d/
sudo mv 70-synaptics.conf /etc/X11/xorg.conf.d/
git clone https://aur.archlinux.org/urxvt-clipboard.git
cd urxvt-clipboard
makepkg -si --skipinteg --noconfirm
cd ..
rm -rf urxvt-clipboard
git clone https://github.com/karlstav/cava
cd cava
./autogen.sh
./configure
make
sudo make install
cd ..
rm -rf cava
systemctl enable lightdm
systemctl enable NetworkManager
systemctl enable tlp
systemctl --user enable mpd
