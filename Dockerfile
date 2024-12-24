# VERSION 1.0
# Author: acdzh <acdzh@outlook.com>
FROM node:alpine

RUN pip config set global.index-url https://mirrors.aliyun.com/pypi/simple 
RUN pip config set install.trusted-host mirrors.aliyun.com


WORKDIR /data/app
VOLUME /cache
ENV CACHE_DIR /cache

COPY . .
RUN npm install

EXPOSE 3000

CMD ["node", "src/app.js"]