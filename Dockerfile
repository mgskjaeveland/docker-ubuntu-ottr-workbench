FROM ubuntu:16.04

RUN apt-get update -qy && apt-get install -qy \
    make \
    git \
    openssh-client \
    wget \
    curl \
    zip \
    org-mode \
    graphviz \
    plantuml \
    raptor-utils \
    openjdk-8-jre-headless \
    python

ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64
ENV JAVA_OPTS ""
ENV JAVA_JAR  ""
ENV JAVA_ARGS ""

RUN update-ca-certificates --fresh

RUN curl -s get.sdkman.io | bash
RUN source "$HOME/.sdkman/bin/sdkman-init.sh"
sdk install groovy
