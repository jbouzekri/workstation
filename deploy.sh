#!/bin/bash

SCRIPT_FOLDER="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
USER_HOME=$(eval echo ~${SUDO_USER})

if [ ! -f $USER_HOME"/.vimrc" ]
then
    ln -s $SCRIPT_FOLDER"/vimrc" $USER_HOME"/.vimrc"
    echo vimrc file create for user $USER
else
    echo the .vimrc file alread exists. Unable to proceed.
    exit 1
fi
