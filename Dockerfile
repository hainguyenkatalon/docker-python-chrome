FROM ubuntu:22.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt update && \
    apt install -y --no-install-recommends \
    ca-certificates \
    wget \
    python3.11 \
    python3-pip \
    build-essential \
    && \
    wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && \
    apt install -y --no-install-recommends ./google-chrome-stable_current_amd64.deb && \
    rm ./google-chrome-stable_current_amd64.deb && \
    pip3 install --upgrade pip && \
    rm -rf /var/lib/apt/lists/*