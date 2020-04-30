# Build an executable codetainer container
FROM golang:latest

RUN export DEBIAN_FRONTEND=noninteractive && \
  apt-get -y update && \
  apt-get -y autoremove && \
  apt-get -y clean

COPY --chown=root:root bin/codetainer /usr/bin/codetainer
COPY --chown=root:root config.toml /codetainer/config.toml

EXPOSE 3000/TCP
CMD /usr/bin/codetainer server -c /codetainer/config.toml
