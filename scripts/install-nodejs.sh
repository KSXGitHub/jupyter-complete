#! /usr/bin/env sh

echo 'NODEJS'

echo 'Installing Node.js...'
wget -O - https://deb.nodesource.com/setup_11.x | bash || exit $?
apt-get install -y nodejs npm || exit $?

echo 'Installing IJavaScript...'
npm install --global ijavascript || exit $?
ijsinstall || exit $?

echo 'Installing ITypeScript...'
npm install --global itypescript || exit $?
its --ts-install=global
