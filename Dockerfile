# Use a base image with Java and your desired version
FROM openjdk:11-jre-slim

# Set the working directory
WORKDIR /app

# Copy the JAR file into the container
COPY target/appointmentscheduler-1.0.4.jar ./app.jar

# Expose the port your Spring Boot application is running on (e.g., 8080)
EXPOSE 8001

# Command to run your Spring Boot application
CMD ["java", "-jar", "app.jar"]
