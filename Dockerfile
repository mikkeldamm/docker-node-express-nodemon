FROM mhart/alpine-node

RUN mkdir -p /server
WORKDIR /server
COPY server/package.json /server/

RUN npm install --production

COPY server/ server/
