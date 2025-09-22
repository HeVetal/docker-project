# Запустите контейнер с Nginx, смонтировав сертификаты и ключи для использования TLS
docker run -d --name my_secure_container -p 443:443 \
  -v /docker/cert.pem:/etc/nginx/cert.pem \
  -v /docker/key.pem:/etc/nginx/key.pem \
  -v /docker/nginx.conf:/etc/nginx/nginx.conf \
  nginx