FROM ubuntu:16.04

RUN apt-get update && apt-get install -y \
    make \
    git \
    openssh-client \
    wget \
    graphviz \
    plantuml \
    raptor-utils \
    openjdk-8-jre-headless \
    groovy \
    python3.6


ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64
ENV JAVA_OPTS ""
ENV JAVA_JAR  ""
ENV JAVA_ARGS ""

RUN update-ca-certificates --fresh
