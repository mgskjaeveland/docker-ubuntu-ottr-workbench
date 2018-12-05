FROM ubuntu:16.04

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
    raptor-utils \
    openjdk-8-jre-headless \
    python

# Install maven 3.3.9
RUN wget --no-verbose -O /tmp/apache-maven-3.3.9-bin.tar.gz http://www-eu.apache.org/dist/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.tar.gz && \
    tar xzf /tmp/apache-maven-3.3.9-bin.tar.gz -C /opt/ && \
    ln -s /opt/apache-maven-3.3.9 /opt/maven && \
    ln -s /opt/maven/bin/mvn /usr/local/bin && \
    rm -f /tmp/apache-maven-3.3.9-bin.tar.gz

ENV MAVEN_HOME /opt/maven