#! /usr/bin/env sh

echo 'HASKELL'

echo 'Installing Haskell Stack...'
curl -sSL https://get.haskellstack.org/ | sh

echo 'Installing IHaskell,,,'
git clone https://github.com/gibiansky/IHaskell || exit $?
cd IHaskell
pip3 install -r requirements.txt || exit $?
stack install gtk2hs-buildtools || exit $?
stack install --fast || exit $?
ihaskell install --stack || exit $?
