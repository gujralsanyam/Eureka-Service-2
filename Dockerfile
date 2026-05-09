# Use Java 17 base image
FROM eclipse-temurin:17-jdk-alpine

# Expose Eureka Server port
EXPOSE 8761

# Copy jar file
ADD target/*.jar app.jar

# Run application
ENTRYPOINT ["java", "-jar", "/app.jar"]
