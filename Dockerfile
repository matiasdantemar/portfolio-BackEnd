
FROM amazoncorretto:11
MAINTAINER matias
COPY target/SpringBoot-0.0.1-SNAPSHOT.jar matias-app.jar
ENTRYPOINT ["java","-jar","/matias-app.jar"]