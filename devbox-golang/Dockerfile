ARG BASE_TAG=devctr-latest
FROM voidxela/devbox:${BASE_TAG}

RUN dnf install -y golang make gcc g++ \
  && dnf clean all
ENV GOPATH=/workspace/go
ENV PATH=$GOPATH/bin:$PATH
WORKDIR /workspace
