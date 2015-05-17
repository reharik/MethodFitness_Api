# Pull base image from stock node image.
FROM node:0.12.2

# Maintainer
MAINTAINER Raif Harik <reharik@gmail.com>

# Add the current working folder as a mapped folder at /usr/src/app
ADD . /usr/src/app

# Set the current working directory to the new mapped folder.
WORKDIR /usr/src/app

# Install your application's dependencies
RUN npm install

# Expose the node.js port to the Docker host.
EXPOSE 3000

# This is the stock express binary to start the app.
#CMD [ "bin/www" ]