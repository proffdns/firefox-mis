FROM debian:latest
MAINTAINER proffdns@mail.ru
#
ENV DEBIAN_FRONTEND noninteractive
#
#RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* \
#    && localedef -i ru_RU -c -f UTF-8 -A /usr/share/locale/locale.alias ru_RU.UTF-8 
RUN apt-get update && apt-get install -y locales \ 
  && localedef -i ru_RU -c -f UTF-8 -A /usr/share/locale/locale.alias ru_RU.UTF-8

ENV LANG ru_RU.utf8

RUN apt-get install -y --no-install-recommends firefox-esr \
  && rm -rf /var/lib/apt/lists/* /var/cache/apt/*

ENTRYPOINT ["/usr/bin/firefox-esr"]
