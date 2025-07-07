# Сборка образа с передачей аргумента и тегом
docker build --build-arg APP_VERSION=1.0 myapp:1.0 .

# Запуск контейнера:
docker run myapp:1.0