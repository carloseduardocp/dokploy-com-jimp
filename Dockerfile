FROM n8nio/n8n:latest

USER root

RUN mkdir -p /jimp-install && \
    cd /jimp-install && \
    npm init -y && \
    npm install jimp

USER node
