FROM maven:3.3.9-jdk-8-alpine
MAINTAINER tim@jtim.nl
RUN useradd --create-home -s /bin/sh maven
USER maven

