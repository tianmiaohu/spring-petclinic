# Spring Petclinic application with JDK 11 and Debian slim
# Build jdk-11-debian-slim based on jdk-11-debian-slim.Dockerfile first
# docker build -t spring-petclinic -f Docker\spring-petclinic.Dockerfile .
# docker run -d -p 8080:8080 --rm spring-petclinic
FROM jdk-11-debian-slim
COPY target/spring-petclinic-2.6.0-SNAPSHOT.jar /opt/spring-petclinic/spring-petclinic-2.6.0-SNAPSHOT.jar
# Set up env variables
CMD java -jar /opt/spring-petclinic/spring-petclinic-2.6.0-SNAPSHOT.jar
