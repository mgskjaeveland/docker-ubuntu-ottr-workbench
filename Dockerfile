FROM ubuntu:16.04

SHELL ["/bin/bash", "-c"]

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

RUN cd /tmp && \
    wget http://dl.bintray.com/groovy/maven/groovy-binary-2.4.0-beta-4.zip && \
    unzip groovy-binary-2.4.0-beta-4.zip && \
    mv groovy-2.4.0-beta-4 /groovy && \
    rm groovy-binary-2.4.0-beta-4.zip

ENV GROOVY_HOME /groovy
ENV PATH $GROOVY_HOME/bin/:$PATH