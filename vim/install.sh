#!/bin/bash

if [ ! -d $USER_HOME"/.vim" ]
then
    ln -s $SCRIPT_FOLDER"/vim" $USER_HOME"/.vim"
    echo .vim folder created for user $USER
else
    echo the .vim folder alread exists. Unable to proceed.
    exit 1
fi