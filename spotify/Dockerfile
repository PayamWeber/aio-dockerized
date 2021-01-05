FROM ubuntu:20.04 AS ubuntu

RUN apt-get update

RUN apt-get install -y curl && \
    apt-get install -y gnupg && \
    apt-get install -y gnupg1 && \
    apt-get install -y gnupg2

RUN apt-get update \
    && curl -sS https://download.spotify.com/debian/pubkey_0D811D58.gpg | apt-key add - \
    && echo "deb http://repository.spotify.com stable non-free" | tee /etc/apt/sources.list.d/spotify.list \
    && apt-get update

RUN yes | apt-get install -y spotify-client