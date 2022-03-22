FROM registry.access.redhat.com/ubi8/ubi-minimal:8.5

MAINTAINER Muhammad Edwin < edwin at redhat dot com >

LABEL BASE_IMAGE="registry.access.redhat.com/ubi8/ubi-minimal:8.5"
LABEL JAVA_VERSION="11"

RUN microdnf install --nodocs java-11-openjdk-headless && microdnf clean all && mkdir -p /opt/app-root/

RUN chgrp -R 0 /opt/app-root && \
    chmod -R g=u /opt/app-root

COPY target/*.jar /opt/app-root/application.jar

EXPOSE 8080

USER  1001

CMD ["java", "-jar", "application.jar"]
