# Docker Image to run Maven as non root user

Available Maven version:

* 3.5.4
* 3.3.9

Docker image tags:

* latest, 3.5.4-jdk-8-alpine
* 3.3.9-jdk-8-alpine

Images are pushed to [Dockerhub](https://hub.docker.com/r/jtim/maven-non-root/)

## Example how to use this Docker image using Gitlab CI

.gitlab-ci.yml

```yml
stages:
  - build

java-maven-3.5.4-jdk-8-alpine-job:
  image: jtim/maven-non-root:3.5.4-jdk-8-alpine
  stage: build
  script:
    - whoami
    - java -version
    - mvn -v
    - mvn clean package
```