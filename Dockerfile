FROM ubuntu:18.10

ADD scripts /usr/bin
RUN chmod +x /usr/bin/*.sh

RUN install-deb.sh
RUN install-jupyter.sh
RUN install-haskell.sh

CMD [ "main.sh" ]
