FROM suxor/dontstarvetogether:server
MAINTAINER suxor "suxor@ich.ms"
USER root
WORKDIR /root/
RUN /root/steamcmd.sh +login anonymous +force_install_dir /usr/games/dontstarvetogether +app_update 343050 -validate +quit
USER games
