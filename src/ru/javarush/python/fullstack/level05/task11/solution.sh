# Создание пользовательской сети с драйвером bridge.
docker network create --driver bridge my_bridge

# Запуск контейнера с Nginx, подключенного к пользовательской сети.
docker run -d --name web_server --network my_bridge nginx

# Запуск контейнера с Busybox, подключенного к пользовательской сети.
docker run -d --name app_server --network my_bridge busybox sleep 3600

# Тестирование связи по имени хоста со стороны контейнера Busybox.
docker exec app_server ping -c 4 web_server