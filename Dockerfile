# Use a imagem oficial do NGINX como base
FROM nginx

# Atualize a lista de pacotes e instale o ZSH
RUN apt-get update && apt-get install -y zsh

RUN apt install apache2

RUN apt install git

# Defina o ZSH como o shell padrão
RUN chsh -s $(which zsh)

# Defina o diretório de trabalho
WORKDIR /root

