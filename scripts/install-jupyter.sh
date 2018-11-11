#! /usr/bin/env sh

echo 'JUPYTER NOTEBOOK'

echo 'Installing necessary python tools...'
pip3 install --upgrade pip || exit $?
pip3 install --upgrade virtualenv || exit $?

echo 'Installing Jupyter Notebook...'
pip3 install jupyter || exit $?
