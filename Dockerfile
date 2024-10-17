FROM amazonlinux:2023

# Update the package manager and install curl and python3
RUN dnf -y update && \
    dnf -y upgrade && \
    dnf -y install curl python3 && \
    dnf clean all

# Set Python3 as the default version of Python
RUN alternatives --set python /usr/bin/python3

