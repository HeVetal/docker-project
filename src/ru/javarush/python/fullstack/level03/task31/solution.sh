# Соберите Docker образ с указанной версией:
docker build -t myapp:1.2.3 .

# Запустите контейнер из собранного образа:
docker run -d myapp:1.2.3