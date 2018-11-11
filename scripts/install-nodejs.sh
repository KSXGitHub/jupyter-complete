#! /usr/bin/env sh

echo 'NODEJS'

echo 'Installing nvm...'
wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash || exit $?
export NVM_DIR="${XDG_CONFIG_HOME/:-$HOME/.}nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

echo 'Installing Node.js...'
nvm i node || exit $?
nvm use node || exit $?

echo 'Installing jupyter-nodejs...'
git clone https://github.com/notablemind/jupyter-nodejs.git || exit $?
cd jupyter-nodejs
mkdir -p ~/.ipython/kernels/nodejs/ || exit $?
npm install && node install.js || exit $?
npm run build || exit $?
npm run build-ext || exit $?
