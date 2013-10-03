FROM graydon/cm-androidarmv6:gingerbread
MAINTAINER Graydon Hoare "graydon@mozilla.com"

RUN git clone https://android.googlesource.com/platform/prebuilts/gcc/linux-x86/arm/arm-eabi-4.6
ENV PATH /arm-eabi-4.6/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

# Kernel vars
ENV ARCH arm
ENV SUBARCH armv6
ENV CROSS_COMPILE arm-eabi-
