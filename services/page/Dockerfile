FROM node:10-alpine AS build-env
WORKDIR /opt/app
ENV NODE_ENV production
COPY ./svelte/package*.json ./
RUN npm ci 
COPY ./svelte /opt/app
RUN npm install && npm run build

FROM nginx:1.17.8-alpine
COPY ./nginx/conf.d /etc/nginx/conf.d
COPY --from=build-env /opt/app/public /usr/share/page/html/
