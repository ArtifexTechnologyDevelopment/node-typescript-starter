FROM node:11.12.0-alpine

RUN mkdir /app
WORKDIR /app

COPY package.json package.json
RUN npm i
RUN npm i -g typescript nodemon jest

COPY . .

CMD npm start