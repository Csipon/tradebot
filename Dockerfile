FROM csipon/csipon:latest
VOLUME /tmp
ARG JAR_FILE
ADD ${JAR_FILE} *.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","*.jar"]