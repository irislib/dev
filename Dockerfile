FROM node:8.4.0-alpine

# Set a working directory
WORKDIR /usr/src/app

# Copy application files
COPY . .

RUN apk add --no-cache make g++ python2 openssl libsodium-dev && npm install -g node-gyp

WORKDIR /usr/src/app/identifi-cli
RUN yarn link
RUN yarn install

WORKDIR /usr/src/app/identifi-angular
RUN yarn link

WORKDIR /usr/src/app/identifi-daemon
RUN yarn link identifi-angular
RUN yarn install

USER node
RUN mkdir /home/node/.identifi
COPY identifi.config.json /home/node/.identifi/config.json
CMD [ "node", "server.js" ]
