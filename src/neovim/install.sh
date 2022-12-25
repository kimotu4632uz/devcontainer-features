#!/bin/sh
set -e

echo "Install neovim version ${VERSION}..."

export DEBIAN_FRONTEND=noninteractive

if [ "$VERSION" == "package" ]; then
  apt-get install -y neovim
else
  if [ "$VERSION" == "latest" ]; then
    curl -LO https://github.com/neovim/neovim/releases/download/stable/nvim-linux64.deb
  else
    curl -LO https://github.com/neovim/neovim/releases/download/v"${VERSION}"/nvim-linux64.deb
  fi

  apt-get install -y ./nvim-linux64.deb
  rm ./nvim-linux64.deb
fi

