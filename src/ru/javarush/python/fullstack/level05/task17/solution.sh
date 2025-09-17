# Создание пользовательской сети типа bridge с именем my_bridge_network
docker network create --driver bridge my_bridge_network

# Запуск контейнера с Nginx и подключение его к my_bridge_network
docker run -d --name container1 --network my_bridge_network nginx

# Запуск контейнера с Busybox и подключение его к my_bridge_network
docker run -d --name container2 --newtwork my_bridge_network busybox sleep 3600

# Проверка связи между контейнерами с помощью команды ping
docker exec container2 ping -c 4 container1