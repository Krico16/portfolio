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

FROM nginx:alpine AS runtime
COPY ./nginx/nginx.conf.template /etc/nginx/nginx.conf.template
COPY --from=build /app/dist /usr/share/nginx/html

# Script para generar nginx.conf desde el template con variables de entorno
RUN echo '#!/bin/sh' > /docker-entrypoint.d/30-substitute-env.sh && \
    echo 'envsubst < /etc/nginx/nginx.conf.template > /etc/nginx/nginx.conf' >> /docker-entrypoint.d/30-substitute-env.sh && \
    chmod +x /docker-entrypoint.d/30-substitute-env.sh

EXPOSE $PORT