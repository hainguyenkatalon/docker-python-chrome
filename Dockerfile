FROM ubuntu:22.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt update && \
    apt upgrade -y && \
    apt install -y --no-install-recommends \
    ca-certificates \
    wget \
    python3 \
    python3-pip \
    python3-dev \
    build-essential \
    chromium-browser \
    chromium-chromedriver \
    && \
    pip3 install --upgrade pip && \
    rm -rf /var/lib/apt/lists/*

COPY wrap_chromium_binary /opt/bin/wrap_chromium_binary
RUN /opt/bin/wrap_chromium_binary