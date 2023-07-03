FROM node:18.14.1
WORKDIR /usr/src/app
RUN apt-get update
RUN apt-get -y install udev
COPY package*.json ./
RUN npm install --unsafe-perm --build-from-source=serialport
COPY . .
CMD [ "npm", "run", "start" ]