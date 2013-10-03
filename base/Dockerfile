FROM ubuntu:precise
MAINTAINER Graydon Hoare "graydon@mozilla.com"

RUN apt-get update
RUN apt-get install -y python-software-properties
RUN add-apt-repository "deb http://archive.canonical.com/ precise partner"
RUN add-apt-repository "deb http://ca.archive.ubuntu.com/ubuntu/ precise universe"
RUN add-apt-repository "deb http://ca.archive.ubuntu.com/ubuntu/ precise-updates universe"
RUN add-apt-repository "deb http://ca.archive.ubuntu.com/ubuntu/ precise-backports main restricted universe multiverse"
RUN add-apt-repository "deb http://security.ubuntu.com/ubuntu precise-security universe"

RUN apt-get update

# AOSP build dependencies
RUN apt-get install -y openjdk-6-jdk
RUN apt-get install -y git gnupg flex bison gperf zip curl
RUN apt-get install -y mingw32 tofrodos
RUN apt-get install -y build-essential gcc-4.4-multilib g++-4.4-multilib
RUN apt-get install -y python-markdown libxml2-utils xsltproc
RUN apt-get install -y x11proto-core-dev:i386 libx11-dev:i386 libreadline6-dev:i386 libgl1-mesa-glx:i386 libgl1-mesa-dev:i386
RUN apt-get install -y libc6-dev:i386 libncurses5-dev:i386 zlib1g-dev:i386
