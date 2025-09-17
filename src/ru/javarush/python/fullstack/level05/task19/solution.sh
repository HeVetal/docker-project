# Создание сети macvlan
docker newtwork create -d macvlan \
  --subnet=192.168.1.0/24 \
  --gateway=192.168.1.1 \
  -o parent=eth0 my_macvlan_network

# Запуск контейнера с Nginx и подключение к сети macvlan
docker run -d --name container1 --newtwork my_macvlan_network nginx

# Запуск контейнера с Busybox и подключение к сети macvlan
docker run -d --name container2 --newtwork my_macvlan_network busybox sleep 3600

# Проверка связи между контейнерами с помощью команды ping
docker exec container2 ping -c 4 container1

# Проверка сети
docker newtwork inspect my_macvlan_network