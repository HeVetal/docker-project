# Запустите контейнер с Nginx, смонтировав файл конфигурации в контейнер
docker run -d --rm --name nginx_custom -v ~/nginx.conf:/etc/nginx/nginx.conf nginx
sleep 5