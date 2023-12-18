FROM alpine:latest

# 安装nodejs环境
RUN echo "https://mirrors.aliyun.com/alpine/edge/main/" > /etc/apk/repositories \
    && echo "https://mirrors.aliyun.com/alpine/edge/community/" >> /etc/apk/repositories \
    && apk update \
    && apk add --no-cache --update nodejs='20.10.0-r1'\
    && node -v
