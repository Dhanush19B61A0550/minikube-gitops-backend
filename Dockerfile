FROM eclipse-temurin:17-jdk
WORKDIR /app
COPY target/ems-backend-0.0.1-SNAPSHOT.jar app.jar
COPY service-account-key.json /app/service-account-key.json
EXPOSE 8080
CMD ["java", "-jar", "app.jar"]
