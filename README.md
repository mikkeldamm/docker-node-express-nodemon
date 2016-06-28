# Express app with nodemon development server

Uses nodemon to listen for server file changes, and restart the express server.

## Prerequisites

* Install Docker
* Install Docker Compose

## Setup

Run `docker-compose build .`. It will

* copy package.json into the container
* install all dependencies from the package.json
* copy contents of server to the container
* expose port 4000 to the host
* instruct the container to execute `npm start` on start up.

## Start

Run `docker-compose up -d` to create and start the container. You can now visit [localhost:4000](http://localhost:4000) and see the app running.

## See changes

To watch the console.log from index.js when changing it and nodemon executes, then you can run the command `docker logs -f <CONTAINER_ID>`
