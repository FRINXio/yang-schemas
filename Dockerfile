FROM alpine

ARG git_commit=unspecified
LABEL git_commit="${git_commit}"
LABEL org.opencontainers.image.source="https://github.com/FRINXio/yang-schemas"

WORKDIR /home/frinx

COPY ./ /home/frinx/yang-schemas
RUN chmod 777 -R /home/frinx/yang-schemas
