FROM csipon:edge AS latest_build
RUN free -m
RUN mvn install
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar"]