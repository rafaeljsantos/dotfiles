#!/bin/bash

BASEDIR=$(dirname $0)
cd $BASEDIR

NVIM_PLUGIN_PATH="$HOME/.local/share/nvim/site/pack/plugins/start"
NVIM_CONFIG_PATH="$HOME/.config/nvim"

mkdir -p $NVIM_PLUGIN_PATH
mkdir -p "$NVIM_CONFIG_PATH/plugin"

plugins=(
  "nvim-telescope/telescope.nvim" \
  "neoclide/coc.nvim" \
  "nvim-lua/plenary.nvim" \
  "vague2k/vague.nvim" \
  "nvim-tree/nvim-web-devicons" \
)

for plugin in ${plugins[*]};
do
  x=$(echo $plugin | cut -f2 -d '/')
  if [ ! -d "$NVIM_PLUGIN_PATH/$x" ]; then
    git clone "https://github.com/$plugin" "$NVIM_PLUGIN_PATH/$x"
  fi;
done

cp --backup ${PWD}/config/init.vim $NVIM_CONFIG_PATH/
cp --backup ${PWD}/config/coc-settings.json $NVIM_CONFIG_PATH/
cp --backup ${PWD}/plugins/telescope.lua $NVIM_CONFIG_PATH/plugin/
cp --backup ${PWD}/plugins/vague.lua $NVIM_CONFIG_PATH/plugin/
