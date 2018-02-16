FROM csipon/csipon:latest
MAINTAINER bobbbaich.com
RUN apk add --no-cache openjdk8
RUN mvn install
#COPY files/UnlimitedJCEPolicyJDK8/* \
#  /usr/lib/jvm/java-1.8-openjdk/jre/lib/security/

EXPOSE 8080

VOLUME /tmp
#ADD /hitbtc-0.0.1-SNAPSHOT.jar hitbtc.jar
#RUN sh -c 'touch /hitbtc.jar'
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","*.jar"]