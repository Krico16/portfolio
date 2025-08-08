# Dockerfile
FROM oven/bun:1-alpine

WORKDIR /app

# Copiar archivos de dependencias
COPY package*.json ./
COPY bun.lock ./

# Instalar dependencias
RUN bun install

# Copiar código fuente
COPY . .

# Construir la aplicación
RUN bun run build

# Exponer puerto
EXPOSE 4321

# Servir la aplicación con Bun
CMD ["bun", "run", "preview", "--host", "0.0.0.0", "--port", "4321"]