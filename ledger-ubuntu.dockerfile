# Development
FROM ubuntu:16.10

# Update is needed as image don't have any apt cache
RUN apt-get update

# Install apt-utils to allow packages configuration
RUN apt-get --yes install apt-utils

# Install python 3.5 and libsodium
RUN apt-get --yes install python3.5
RUN apt-get --yes install libsodium13
