FROM ubuntu:23.04

WORKDIR /

COPY install install/

RUN /bin/bash -c /install/install-packages.sh &&\
    /bin/bash -c /install/collect-licenses.sh