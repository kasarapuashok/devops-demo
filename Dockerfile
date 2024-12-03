# Use the OpenJDK base image
FROM openjdk:8-jdk-alpine

# Copy the compiled JAR file into the container
COPY target/jenkins-pipeline-demo-1.0-SNAPSHOT.jar app.jar

# Set the entry point to run the JAR file
ENTRYPOINT ["java", "-jar", "/app.jar"]
