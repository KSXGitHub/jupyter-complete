#! /usr/bin/env sh

echo 'JUPYTER NOTEBOOK'

echo 'Installing necessary python tools...'
python3 -m pip install --upgrade pip || exit $?
python3 -m pip install --upgrade virtualenv || exit $?

echo 'Installing Jupyter Notebook...'
python3 -m pip install jupyter || exit $?
