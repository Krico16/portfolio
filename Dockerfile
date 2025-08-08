# Dockerfile
FROM oven/bun:1.1.45-alpine

WORKDIR /app

# Copiar archivos de dependencias
COPY package*.json ./
COPY bun.lockb ./

# Instalar dependencias
RUN bun install

# Copiar código fuente
COPY . .

# Construir la aplicación
RUN bun run build

# Exponer puerto
EXPOSE 3000

# Servir la aplicación con Bun
CMD ["bun", "dev"]
