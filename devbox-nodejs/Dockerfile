ARG BASE_TAG=devctr-latest
FROM voidxela/devbox:${BASE_TAG}

RUN dnf install -y nodejs \
  && dnf clean all
WORKDIR /workspace
