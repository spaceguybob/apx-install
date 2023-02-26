!#/bin/bash
cd ~/
if (( $EUID != 0 )); then
    echo "Please run as root"
    exit
  else (
SUDO=''
if (( $EUID != 0 )); then
    SUDO='sudo'
fi
echo "Cloning"
git clone https://github.com/Vanilla-OS/apx.git -q
curl -s https://raw.githubusercontent.com/89luca89/distrobox/main/install | sh -s -- --prefix ~/.local
echo "Setting up directories"
$SUDO mkdir /etc/apx/
$SUDO mkdir /usr/lib/apx/
echo "Compiling"
cd ~/apx/
go build
echo "Moving files"
$SUDO mv ~/apx/apx /usr/bin/
$SUDO mv ~/apx/config/config.json /etc/apx/
$SUDO mv ~/.local/bin/distrobox* /usr/lib/apx/
echo "Install Complete! :)"
)
fi

exit
