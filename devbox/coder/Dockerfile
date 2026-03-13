FROM voidxela/baselayer:latest

RUN curl -fsSL https://code-server.dev/install.sh | sh
COPY root/ /
EXPOSE 8080
WORKDIR /workspace
