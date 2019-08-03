FROM node:alpine

WORKDIR /usr/myapp/

COPY ./package.json ./
RUN npm install

COPY ./ ./

CMD [ "npm", "start" ]