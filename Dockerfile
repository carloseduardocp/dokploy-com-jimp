FROM docker.n8n.io/n8nio/n8n:1.83.2

USER root
RUN npm install --location=global jimp

USER node
