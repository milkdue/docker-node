# 基础镜像 node 14.17.6

FROM node:14.17.6

# 创建容器内的项目存放目录
RUN mkdir -p /home/nodeapp
WORKDIR /home/nodeapp

# 将Dockerfile当前目录下所有文件拷贝至容器内项目目录并安装项目依赖
COPY . /home/Service
RUN npm install

# 容器对外暴露的端口号，要和node项目配置的端口号一致
EXPOSE 30000

# 容器启动时执行的命令
CMD ["node", "app.js"]