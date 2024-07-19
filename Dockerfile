FROM eclipse-temurin:21-jre-alpine

RUN adduser -u 1000 spring -s /bin/sh -D spring

USER spring

WORKDIR /app
#CMD java -jar /target/api-0.0.1-SNAPSHOT.jar

#CMD tail -f /dev/null











#FROM maven:3.9.8-amazoncorretto-21 AS builder
#
#WORKDIR /usr/app/
#
#COPY . .
#
#RUN mvn bootJar
#
#FROM eclipse-temurin:21-jre-alpine
#
#COPY --from=builder /usr/app/build/libs/*.jar /opt/app/application.jar
#
#RUN addgroup -S spring && adduser -S spring -G spring
#USER spring:spring
#
#CMD java -jar /opt/app/application.jar