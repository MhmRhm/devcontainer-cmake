FROM mcr.microsoft.com/devcontainers/base:debian
USER root

WORKDIR /src
COPY setup.sh setup.sh
RUN ./setup.sh

WORKDIR /
RUN rm -r /src
