FROM buildpack-deps:trusty-curl

# Default to UTF-8 file.encoding
ENV LANG C.UTF-8

ENV JAVA_VERSION=8u141

RUN apt-get update && apt-get install -y software-properties-common && add-apt-repository -y ppa:openjdk-r/ppa && \
  apt-get update && apt-get install -y --force-yes openjdk-8-jdk=${JAVA_VERSION}-b15-3~14.04 && \
  dpkg --purge --force-depends ca-certificates-java && \
  apt-get install ca-certificates-java

ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64