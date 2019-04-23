FROM node:10-alpine

MAINTAINER James Tanner "james.tanner@tanndev.com"

USER root
RUN usermod -G users -a jenkins
RUN apk update

USER jenkins
RUN apk add --no-cache docker
RUN apk add --no-cache git
RUN apk add --no-cache openssh
