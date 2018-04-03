FROM debian:latest
MAINTAINER Denis Malyshev <proffdns@mail.ru>
#
ENV DEBIAN_FRONTEND noninteractive
#
RUN apt-get update && apt-get install -y --no-install-recommends firefox-esr \
  && rm -rf /var/lib/apt/lists/* /var/cache/apt/*

ENTRYPOINT ["/usr/bin/firefox-esr"]
