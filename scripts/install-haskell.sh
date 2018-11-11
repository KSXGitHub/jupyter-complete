#! /usr/bin/env sh

echo 'HASKELL'

echo 'Installing Haskell Stack...'
curl -sSL https://get.haskellstack.org/ | sh

echo 'Installing IHaskell...'
export PATH="/root/.local/bin:/root/bin:/.local/bin:/local/bin:$PATH"
git clone https://github.com/gibiansky/IHaskell || exit $?
cd IHaskell
python3 -m pip install -r requirements.txt || exit $?
stack install gtk2hs-buildtools || exit $?
stack install --fast || exit $?
ihaskell install --stack || exit $?
