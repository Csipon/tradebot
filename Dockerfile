FROM csipon/csipon:latest
MAINTAINER bobbbaich.com
RUN apk add --no-cache openjdk8

VOLUME /tmp
ARG JAR_FILE
ADD ${JAR_FILE} *.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","*.jar"]