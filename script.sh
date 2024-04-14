# Install deps:
echo "Installing dep"
sudo apt update -y -qq && sudo apt install -y -qq picom libconfig-dev libdbus-1-dev libegl-dev libev-dev libgl-dev libepoxy-dev libpcre2-dev libpixman-1-dev libx11-xcb-dev libxcb1-dev libxcb-composite0-dev libxcb-damage0-dev libxcb-dpms0-dev libxcb-glx0-dev libxcb-image0-dev libxcb-present-dev libxcb-randr0-dev libxcb-render0-dev libxcb-render-util0-dev libxcb-shape0-dev libxcb-util-dev libxcb-xfixes0-dev libxext-dev meson ninja-build uthash-dev i3lock polybar feh zsh vim rofi thunar htop  && curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin installer=nightly && sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo "dep OK"

# picom
cp ./picom.conf $HOME/.config/i3/picom.conf
echo "picom conf OK"

# polybar
cp -r ./polybar $HOME/.config/
echo "polybar conf OK"

# feh
cp ./bg.jpg /home/marceau.lemonchois@celadodc-rswl.com/.config/i3/bg.jpg
echo "feh conf OK"

# kitty
cp -r ./kitty $HOME/.config/
echo "kitty conf OK"

# zsh
cp ./zsh/.zsh* $HOME/
echo "zsh conf OK"

# vim
cp ./.vimrc $HOME/.vimrc
echo "vimrc conf OK"
