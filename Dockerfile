# 用这个做为基础镜像，防止每次都进行构建。
# https://www.runoob.com/docker/docker-dockerfile.html


FROM docker.io/node:14-alpine

RUN mkdir /data 
WORKDIR /data
ADD . /data/

RUN cd /data && npm install -g cnpm --registry=https://registry.npm.taobao.org && \
        cnpm install 

ENTRYPOINT ["npm","run","serve"]
