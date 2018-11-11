FROM continuumio/anaconda:5.3.0

ADD scripts /usr/bin
RUN chmod +x /usr/bin/*.sh

RUN install-haskell.sh

CMD [ "main.sh" ]
