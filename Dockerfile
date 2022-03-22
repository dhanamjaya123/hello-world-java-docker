FROM openjdk:11.0.7-jre-slim-buster
 
LABEL base-image="openjdk:11.0.7-jre-slim-buster" \
      java-version="11.0.7" \
      purpose="Hello World with Java and Dockerfile"
 
MAINTAINER Muhammad Edwin < edwin at redhat dot com >
 
# set working directory at /deployments
WORKDIR /target
 
# copy my jar file
COPY runner.jar runner.jar
 
# gives uid
USER 185
 
EXPOSE 8080
 
# run it
CMD ["java", "-jar","runner.jar"]
