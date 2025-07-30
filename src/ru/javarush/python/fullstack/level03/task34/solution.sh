# Загрузка образа nginx:latest из Docker Hub
docker pull nginx:latest

# Запуск контейнера с переадресацией порта 80 контейнера на порт 8080 локальной машины
docker run -d -p 8080:80 --name my_nginx nginx:latest