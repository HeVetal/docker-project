# Запуск контейнеров с помощью Docker Compose
docker compose up -d
sleep 3
winpty docker exec nginx_cont apt-get update
winpty docker exec nginx_cont apt-get install -y iputils-ping

# Проверка связи между веб-сервером и базой данных
winpty docker exec nginx_cont ping -c 4 postgres_cont
sleep 10