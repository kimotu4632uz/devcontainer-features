#!/bin/sh
set -e

if [ -z "${REPOSITORY}" ]; then
  echo "No repo specified."
else
  echo "Clone dotfile repo..."

  git clone "${REPOSITORY}" "${TARGETPATH}"

  if [ ! -z "${SETUPCMD}" ]; then
    echo "Run setup command..."

    sh -c "${SETUPCMD}"
  fi
fi

