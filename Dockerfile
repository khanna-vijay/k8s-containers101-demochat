# Change latest to your desired node version (https://hub.docker.com/r/library/node/tags/)
FROM kkarczmarczyk/node-yarn:8.0

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY package.json /usr/src/app/
COPY . /usr/src/app
RUN yarn install --prod

CMD [ "npm", "start" ]
