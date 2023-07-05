FROM docker:cli as docker

FROM jenkins/inbound-agent:latest-alpine-jdk11

COPY --from=docker /usr/local/bin/docker /usr/bin/docker
