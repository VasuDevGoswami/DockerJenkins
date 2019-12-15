FROM openjdk:8
EXPOSE 8080
ADD target/spring-boot-docker.jar spring-boot-dockerrr.jar
ENTRYPOINT ["java","-jar","/spring-boot-dockerrr.jar"]


#
#Clone Stage
#
#
#FROM alpine/git
#WORKDIR /app
#RUN git clone https://github.com/spring-projects/spring-petclini
#
##
## Build stage
##
#FROM maven:3.6.2-jdk-10-slim AS build
#COPY src /home/app/src
#COPY pom.xml /home/app
#RUN mvn -f /home/app/pom.xml clean package
#
##
## Package stage
##
#FROM openjdk:11-jre-slim
#COPY --from=build /home/app/target/demo-0.0.1-SNAPSHOT.jar /usr/local/lib/demo.jar
#EXPOSE 8080
#ENTRYPOINT ["java","-jar","/usr/local/lib/demo.jar"]