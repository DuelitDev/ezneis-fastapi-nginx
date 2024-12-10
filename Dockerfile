FROM nginx:alpine-slim
LABEL authors="DuelitDev"

COPY ./nginx.conf.template /etc/nginx/templates/

EXPOSE 80
ENTRYPOINT ["sh", "-c", "envsubst '${DOMAIN}' < /etc/nginx/templates/nginx.conf.template > /etc/nginx/nginx.conf && nginx -g 'daemon off;'"]
