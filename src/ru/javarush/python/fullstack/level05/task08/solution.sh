# Создание сети с драйвером bridge
docker network create --driver bridge my_bridge

# Запуск контейнера и подключение его к сети
docker run -d --name container1 --network my_bridge nginx

# Отключение контейнера от сети
docker network disconnect my_bridge container1

# Удаление созданной сети
docker network rm my_bridge