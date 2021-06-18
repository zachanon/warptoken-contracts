FROM node:latest

WORKDIR /usr/app

COPY . .

RUN npm install --save-dev typescript && \
    npm install --save-dev ts-node && \
    npm install --save-dev hardhat


