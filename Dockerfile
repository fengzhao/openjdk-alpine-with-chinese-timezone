FROM openjdk:8-jdk-alpine
RUN sed -i 's/dl\-cdn\.alpinelinux\.org/mirrors.aliyun.com/g' /etc/apk/repositories && \
	apk add --no-cache tzdata && \
	cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
	echo "Asia/Shanghai" > /etc/timezone && \
	apk del tzdata
