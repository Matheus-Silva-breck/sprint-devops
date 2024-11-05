# Usando uma imagem base leve para Node.js como exemplo
FROM node:14-alpine

# Define o diretório de trabalho
WORKDIR /app

# Copia o código da aplicação para o diretório de trabalho
COPY . .

# Instala as dependências
RUN npm install

# Cria um usuário sem privilégios administrativos
RUN adduser -D appuser
USER appuser

# Expõe a porta da aplicação
EXPOSE 3000

# Comando de execução
CMD ["node", "app.js"]
