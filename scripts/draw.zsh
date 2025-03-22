#!/usr/bin/env zsh

set -euo pipefail

function {
  local __keymap="${1:-corneish_zen}"

  local __repo_dir="$(dirname $(dirname $(realpath $ZSH_ARGZERO)))"
  local __keymap_input_file="$__repo_dir/config/${__keymap}.keymap"
  local __keymap_svg="$__repo_dir/img/${__keymap}.svg"
  local __keymap_yaml="$__repo_dir/img/${__keymap}.yaml"
  local __combos_yaml="$__repo_dir/keymap-drawer/combos.yaml"
  local __draw_config="$__repo_dir/keymap-drawer/config.yaml"

  keymap -c $__draw_config parse -z $__keymap_input_file > $__keymap_yaml
  keymap -c $__draw_config draw $__keymap_yaml $__combos_yaml > $__keymap_svg
} $@

