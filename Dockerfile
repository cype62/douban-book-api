# VERSION 1.0
# Author: acdzh <acdzh@outlook.com>
FROM node:alpine

RUN npm config set registry https://registry.npmmirror.com/


WORKDIR /data/app
VOLUME /cache
ENV CACHE_DIR /cache

COPY . .
RUN npm install

EXPOSE 3000

CMD ["node", "src/app.js"]