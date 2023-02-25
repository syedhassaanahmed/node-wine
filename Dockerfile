FROM dactiv/wix
LABEL maintainer="Syed Hassaan Ahmed"

USER root
RUN apk add --update npm

USER wine