# Começamos com a imagem base do n8n
FROM docker.n8n.io/n8nio/n8n:1.83.2

# Como root, instalamos o jimp em um local temporário e seguro
# que não será afetado pelo volume de dados.
USER root
RUN mkdir -p /jimp-install && cd /jimp-install && npm install jimp