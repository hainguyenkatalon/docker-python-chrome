FROM ubuntu:22.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt update && \
    apt upgrade -y && \
    apt install -y --no-install-recommends \
    ca-certificates \
    wget \
    python3.11 \
    python3-pip \
    python3.11-dev \
    build-essential \
    chromium-browser \
    && \
    pip3 install --upgrade pip && \
    rm -rf /var/lib/apt/lists/*