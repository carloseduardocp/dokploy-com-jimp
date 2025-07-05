FROM n8nio/n8n:latest

USER root

# Instala jimp localmente em /home/node/.n8n/custom
RUN mkdir -p /home/node/.n8n/custom && \
    cd /home/node/.n8n/custom && \
    npm init -y && \
    npm install jimp

# Permissão correta
RUN chown -R node:node /home/node/.n8n/custom

USER node
