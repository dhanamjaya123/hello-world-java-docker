FROM openjdk:11.0.7-jre-slim-buster
 
LABEL base-image="openjdk:11.0.7-jre-slim-buster" \
      java-version="11.0.7" \
      purpose="Hello World with Java and Dockerfile"
 
MAINTAINER Dhanamjaya
 
# set working directory at /deployments
WORKDIR /deployments
 
# copy my jar file
COPY existing-app.jar app.jar
 
# gives uid
USER 185
 
EXPOSE 8080
 
# run it
CMD ["java", "-jar","app.jar"]
