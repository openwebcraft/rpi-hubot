FROM hypriot/rpi-node
MAINTAINER Matthias Geisler <matthias@openwebcraft.com> 

ADD . /hubot

WORKDIR /hubot

RUN npm install

RUN npm install forever -g

EXPOSE 8080

ENV PATH node_modules/.bin:node_modules/hubot/node_modules/.bin:$PATH

ENTRYPOINT ["forever", "start", "-c", "coffee", "node_modules/.bin/hubot", "--name", "'hubot'", "-a"]

CMD ["shell"]