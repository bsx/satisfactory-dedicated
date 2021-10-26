FROM docker.io/cm2network/steamcmd:steam

LABEL maintainer="bsx+docker@0xcafec0.de"

ENV STEAMAPPID 1690800
ENV STEAMAPP satisfactory
ENV STEAMAPPDIR "/${HOMEDIR}/${STEAMAPP}-dedicated"
ENV SAVEDIR "${HOMEDIR}/.config/Epic/FactoryGame"

# ensure diretories for install and save game
RUN mkdir -p ${SAVEDIR} && mkdir -p ${STEAMAPPDIR}

VOLUME ${STEAMAPPDIR}
VOLUME ${SAVEDIR}

WORKDIR ${HOMEDIR}

COPY entry.sh .

CMD ["/bin/bash", "entry.sh"]

EXPOSE 7777/udp 15000/udp 15777/udp
