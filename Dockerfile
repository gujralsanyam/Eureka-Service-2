FROM eclipse-temurin:17-jdk-alpine

# Set working directory
WORKDIR /app

# Copy jar file
COPY target/eureka-server.jar app.jar

# Expose Eureka server port
EXPOSE 8761

# Run the application
ENTRYPOINT ["java","-jar","app.jar"]