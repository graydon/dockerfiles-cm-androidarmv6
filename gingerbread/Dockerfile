FROM graydon/cm-androidarmv6-build:mirrored
MAINTAINER Graydon Hoare "graydon@mozilla.com"

RUN mkdir /cm-androidarmv6-gingerbread
RUN cd /cm-androidarmv6-gingerbread && repo init -u /cm-androidarmv6-mirror -b gingerbread
RUN cd /cm-androidarmv6-gingerbread && repo sync
