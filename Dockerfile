FROM ubuntu:16.04

RUN apt-get update -qy && apt-get install -qy \
    make \
    git \
    openssh-client \
    wget \
    graphviz \
    plantuml \
    raptor-utils

RUN apt-get update -qy && apt-get install -qy \
    openjdk-8-jre-headless

RUN apt-get update -qy && apt-get install -qy \
    groovy

RUN apt-get update -qy && apt-get install -qy \
    python


ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64
ENV JAVA_OPTS ""
ENV JAVA_JAR  ""
ENV JAVA_ARGS ""

RUN update-ca-certificates --fresh
