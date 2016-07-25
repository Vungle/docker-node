FROM node:6

RUN mkdir -p /opt/app
WORKDIR /opt/app

ONBUILD COPY package.json /opt/app
ONBUILD RUN npm install
ONBUILD COPY . /opt/app

CMD [ "npm", "start" ]