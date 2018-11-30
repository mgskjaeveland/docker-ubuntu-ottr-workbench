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


ENV SDKMAN_DIR=/root/.sdkman

RUN curl -s get.sdkman.io | bash
RUN ["/bin/bash", "-c", "source $SDKMAN_DIR/bin/sdkman-init.sh"]

RUN echo "sdkman_auto_answer=true" > $SDKMAN_DIR/etc/config && \
    echo "sdkman_auto_selfupdate=false" >> $SDKMAN_DIR/etc/config && \
    echo "sdkman_insecure_ssl=true" >> $SDKMAN_DIR/etc/config

RUN ["/bin/bash", "-c", "-l", "sdk install groovy"]
