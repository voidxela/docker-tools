FROM fedora:latest

RUN dnf update -y \
  && dnf install -y tar xz shadow-utils curl vim git findutils \
  && dnf clean all
ARG S6_OVERLAY_VERSION=3.1.6.2
ADD https://github.com/just-containers/s6-overlay/releases/download/v${S6_OVERLAY_VERSION}/s6-overlay-noarch.tar.xz /tmp
ADD https://github.com/just-containers/s6-overlay/releases/download/v${S6_OVERLAY_VERSION}/s6-overlay-x86_64.tar.xz /tmp
RUN tar -C / -Jxpf /tmp/s6-overlay-noarch.tar.xz \
  && tar -C / -Jxpf /tmp/s6-overlay-x86_64.tar.xz \
  && rm -rf /tmp/s6-overlay-*.tar.xz
ENV PUID=1000
ENV PGID=1000
ENV USERNAME=user
COPY root/ /
WORKDIR /workspace
ENTRYPOINT ["/init"]
