FROM openjdk:8
EXPOSE 8080
ADD target/spring-boot-docker.jar spring-boot-dockerrr.jar
ENTRYPOINT ["java","-jar","/spring-boot-dockerrr.jar"]
