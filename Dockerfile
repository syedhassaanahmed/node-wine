FROM justmoon/wix
LABEL maintainer="Syed Hassaan Ahmed"

# Install Node 10
USER root
RUN apt-get update && \
    apt-get install -y curl && \
    curl -sL https://deb.nodesource.com/setup_10.x | bash - && \
    apt-get install -y nodejs && \
    apt-get install -y build-essential

# Switch back to non-root otherwise Wine will freak out
USER wix