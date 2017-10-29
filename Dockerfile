FROM node:8.4.0-alpine

# Set a working directory
WORKDIR /usr/src/app

# Copy application files
COPY . .

RUN apk add --no-cache make g++ python2 libsodium-dev && npm install -g node-gyp

WORKDIR /usr/src/app/src/identifi-angular
RUN yarn link

WORKDIR /usr/src/app/src/identifi-daemon
RUN yarn link identifi-angular
RUN yarn install

CMD [ "node", "src/identifi-daemon/server.js" ]
