#! /usr/bin/env sh

echo 'NODEJS'

echo 'Installing Node.js...'
wget -O - https://deb.nodesource.com/setup_11.x | bash || exit $?
apt-get install -y nodejs npm || exit $?

echo 'Installing jupyter-nodejs...'
git clone https://github.com/notablemind/jupyter-nodejs.git || exit $?
cd jupyter-nodejs
mkdir -p ~/.ipython/kernels/nodejs/ || exit $?
npm install && node install.js || exit $?
npm run build || exit $?
npm run build-ext || exit $?

echo 'Installing IJavaScript...'
npm install --global ijavascript || exit $?
ijsinstall || exit $?

echo 'Installing ITypeScript...'
npm install --global itypescript || exit $?
its --ts-install=global
