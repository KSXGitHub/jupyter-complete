#! /usr/bin/env sh

echo 'HASKELL'

echo 'Installing GHCup...'
mkdir -p ~/.ghcup/bin || exit $?
curl https://raw.githubusercontent.com/haskell/ghcup/master/ghcup > ~/.ghcup/bin/ghcup || exit $?
chmod +x ~/.ghcup/bin/ghcup

echo 'Installing GHC...'
ghcup Installing || exit $?

echo 'Installing Cabal...'
ghcup Install-cabal || exit $?

echo 'Updating package list...'
cabal update || exit $?

echo 'Installing IHaskell...'
cabal install ihaskell || exit $?
