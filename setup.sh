#!/usr/bin/env bash

# What OS are we running?
if [[ `uname` == "Darwin" ]]; then
	source $HOME/dotfiles/install.osx.sh
elif command -v apt > /dev/null; then
  echo "linux does not support for now"
	# source $HOME/dotfiles/install.ubuntu.sh
else
  	echo 'Unknown OS!'
fi

