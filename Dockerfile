FROM node:18.12.1

# RUN apt-get update

COPY package.json ./
RUN yarn install --non-interactive
