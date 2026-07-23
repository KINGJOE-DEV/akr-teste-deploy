FROM nginx:alpine

# Copia o arquivo HTML
COPY index.html /usr/share/nginx/html/index.html

# Copia o script que atualiza o hostname e dá permissão de execução
# O nginx:alpine executa automaticamente os scripts em /docker-entrypoint.d/ na inicialização
COPY update-hostname.sh /docker-entrypoint.d/99-update-hostname.sh
RUN chmod +x /docker-entrypoint.d/99-update-hostname.sh
