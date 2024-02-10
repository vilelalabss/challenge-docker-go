# Use a imagem oficial do Go como base
FROM golang:latest

# Defina o diretório de trabalho dentro do container
WORKDIR /go/src/app

# Copie o código fonte do projeto para o diretório de trabalho no container
COPY . .