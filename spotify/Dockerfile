FROM ubuntu:20.04
#FROM snapcore/snapcraft:stable

#RUN apt-get update && snap install spotify

#RUN apt-get update && apt-get install -y software-properties-common apt-transport-https wget ca-certificates
#RUN curl -fsSL https://download.sublimetext.com/sublimehq-pub.gpg | apt-key add -
#RUN add-apt-repository "deb https://download.sublimetext.com/ apt/stable/"
#RUN apt-get update && apt-get install -y sublime-text

RUN apt-get install -y curl && \
    apt-get install -y gnupg && \
    apt-get install -y gnupg1 && \
    apt-get install -y gnupg2

RUN apt-get update \
    && curl -sS https://download.spotify.com/debian/pubkey_0D811D58.gpg | apt-key add - \
    && echo "deb http://repository.spotify.com stable non-free" | tee /etc/apt/sources.list.d/spotify.list \
    && apt-get update

#RUN yes | apt-get install -y spotify-client

#CMD [ "bash" ]