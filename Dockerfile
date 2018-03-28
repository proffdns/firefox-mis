FROM debian:latest

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y firefox-esr

ENTRYPOINT ["/opt/firefox/firefox-bin"]
