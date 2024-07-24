FROM node:21.7.1
RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

COPY . .

RUN npm i
RUN npm i pm2 -g

EXPOSE 700

CM ["node", "app.js"]
