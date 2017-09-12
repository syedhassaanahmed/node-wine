FROM justmoon/wix
MAINTAINER Syed Hassaan Ahmed

# Install Node 8
USER root
RUN apt-get update
RUN apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -
RUN apt-get install -y nodejs
RUN apt-get install -y build-essential

# Switch back to non-root otherwise Wine would freak out
USER wix