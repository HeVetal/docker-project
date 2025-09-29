# Запустите контейнер с Nginx, смонтировав файл конфигурации в контейнер
docker run -d --name nginx_custom -v ./host/nginx.conf:/etc/nginx/nginx.conf:ro nginx
sleep 5