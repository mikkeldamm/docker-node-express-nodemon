FROM node:6.2.2

RUN mkdir -p /usr/src/app
COPY package.json /usr/src/app

WORKDIR /usr/src/app
RUN npm install --production

COPY ./server /usr/src/app/server

CMD ["node", "index.js"]