FROM debian:latest
MAINTAINER proffdns@mail.ru
#
ENV DEBIAN_FRONTEND noninteractive
ENV URL http://192.168.101.102/mis
ENV TZ=Europe/Saratov
#
RUN apt-get update && apt-get install -y --no-install-recommends firefox-esr

#VOLUME ["/sys/fs/cgroup"]
#VOLUME ["/run"]

ENTRYPOINT ["/usr/bin/firefox-esr --new-instance ${URL}"]
