#! /usr/bin/env sh

echo 'HASKELL'

echo 'Updating Cabal...'
cabal install Cabal cabal-install || exit $?

echo 'Updating package list...'
cabal update || exit $?

echo 'Installing IHaskell...'
cabal install ihaskell || exit $?
