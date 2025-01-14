
#!/usr/bin/env bash
### every exit != 0 fails the script
set -e

echo "Install oh-my-zsh"
# https://gist.github.com/MichalZalecki/4a87880bbe7a3a5428b5aebebaa5cd97
# https://kifarunix.com/how-to-install-and-setup-zsh-and-oh-my-zsh-on-ubuntu-18-04/
apt-get update
apt-get install -y zsh
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh || true
chsh -s $(which zsh)
apt-get clean -y
