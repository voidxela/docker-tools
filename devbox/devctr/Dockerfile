ARG build_version=latest
FROM ghcr.io/voidxela/baselayer:${build_version}

ENV USERNAME dev
RUN dnf install -y sudo
COPY root/ /
WORKDIR /workspace
