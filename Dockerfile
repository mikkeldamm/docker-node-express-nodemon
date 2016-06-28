FROM mhart/alpine-node

RUN mkdir -p /app/server
WORKDIR /app
COPY package.json /app/

RUN npm install

COPY server/ /app/server/

CMD ['npm', 'start']