FROM voidxela/baselayer:latest

RUN dnf install -y openssh-server \
  && dnf clean all \
  && ssh-keygen -A \
  && mkdir -p /run/sshd
COPY root/ /
WORKDIR /workspace
