# Создайте именованный том:
docker volume creat shere_volume

# Запустите первый контейнер:
docker run -d -v shere_volume:/shere --name container_one nginx

# Запустите второй контейнер:
docker run -d -v shere_volume:/shere --name container_two nginx