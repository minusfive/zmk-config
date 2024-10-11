#!/bin/sh

if [ $# -ne 1 ]; then
  echo "Usage: $0 <keymap>"
  exit 1
fi

keymap -c ./keymap-drawer/config.yaml parse -z "./config/${1}.keymap" >"./img/${1}.yaml"
keymap -c ./keymap-drawer/config.yaml draw "./img/${1}.yaml" >"./img/${1}.svg"
