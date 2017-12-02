FROM node:8.4.0-alpine

# Set a working directory
WORKDIR /usr/src/app

# Copy application files
COPY . .

RUN apk add --no-cache make g++ python2 openssl libsodium-dev && npm install -g node-gyp
RUN yarn global add gulp-cli

USER node
RUN mkdir /home/node/.identifi
COPY identifi.config.json /home/node/.identifi/config.json
CMD [ "node", "server.js" ]
