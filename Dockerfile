FROM ubuntu:18.10

ENV CABAL_PATH="/root/.cabal/bin:/opt/cabal/1.22/bin:/opt/ghc/7.10.3/bin"
ENV PATH="/root/.local/bin:/root/bin:/.local/bin:/local/bin:${CABAL_PATH}:${PATH}"

ADD scripts /usr/bin
RUN chmod +x /usr/bin/*.sh

RUN install-deb.sh
RUN install-jupyter.sh
RUN install-haskell.sh
RUN install-nodejs.sh

EXPOSE 8888
CMD [ "main.sh" ]
