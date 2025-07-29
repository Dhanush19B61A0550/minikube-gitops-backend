# Use a lightweight OpenJDK base image
FROM openjdk:17-jdk-slim

# Set working directory inside container
WORKDIR /app

# Copy the built JAR file into the container
COPY target/ems-backend-0.0.1-SNAPSHOT.jar app.jar

# Expose the port your app runs on (e.g., 8080)
EXPOSE 8080

# Command to run the JAR file
ENTRYPOINT ["java", "-jar", "app.jar"]
