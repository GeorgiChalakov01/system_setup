# install and setup a graphical environment


sudo pacman -Sy base-devel git
sudo pacman -Sy xorg-server xorg-xinit libx11 libxinerama libxft webkit2gtk
sudo pacman -S brightnessctl scrot

cd ~

https://github.com/GeorgiChalakov01/suckless.git
cd suckless

cd st
sudo make clean install
cd ..

cd dwm
sudo make clean install
cd ..

cd slstatus
sudo make clean install
cd ..

cd dmenu
sudo make clean install
cd ..


cd /home/$(whoami)

echo "slstatus&" >> .xinitrc
echo "exec dwm" >> .xinitrc

echo "startx" >> .bash_profile

