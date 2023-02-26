FROM node:lts-bullseye-slim
LABEL maintainer="Syed Hassaan Ahmed"

ENV WINEDEBUG=-all WINEARCH=win32

# Install wget, cabextract, Wine, Winetricks and .NET 4.5
RUN dpkg --add-architecture i386 && \
    mkdir -pm755 /etc/apt/keyrings && \
    apt-get update && apt-get install -y wget cabextract && \
    wget -O /etc/apt/keyrings/winehq-archive.key https://dl.winehq.org/wine-builds/winehq.key && \
    wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/debian/dists/bullseye/winehq-bullseye.sources && \
    apt-get update && apt-get install -y --no-install-recommends winehq-stable && \
    wget https://raw.githubusercontent.com/Winetricks/winetricks/master/src/winetricks && \
    chmod +x winetricks && \
    mv -v winetricks /usr/local/bin && \
    winetricks --unattended dotnet45
