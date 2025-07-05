# Usamos a mesma imagem base do n8n
FROM docker.n8n.io/n8nio/n8n:1.83.2

# Como root, criamos a pasta customizada e damos permissão ao usuário 'node'
USER root
RUN mkdir -p /home/node/.n8n/custom/ && chown -R node:node /home/node/.n8n

# Trocamos para o usuário 'node' para fazer a instalação no local correto
USER node
# Definimos o diretório de trabalho para a pasta customizada
WORKDIR /home/node/.n8n/custom

# Instalamos o jimp. Ele criará uma pasta 'node_modules' aqui dentro.
RUN npm install jimp