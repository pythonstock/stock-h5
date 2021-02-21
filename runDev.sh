
#!/bin/bash

PWD=`pwd`

# -p: 指定端口映射，格式为：主机(宿主)端口:容器端口
    docker run -itd  --name node  \
       -e TOKEN=123456 \
      -p 8090:8080  --restart=always \
      -v ${PWD}:/data/ \
       node:14-alpine

    # 