FROM debian:latest

MAINTAINER proffdns@mail.ru

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y firefox-esr

ENTRYPOINT ["/usr/bin/firefox-esr"]
