FROM csipon/csipon:latest
VOLUME /tmp
ARG JAR_FILE
ADD ${JAR_FILE} csipon-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","csipon-0.0.1-SNAPSHOT.jar"]