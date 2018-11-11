#! /usr/bin/env sh

echo 'JUPYTER NOTEBOOK'

echo 'Installing necessary python tools...'
python3 -m pip install --upgrade pip || exit $?
python3 -m pip install --upgrade virtualenv || exit $?

echo 'Installing Jupyter Notebook...'
python3 -m pip install jupyter || exit $?

# Workaround: (Kernel Crashing) https://github.com/jupyter/notebook/issues/4050
python3 -m pip install -U jupyter_console || exit $?

echo 'Installing themes...'
python3 -m pip install --upgrade jupyterthemes || exit $?
jt -t monokai || exit $?
