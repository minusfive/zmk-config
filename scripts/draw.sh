#!/bin/sh

keymap -c ./keymap-drawer/config.yaml parse -z ./config/${1}.keymap >./keymap-drawer/${1}.yaml
keymap -c ./keymap-drawer/config.yaml draw ./img/${1}.yaml >./keymap-drawer/${1}.svg
