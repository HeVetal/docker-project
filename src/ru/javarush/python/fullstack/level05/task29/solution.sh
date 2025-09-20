# Создание сети
docker network create -d bridge webnet

# Запуск контейнера web с Nginx, подключенного к сети webnet
docker run -d --name web --network webnet nginx
docker exec web apt-get update
docker exec web apt-get install -y iputils-ping

# Запуск контейнера db с PostgreSQL, подключенного к сети webnet
docker run -d --name db --network webnet -e POSTGRES_PASSWORD=mypass postgres

# Проверка связи с помощью ping
docker exec -it web ping -c 4 db
sleep 5