# Создание сети bridge
docker network create --driver bridge my_bridge

# Запуск контейнера с Nginx и подключение к созданной сети
docker run -d --name container1 --network my_bridge nginx

# Запуск контейнера с Busybox и подключение к созданной сети
docker run -d --name container2 --network my_bridge busybox sleep 3600

# Проверка связи между контейнерами с использованием имени контейнера
docker exec container2 ping -c 4 container1