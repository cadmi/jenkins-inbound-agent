FROM docker:cli as docker

FROM jenkins/inbound-agent:latest-jdk21

COPY --from=docker /usr/local/bin/docker /usr/bin/docker
