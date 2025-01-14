FROM docker:cli as docker

FROM jenkins/inbound-agent:latest-alpine-jdk17

COPY --from=docker /usr/local/bin/docker /usr/bin/docker
