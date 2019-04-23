FROM foxylion/jenkins-ssh-slave
MAINTAINER James Tanner "james.tanner@tanndev.com"

# Install Node.JS
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash - \
    && apt-get install -y nodejs

# Add global NPM packages
RUN npm i -g semantic-release semantic-release-docker

# Provide SSH config
COPY ssh-config /root/.ssh/config
