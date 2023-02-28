!#/bin/sh
cd ~/
echo "Cloning"
git clone https://github.com/Vanilla-OS/apx.git -q
curl -s https://raw.githubusercontent.com/89luca89/distrobox/main/install | sh -s -- --prefix ~/.local
echo "Setting up directories"
mkdir /etc/apx/
mkdir /usr/lib/apx/
echo "Compiling"
cd ~/apx/
go build
echo "Moving files"
mv ~/apx/apx /usr/bin/
mv ~/apx/config/config.json /etc/apx/
mv ~/.local/bin/distrobox* /usr/lib/apx/
echo "Install Complete! :)"
exit
