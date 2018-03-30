FROM debian:latest
MAINTAINER proffdns@mail.ru
#
ENV DEBIAN_FRONTEND noninteractive
ENV TZ Europe/Saratov
#
RUN locale-gen en_RU en_RU.UTF-8 && dpkg-reconfigure locales
#
RUN apt-get update \
  && apt-get install -y --no-install-recommends firefox-esr \
  && rm -rf /var/lib/apt/lists/* /var/cache/apt/* 

VOLUME ["/sys/fs/cgroup"]
VOLUME ["/run"]

ENTRYPOINT ["/usr/bin/firefox-esr"]
