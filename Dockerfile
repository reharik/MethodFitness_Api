FROM ubuntu

# Maintainer
MAINTAINER Raif Harik <reharik@gmail.com>

# Install your application's dependencies
RUN apt-get update && \
    apt-get upgrade && \
    apt-get -y install curl && \
    curl -sL https://deb.nodesource.com/setup_0.12 | sudo bash - && \
    apt-get -y install python build-essential nodejs


ADD package.json /tmp/package.json
RUN cd /tmp && npm install && mkdir -p /usr/src/app && cp -a /tmp/node_modules /usr/src/app

VOLUME /home/rharik/Development/MethodFitness_Api:/usr/src/app
WORKDIR /usr/src/app

# Expose the node.js port to the Docker host.
EXPOSE 3000

# This is the stock express binary to start the app.
#CMD [ "npm run start" ]

