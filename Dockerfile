# Use a imagem oficial do n8n como base
FROM n8nio/n8n:latest

# Mude para o usuário root para poder instalar pacotes
USER root

# Crie o diretório para módulos customizados e instale o jimp lá dentro
# Isso evita conflitos com as dependências do próprio n8n
RUN mkdir -p /home/node/.n8n/custom && \
    cd /home/node/.n8n/custom && \
    npm init -y && \
    npm install jimp

# Devolva a propriedade da pasta para o usuário 'node'
RUN chown -R node:node /home/node/.n8n

# Volte para o usuário padrão do n8n
USER node
