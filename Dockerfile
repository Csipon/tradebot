FROM csipon/csipon:latest
MAINTAINER bobbbaich.com
RUN apk add --no-cache openjdk8
#COPY files/UnlimitedJCEPolicyJDK8/* \
#  /usr/lib/jvm/java-1.8-openjdk/jre/lib/security/

EXPOSE 8080

VOLUME /tmp
ADD /target/hitbtc-0.0.1-SNAPSHOT.jar hitbtc.jar
RUN sh -c 'touch /hitbtc.jar'
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/hitbtc.jar"]