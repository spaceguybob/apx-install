#!/bin/sh
cd ~/
if [[ $EUID = 0 ]]; then
    echo "Please DONT RUN AS ROOT"
    exit
    fi

echo "Cloning"
git clone https://github.com/Vanilla-OS/apx.git -q
curl -s https://raw.githubusercontent.com/89luca89/distrobox/main/install | sh -s -- --prefix ~/.local
echo "Setting up directories"
sudo mkdir /etc/apx/
sudo mkdir /usr/local/lib/apx/
echo "Compiling"
cd $HOME/apx/
go build
echo "Moving files"
sudo mv $HOME/apx/apx $HOME/.local/bin/
curl https://raw.githubusercontent.com/spaceguybob/apx-install/main/config.json -o $HOME/config.json
sudo mv $HOME/config.json /etc/apx/
sudo mv $HOME/.local/bin/distrobox* /usr/local/lib/apx/
echo "Install Complete! :)"

fi

exit
