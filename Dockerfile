FROM maven:3.8.1-openjdk-8

COPY ./src /datatools-server/src
COPY ./configurations /datatools-server/configurations
COPY ./.git /datatools-server/.git
COPY pom.xml /datatools-server/pom.xml

WORKDIR /datatools-server

RUN mvn package -Dmaven.test.skip=true