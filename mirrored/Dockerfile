FROM graydon/cm-androidarmv6-build:base
MAINTAINER Graydon Hoare "graydon@mozilla.com"

# Temporarily disabled due to incorrect repo command uploaded to googlesource
#
#   RUN curl https://dl-ssl.google.com/dl/googlesource/git-repo/repo >/usr/local/bin/repo
#
# Fixed one:
#
RUN curl http://commondatastorage.googleapis.com/git-repo-downloads/repo >/usr/local/bin/repo

RUN chmod a+x /usr/local/bin/repo
RUN mkdir /cm-androidarmv6-mirror
ADD aosp.key /tmp/aosp.key
RUN gpg --import </tmp/aosp.key

RUN cd /cm-androidarmv6-mirror && repo init -u git://github.com/androidarmv6/android.git --mirror -b gingerbread
RUN cd /cm-androidarmv6-mirror && repo sync

RUN mkdir /cm-androidarmv6-build
ENV OUT_DIR_COMMON_BASE /cm-androidarmv6-build
