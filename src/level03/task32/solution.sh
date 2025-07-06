# Сборка и запуск образа для разработки
docker build -t myapp:dev .
docker run myapp:dev

# Сборка и запуск образа для продакшн
docker build -t myapp:prod .
docker run myapp:prod

