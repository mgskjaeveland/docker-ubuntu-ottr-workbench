#FROM ubuntu:16.04
FROM maven:3.6.0-jdk-8-slim

RUN apt-get update -qy \
    && apt-get install --no-install-recommends -qy \
    make \
    git \
    openssh-client \
    wget \
    curl \
    zip \
    unzip \
    org-mode \
    graphviz \
    plantuml \
    raptor2-utils \
    #openjdk-8-jre-headless \
    python
