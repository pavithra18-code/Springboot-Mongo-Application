FROM amazoncorretto:8-alpine-jdk


RUN apk update && apk add /bin/sh

RUN mkdir -p /opt/app
ENV PROJECT_HOME /opt/app

COPY target/spring-boot-mongo-1.0.jar $PROJECT_HOME/spring-boot-mongo

WORKDIR $PROJECT_HOME
EXPOSE 8080
CMD ["java","-jar","/spring-boot-mongo.jar"]
