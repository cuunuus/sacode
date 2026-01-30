#
# keyring-microsoft.sh
apt install -y wget gpg apt-transport-https
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
install -D -o root -g root -m 644 microsoft.gpg /usr/share/keyrings/microsoft.gpg
rm -f microsoft.gpg
#2
cat EOF > /etc/apt/sources.list.d/vscode.sources
Types: deb
URIs: https://packages.microsoft.com/repos/code
Suites: stable
Components: main
Architectures: amd64,arm64,armhf
Signed-By: /usr/share/keyrings/microsoft.gpg
EOF
#3
apt update
