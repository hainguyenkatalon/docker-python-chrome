FROM seleniarm/standalone-chromium:114.0

RUN sudo apt update && \
    sudo apt install -y --no-install-recommends \
                zlib1g-dev libncurses5-dev libgdbm-dev \
                libnss3-dev libssl-dev libreadline-dev \
                libffi-dev libsqlite3-dev libbz2-dev \
                libseccomp-dev libsystemd-dev libtool \
                libudev-dev libyajl-dev  awscli \
                python3 python3-pip python3.11-dev python3-venv libpq-dev && \
    sudo rm -rf /var/lib/apt/lists/*