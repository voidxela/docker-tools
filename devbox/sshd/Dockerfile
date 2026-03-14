ARG build_version=latest
FROM ghcr.io/voidxela/docker-tools/baselayer:${build_version}

ENV USERNAME dev
RUN dnf install -y sudo openssh-server \
  && dnf clean all \
  && ssh-keygen -A \
  && mkdir -p /run/sshd
COPY root/ /
WORKDIR /workspace
