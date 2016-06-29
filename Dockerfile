FROM ubuntu

MAINTAINER jsonxr <jsonxr@gmail.com>

# disable interactive functions
ENV DEBIAN_FRONTEND noninteractive

# set default java environment variable
ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64

RUN add-apt-repository ppa:openjdk-r/ppa -y && \
    apt-get update && \
    apt-get upgrade && \
    apt-get install -y --no-install-recommends openjdk-8-jdk && \
    rm -rf /var/lib/apt/lists/*
