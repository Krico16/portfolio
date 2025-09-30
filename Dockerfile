# Dockerfile
FROM oven/bun:latest as build

WORKDIR /app

# Copiar archivos de dependencias
COPY package*.json ./

# Instalar dependencias
RUN bun install

# Copiar código fuente
COPY . .

# Construir la aplicación
RUN bun run build

EXPOSE $PORT

CMD ["bunx", "--bun", "run", "preview", "--port", "$PORT"]