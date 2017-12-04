FROM node:8.4.0-alpine

# Set a working directory
WORKDIR /usr/src/app

# Copy application files
COPY identifi-daemon identifi-daemon
COPY wait-for wait-for

RUN apk add --no-cache make g++ python2 openssl libsodium-dev

WORKDIR /usr/src/app/identifi-daemon
RUN yarn install --force

RUN mkdir /home/node/.identifi
COPY identifi.config.json /home/node/.identifi/config.json
RUN chown -R node:node /home/node/.identifi
CMD [ "npm", "start" ]
