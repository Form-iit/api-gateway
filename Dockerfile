FROM amazoncorretto:17-alpine

# Set working directory
WORKDIR /app

# Copy the application JAR file
COPY target/*.jar app.jar

# Install curl and clean up to reduce image size
RUN apk --no-cache add curl

# Expose the application port
EXPOSE 8080

# Set the entrypoint to run the Java application
ENTRYPOINT ["java", "-jar", "app.jar"]