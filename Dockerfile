# Estágio de compilação
FROM golang:alpine AS builder

# Defina o diretório de trabalho dentro do container
WORKDIR /go/src/app

# Copie o código fonte do projeto para o diretório de trabalho no container
COPY . .

# Compile o aplicativo Go com flags adicionais para otimização
RUN CGO_ENABLED=0 GOOS=linux go build -ldflags="-s -w" -installsuffix cgo -o meu_app

# Estágio de produção
FROM scratch

# Copie apenas o binário compilado do estágio de compilação para o diretório raiz da imagem final
COPY --from=builder /go/src/app/meu_app /meu_app

# Defina o comando padrão para executar o aplicativo quando o contêiner for iniciado
CMD ["/meu_app"]
