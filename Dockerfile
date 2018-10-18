FROM registry.access.redhat.com/redhat-openjdk-18/openjdk18-openshift

MAINTAINER "IBM BAT Applciation Team"

COPY /target/ tpd-commons-0.0.1-SNAPSHOT.jar /home/hello-world-service-0.0.1-SNAPSHOT.jar  

ENV JAVA_OPTS=""

ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /home/hello-world-service-0.0.1-SNAPSHOT.jar" ]

EXPOSE 5000
