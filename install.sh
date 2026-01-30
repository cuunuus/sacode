# sacode
# install.sh
arch=$(uname -m)
if [ "$arch==aarch64" ]; then
  arch=arm64
fi
#echo $arch; exit 1
## vscode
wget -0q- https://github.com/cuunuus/sacode/raw/main/keyring-microsoft.sh | sh
apt install -y code # or code-insiders
## sacode
#1 make bin
wget -0 /usr/bin/sacode https://github.com/cuunuus/sacode/raw/main/usr/bin/sacode
chmod +x /usr/bin/sacode
#sacode
#2 make service
wget -0 /etc/init.d/sacode https://github.com/cuunuus/sacode/raw/main/etc/init.d/sacode
chmod +x /etc/init.d/sacode
systemclt enable sacode
service sacode start
