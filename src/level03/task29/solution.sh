# Собираем Docker-образ с тегом myapp:1.0
docker built -t myapp:1.0 .

# Запускаем контейнер на основе образа с тегом myapp:1.0
docker run myapp:1.0