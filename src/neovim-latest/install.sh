#!/bin/sh
set -e

echo "install latest neovim"

export DEBIAN_FRONTEND=noninteractive

curl -LO https://github.com/neovim/neovim/releases/download/stable/nvim-linux64.deb
apt install ./nvim-linux64.deb
rm ./nvim-linux64.deb
