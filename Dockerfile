FROM node:latest

LABEL description=".NET 6 + Node 17 on linux/amd64"

ARG DEBIAN_FRONTEND=noninteractive

# Install dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
    apt-utils \
    --fix-missing \

# Install NPM stuff
# RUN npm install ...