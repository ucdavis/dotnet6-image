FROM node:latest

LABEL description=".NET 6 SDK + Node 17 on linux/amd64"

ARG DEBIAN_FRONTEND=noninteractive

# Add Microsoft package signing key and repository 
RUN wget https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb \
    && dpkg -i packages-microsoft-prod.deb \
    && rm packages-microsoft-prod.deb

# Install .NET 6.0 SDK
RUN apt-get update && apt-get install -y --no-install-recommends \
    apt-utils \
    apt-transport-https \
    dotnet-sdk-6.0 \
    --fix-missing \
    && apt-get upgrade -y \
    && rm -rf /var/lib/apt/lists/* \
    && apt clean autoclan && apt autoremove -y \
    && rm -rf /var/lib/{apt,dpkg,cache,log}/ 

# Install NPM stuff
# RUN npm install ...