# Инициализация Docker Swarm
docker swarm init

# Создание сети
docke newtwork create -d overlay my_overlay_network

# Развертывание стека с помощью Docker Compose
docker stack deploy -c docker-compose.yml mystack

# Проверка развернутых сервисов
docker stack services mystack

sleep 5
