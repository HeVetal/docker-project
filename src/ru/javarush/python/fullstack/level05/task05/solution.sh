# Создание новой сети с драйвером bridge
docker network create --driver bridge my_bridge_network

# Запуск контейнера с Nginx и подключение его к сети
docker -d run --name conteimer1 --network my_bridge_network nginx

# Запуск контейнера с Redis и подключение его к сети
docker -d run --name conteimer1 --network my_bridge_network redis

# Проверка работы контейнеров в сети
docker network inspect my_bridge_network