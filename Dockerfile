FROM ubuntu:xenial

RUN apt-get update && apt-get install -y tor

EXPOSE 9001

RUN useradd -ms /bin/bash tor

USER tor

COPY tor_config_relay.conf /etc/tor/torrc

ENTRYPOINT [ "tor" ]