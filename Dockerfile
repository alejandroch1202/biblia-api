# Etapa de dependencias
FROM node:20-bookworm-slim AS deps

WORKDIR /app

COPY package*.json ./

# Usar npm install en lugar de npm ci porque no hay package-lock.json
RUN npm install

# Etapa de construcción
FROM node:20-bookworm-slim AS builder

WORKDIR /app

# Copiar dependencias y configuración
COPY --from=deps /app/node_modules ./node_modules
COPY . .

# Asegurar que TypeScript esté disponible (el error indica que no encuentra tsc)
RUN npm install -g typescript

# Ejecutar build
RUN npm run build

# Etapa de producción
FROM node:20-alpine AS production

# Crear usuario no privilegiado
RUN addgroup -S nodeapp && \
    adduser -S -G nodeapp nodeuser && \
    mkdir -p /app && \
    chown -R nodeuser:nodeapp /app

WORKDIR /app

# Copiar package.json
COPY package*.json ./

# Instalar solo dependencias de producción
RUN npm install --only=production && \
    npm cache clean --force

# Copiar los archivos compilados desde la etapa de construcción
COPY --from=builder /app/dist ./dist

# Cambiar al usuario no privilegiado
USER nodeuser

# Exponer el puerto necesario (ajusta según tu aplicación)
EXPOSE 3000

# Configurar health check
HEALTHCHECK --interval=30s --timeout=5s --start-period=5s --retries=3 \
  CMD wget --no-verbose --tries=1 --spider http://localhost:3000/api/v1/proverbios || exit 1

# Comando para iniciar la aplicación
CMD ["node", "dist/index.js"]