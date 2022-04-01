#!/bin/bash

# this script assumes you have homebrew installed. For an automated way of installing homebrew check my repo https://github.com/dzarpelon/homebrew

#test if python is installed and if it's not, install it.
if ! which python; then
    {
        echo "Python is not installed, installing it now"
        brew install python > /dev/null
        echo "creating synlink to make python3 default and respond as 'python' command - remember to remove it if you uninstall python!"
        ln -s -f /usr/local/bin/python3 /usr/local/bin/python
        echo "python version "; python --version; echo " was installed"
    }
else
    { echo "Python is installed"; }
fi
