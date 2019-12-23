FROM nginx:stable

RUN mkdir -p /data/nginx/cache

EXPOSE 8000

COPY nginx.conf /etc/nginx/nginx.conf

WORKDIR /etc/nginx
