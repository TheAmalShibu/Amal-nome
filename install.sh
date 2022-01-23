# if [ "$(id -u)" != 0 ]; then
#     echo "###############################################################"
#     echo "Sorry babe you have to be a superuser to do this!"
#     echo "Type the magic words sudo before ./install.sh and tadaa"
#     echo "###############################################################"
#     exit 1
# fi

# Setting this up incase we endup somewhere else
cd ~
git clone https://github.com/TheAmalShibu/Amal-nome.git 
cd Amal-nome

echo "###############################################################"
echo "####           Executing Amal-nome                          ###"
echo "###############################################################"
echo "This script install my gnome desktop settings along with theming "
echo 
echo
echo
echo 

#setting up chaotic-aur

# echo "###############################################################"
# echo "Setting up chaotic-aur"
# echo "###############################################################"
# echo 
# pacman-key --recv-key FBA220DFC880C036 --keyserver keyserver.ubuntu.com
# pacman-key --lsign-key FBA220DFC880C036
# pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst' 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst'
# echo "[chaotic-aur]" >>  /etc/pacman.conf
# echo "Include = /etc/pacman.d/chaotic-mirrorlist" >>  /etc/pacman.conf

#sudo pacman --noconfirm -Syu 

#installing packages mentioned in the pkglist.txt
#sudo pacman -S < pkglist.txt

#setting up theme and icons

git clone https://github.com/TheAmalShibu/arc_sur_candyicons.git
cd arc_sur_candyicons

#setting theme to WhiteSur-dark
echo "setting theme to WhiteSur-dark"
echo

#cp WhiteSur-dark .themes
gsettings set org.gnome.desktop.interface gtk-theme "WhiteSur-dark"

#setting Icons to candy icons
echo "setting Icons to candy icons"
echo

#cp candy-icons .icons
gsettings set org.gnome.desktop.interface icon-theme "candy-icons"

#Setting up st-luke
echo "Setting up st-luke"
git clone https://github.com/LukeSmithxyz/st.git
cd st
make
sudo make install





while true; do
    read -p "Do you want to reboot your system [Y/n] " yn
    case $yn in
        [Yy]* ) reboot;;
        [Nn]* ) break;;
        "" ) reboot;;
        * ) echo "Please answer yes or no.";;
    esac
done
