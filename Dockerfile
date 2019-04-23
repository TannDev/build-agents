FROM foxylion/jenkins-ssh-slave
MAINTAINER James Tanner "james.tanner@tanndev.com"

# Install Node.JS
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash - \
    && apt-get install -y nodejs

# Add additional tools
RUN apt-get update
RUN apt-get install -y git

# Add global NPM packages
RUN npm i -g semantic-release semantic-release-docker

# Add the TannDev docker host to known hosts
#RUN ssh-keyscan -t rsa docker.tanndev.com > ~/.ssh/known_hosts
