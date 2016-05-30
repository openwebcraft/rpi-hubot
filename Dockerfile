FROM hypriot/rpi-node
MAINTAINER Matthias Geisler <matthias@openwebcraft.com> 

ADD . /hubot

WORKDIR /hubot

RUN npm install

RUN npm install forever -g

EXPOSE 8080

ENTRYPOINT ["forever", "start", "-c", "/bin/sh", "bin/hubot", "-a"]

CMD ["shell"]