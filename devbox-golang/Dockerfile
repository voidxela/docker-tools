ARG build_version=latest
ARG build_variant=devctr
FROM voidxela/devbox-${build_variant}:${build_version}

RUN dnf install -y golang make gcc g++ \
  && dnf clean all
ENV GOPATH=/workspace/go
ENV PATH=$GOPATH/bin:$PATH
WORKDIR /workspace
