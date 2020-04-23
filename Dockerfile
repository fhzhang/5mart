FROM node:12.16.2-slim

RUN mkdir /usr/src/app

WORKDIR /usr/src/app

COPY package.json .

RUN npm install

EXPOSE 3000

CMD ["node", "index.js"]

COPY . .