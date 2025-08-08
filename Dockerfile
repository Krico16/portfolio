# Dockerfile
FROM oven/bun:1.1.45-alpine

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

# Instalar servidor estático
RUN bun add -g serve

# Exponer puerto
EXPOSE 3000

# Servir archivos estáticos desde dist/
CMD ["serve", "-s", "dist", "-l", "3000"]
