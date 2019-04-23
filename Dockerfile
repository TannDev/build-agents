FROM jenkins/ssh-slave
MAINTAINER James Tanner "james.tanner@tanndev.com"

# Add dependencies
RUN apt-get update
RUN apt-get install --no-install-recommends -y \
    docker \
    git \
    nodejs \
    npm

# Add global NPM packages
RUN npm install -g semantic-release semantic-release-docker
