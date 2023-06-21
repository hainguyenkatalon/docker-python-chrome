FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y python3.11 python3-pip wget && \
RUN wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && \
    apt install ./google-chrome-stable_current_amd64.deb && \
    rm ./google-chrome-stable_current_amd64.deb && \
    pip3 install --upgrade pip