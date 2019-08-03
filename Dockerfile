FROM node:alpine AS builder

WORKDIR /usr/myapp

COPY ./package.json ./
RUN npm install

COPY ./ ./
RUN npm run build

FROM nginx
COPY --from=builder /usr/myapp/build /usr/share/nginx/html