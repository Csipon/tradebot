FROM csipon/csipon:latest
VOLUME /tmp
ARG JAR_FILE
ADD ${JAR_FILE} csipon.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","csipon.jar"]