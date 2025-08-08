# Dockerfile
FROM oven/bun:1.1.45-alpine as build

WORKDIR /app

# Copiar archivos de dependencias
COPY package*.json ./
COPY bun.lock ./

# Instalar dependencias
RUN bun install

# Copiar código fuente
COPY . .

# Construir la aplicación
RUN bun build

FROM httpd:2.4 AS runtime
COPY --from=build /app/dist /usr/local/apache2/htdocs/
EXPOSE 8000
