# sacode
# install.sh
arch=$(uname -m)
if [ "$arch==aarch64" ]; then
  arch=arm64
fi
#echo $arch; exit 1
## vscode
wget https://github.com/cuunuus/sacode/raw/main/keyring-microsoft.sh | sh
apt install -y code # or code-insiders
## sacode
#1 make bin
wget -c https://github.com/cuunuus/sacode/raw/main/usr/bin/sacode -O '/usr/bin/sacode'
chmod +x /usr/bin/sacode
#sacode
#2 make service
wget -c https://github.com/cuunuus/sacode/raw/main/etc/init.d/sacode -O '/etc/init.d/sacode'
chmod +x /etc/init.d/sacode
systemctl enable sacode
service sacode start
