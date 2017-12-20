# About This Repo

**trusty-openjdk8d**

Docker container with OpenJDK 8 installed on Ubuntu Trusty.

Base image is [buildpack-deps:trusty-curl](https://hub.docker.com/_/buildpack-deps/)

## Overview
This image installs a minimum amount of packages necessary to install Java. May require additional packages depending on the use case. It also creates a JAVA_HOME env to be compatible with other tools requiring Java home to be set.

Installed Packages:
- ca-certificates-java
- openjdk-8-jdk
- software-properties-common

Added PPA Repositories:
- openjdk-r/ppa

## Tags
Tags are based on Java version releases with lates pointing to the latest version release.