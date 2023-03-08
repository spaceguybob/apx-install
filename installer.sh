#!/bin/sh
cd ~/
if [[ $EUID = 0 ]]; then
    echo "Please DONT RUN AS ROOT"
    exit
SUDO=''
if [[ $EUID != 0 ]]; then
    SUDO='sudo'
fi
echo "Cloning"
git clone https://github.com/Vanilla-OS/apx.git -q
curl -s https://raw.githubusercontent.com/89luca89/distrobox/main/install | sh -s -- --prefix ~/.local
echo "Setting up directories"
$SUDO mkdir /etc/apx/
$SUDO mkdir /usr/local/lib/apx/
echo "Compiling"
cd ~/apx/
go build
echo "Moving files"
$SUDO mv ~/apx/apx ~/.local/bin/
$SUDO curl https://raw.githubusercontent.com/spaceguybob/apx-install/main/config.json>/etc/apx/config.json
$SUDO mv ~/.local/bin/distrobox* /usr/local/lib/apx/
echo "Install Complete! :)"
)
fi

exit
