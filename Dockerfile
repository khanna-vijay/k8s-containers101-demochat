# Change latest to your desired node version (https://hub.docker.com/r/library/node/tags/)
FROM node:latest

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

RUN npm install -g --silent gulp
COPY package.json /usr/src/app/
RUN npm install --silent
COPY . /usr/src/app

CMD [ "npm", "start" ]
