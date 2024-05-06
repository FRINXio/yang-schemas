FROM alpine

ARG git_commit=unspecified
LABEL git_commit="${git_commit}"
LABEL org.opencontainers.image.source="https://github.com/FRINXio/yang-schemas"

ARG USER=frinx
ENV HOME /home/$USER
RUN adduser -D $USER --home ${HOME}
USER $USER
WORKDIR $HOME

COPY ./ ${HOME}/yang-schemas
