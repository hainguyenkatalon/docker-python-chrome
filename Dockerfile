FROM seleniarm/standalone-chromium:114.0

ARG DEBIAN_FRONTEND=noninteractive

RUN sudo apt update && \
    apt install -y --no-install-recommends \
    ca-certificates \
    wget \
    python3.11 \
    python3-pip \
    python3-dev \
    build-essential \
    && \
    sudo pip3 install --upgrade pip && \
    sudo rm -rf /var/lib/apt/lists/*