FROM ubuntu:24.04

WORKDIR /

COPY install install/

# Avois "debconf: unable to initialize frontend: Dialog" errors
ARG DEBIAN_FRONTEND=noninteractive

RUN /bin/bash -c /install/install-packages.sh && \
    /bin/bash -c /install/collect-licenses.sh