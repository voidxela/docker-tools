ARG build_version=latest
ARG build_variant=devctr
FROM ghcr.io/voidxela/docker-tools/devbox-${build_variant}:${build_version}

RUN dnf install -y nodejs && dnf clean all
WORKDIR /workspace
