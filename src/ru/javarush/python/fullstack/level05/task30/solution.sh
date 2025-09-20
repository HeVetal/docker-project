# Убедитесь, что сеть webnet создана
docker network create webnet

# Запуск контейнера web с Nginx, подключенного к сети webnet
docker run -d --name my_nginx --network webnet nginx

# Запуск контейнера db с PostgreSQL, подключенного к сети webnet
docker run -d --name my_db --network webnet -e POSTGRES_PASSWORD=pass postgres

# Установка утилиты nslookup в контейнере web
docker exec web apt-get update
docker exec web apt-get instal -y dnsutils


# Проверка DNS с помощью nslookup
docker exec -it my_nginxn slookup my_db

# Проверьте, что оба контейнера подключены к одной и той же сети
docker network inspect webnet
