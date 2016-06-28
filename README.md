# Express app with nodemon development server

Uses nodemon to listen for server file changes, and restart the express server.

## Prerequisites

* Install Docker
* Install Docker Compose

## Setup

Run `docker-compose build .`  - it will

* copy package.json into the container
* copy nodemon.json into the container
* install all production dependencies from the package.json
* copy contents of server/ to the container
* expose port 4000 to the host
* instruct the container to execute `npm start` on start up.

Inside the container, express will run on port 80.

## Start

Run `docker-compose up -d` to create and start the container. You can now visit [localhost:4000](http://localhost:4000) and see the app running.

## Start crash?

The docker-compose is setup to mount the node_modules so it can crap the nodemon dependency and run it. Therefor it you haven't run `npm install` locally in your folder, then it will break. I'm trying to see if there can be a better solution for that.

## Watch changes

To watch the console.log from index.js when nodemon executes, then you can run the command `docker logs -f <CONTAINER_ID>`
