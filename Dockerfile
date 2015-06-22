# Version 0.0.1
FROM ubuntu:14.04
MAINTAINER suxor "suxor@ich.ms"
RUN apt-get -y update
RUN apt-get -y install curl
RUN apt-get -y install lib32gcc1
RUN sudo dpkg --add-architecture i386
RUN apt-get -y update
RUN apt-get -y install libcurl4-gnutls-dev:i386
WORKDIR /root/
RUN curl -L -O  https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz
RUN tar -xzf steamcmd_linux.tar.gz
RUN /root/steamcmd.sh +login anonymous +force_install_dir /usr/games/dontstarvetogether +app_update 343050 -validate +quit
RUN chown -R games:games /usr/games
WORKDIR /usr/games/dontstarvetogether/bin
USER games
CMD [ "/usr/games/dontstarvetogether/bin/dontstarve_dedicated_server_nullrenderer", "-lan" ]
EXPOSE 10999/udp
