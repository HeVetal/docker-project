# Запуск контейнера с ограничением по IP
docker run -d -p 127.0.0.1:8080:80 --name mynginx nginx
