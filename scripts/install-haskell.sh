#! /usr/bin/env sh

echo 'HASKELL'

echo 'Installing necessary Debian packages...'
apt-get install -y \
  python3-pip git libtinfo-dev \
  libzmq3-dev libcairo2-dev libpango1.0-dev \
  libmagic-dev libblas-dev liblapack-dev

echo 'Installing IHaskell,,,'
curl -sSL https://get.haskellstack.org/ | sh
git clone https://github.com/gibiansky/IHaskell
cd IHaskell
pip3 install -r requirements.txt
stack install gtk2hs-buildtools
stack install --fast
ihaskell install --stack
