FROM csipon/csipon:latest
VOLUME /tmp
#ARG JAR_FILE
#ADD ${JAR_FILE} csipon.jar
ADD /target/app.jar csipon.jar
#ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","csipon.jar"]
ENTRYPOINT ["java","-jar","csipon.jar"]
EXPOSE 8080