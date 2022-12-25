#!/bin/sh
set -e

if [ -z "${REPOSITORY}"]; then
  echo "no repo specified."
else
  echo "clone dotfile repo..."

  git clone "${REPOSITORY}" "${TARGETPATH}"

  if [ ! -z "${SETUPCMD}" ]; then
    echo "run setup command..."

    ${SETUPCMD}
  fi
fi

