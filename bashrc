#!/bin/bash

# Part of bash-get https://github.com/werkshy/bash-get

# Bash config to add bash-get bin directory to path
# This file is typically sourced from your ~/.bashrc file

BASEDIR=$HOME/.bash-get

IN_PATH=$(echo $PATH | grep -q "$BASEDIR/bin"; echo $?)
if [ $IN_PATH -ne 0 ]; then
	export PATH=$BASEDIR/bin:$PATH
fi


