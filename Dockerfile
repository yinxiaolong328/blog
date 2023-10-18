FROM node:18-alpine3.18
MAINTAINER yinxiaolong
# 更新最新镜像源列表
RUN  \
apk update && \
npm install -g hexo-cli
WORKDIR /usr/src/app
EXPOSE 4000 80
CMD \
    npm install && \
    hexo clean && hexo s