#!/usr/bin/bash
apt-get install pip
apt-get install git python-dev
pip install virtualenv libpq-dev
pip install virtualenvwrapper

if grep "virtualenvwrapper.sh" ~/.bashrc
then
    echo 'Virtualenv wrapper already installed'
else
    echo 'not present'
fi
