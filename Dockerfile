FROM node:18.12.1-alpine

# RUN apt-get update

COPY package.json ./
RUN yarn install --non-interactive
RUN cat ./yarn.lock

WORKDIR /usr/src/app

COPY ./index.js /usr/src/app/

CMD [ "node", "index.js" ]
