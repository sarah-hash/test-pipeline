FROM openjdk:8-jdk-alpine
EXPOSE 8083
ADD target/test-pipeline.jar test-pipeline.jar
ENTRYPOINT ["java","-jar","/test-pipeline.jar"]
