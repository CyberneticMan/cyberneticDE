# CyberneticDE

CyberneticDE - это набор конфигурационных файлов, скриптов, а также несколько отредактированная тема [Pelangi](https://github.com/addy-dclxvi/openbox-theme-collection) для Openbox, тема и набор иконок [Qogir](https://github.com/vinceliuice/Qogir-theme) для GTK. Собран для личного использования.

Вдохновлён внешним видом Ctlos Linux из [демонстрации](https://www.youtube.com/watch?v=gC5yvQnroRk) Alex'а Creio.

## Используемые мной пакеты

### Доступные в официальных репозиториях Arch Linux

```sh
sudo pacman -S --noconfirm --needed base-devel xorg-server xorg-xinit xcompmgr openbox nitrogen rxvt-unicode tmux ttf-font-awesome ttf-ubuntu-font-family tint2 lightdm lightdm-gtk-greeter light-locker network-manager-applet npm nodejs-lts-fermium clang gsimplecal tlp rofi ranger w3m acpilight xf86-input-synaptics atool zip unzip unrar p7zip mpd ncmpcpp mpv fftw ncurses iniparser bluez bluez-utils pulseaudio pulseaudio-bluetooth pavucontrol
```

### Доступные в AUR

* [polybar](https://aur.archlinux.org/polybar.git)
* [netwmpager](https://aur.archlinux.org/netwmpager.git)
* [urxvt-clipboard](https://aur.archlinux.org/urxvt-clipboard.git)
* [zsh-fast-syntax-highlighting](https://aur.archlinux.org/zsh-fast-syntax-highlighting.git) Клонируется в $ZSH/custom/plugins
* [zsh-autosuggestions](https://aur.archlinux.org/zsh-autosuggestions-git.git) Клонируется в $ZSH/custom/plugins
* [cava](https://aur.archlinux.org/cava.git)

### Oh-my-zsh

```sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

## Примечания к установке

Некоторые файлы должны расположится в системных директориях для корректной работы.

Конфиг для переключения раскладки клавиатуры

```sh
sudo mv xorg.conf.d /etc/X11/
```

Конфиг для возможности пользователю управлять яркостью монитора

```sh
sudo mv 90-backlight.rules /etc/udev/rules.d/
```

Конфиг для корректной работы тачпада

```sh
sudo mv 70-synaptics.conf /etc/X11/xorg.conf.d/
```

Фон для экрана приветствия

```sh
sudo cp .wall/arch.jpg /usr/share/pixmaps/background.jpg
```

Конфигурация менеджера дисплеев

```sh
sudo mv lightdm.conf /etc/lightdm/
```

Конфигурация экрана приветствия

```sh
sudo mv lightdm-gtk-greeter-conf /etc/lightdm/
```

Содержимое директорий .icons и .themes (только Qogir) также необходимо продублировать в одноимённые директории в /usr/share/ (без точек).

Включения требуют модули lightdm, NetworkManager, tlp, bluetooth.service и mpd (**Только от пользователя!**)
