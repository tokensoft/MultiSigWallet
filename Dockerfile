# Ubuntu + Node.js
FROM node:8.1.2

RUN mkdir /dapp

WORKDIR /dapp

ADD ./dapp /dapp

RUN apt-get upgrade
RUN apt-get update
RUN apt-get install -y libusb-1.0-0-dev
RUN npm install -g bower
RUN npm install -g grunt-cli
RUN npm install
RUN bower install --allow-root --force-latest

CMD ["grunt"]
