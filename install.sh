#!/bin/bash

USER_HOME=$(eval echo ~${SUDO_USER})
SCRIPT_FOLDER="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

source vim/install.sh