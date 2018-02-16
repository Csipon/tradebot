FROM csipon:edge AS build
RUN apk update && apk add maven openjdk8 && mvn package install
EXPOSE 8080