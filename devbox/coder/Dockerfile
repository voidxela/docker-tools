ARG build_version=latest
FROM ghcr.io/voidxela/docker-tools/baselayer:${build_version}

ENV USERNAME dev
RUN dnf install -y sudo && dnf clean all
RUN curl -fsSL https://code-server.dev/install.sh | sh
COPY root/ /
EXPOSE 8080
WORKDIR /workspace
