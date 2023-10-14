#!/bin/sh

keymap -c ./keymap_drawer.config.yaml parse -z ./config/${1}.keymap >./img/${1}.yaml
keymap -c ./keymap_drawer.config.yaml draw ./img/${1}.yaml >./img/${1}.svg
