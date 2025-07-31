# Построение обновленного образа
docker build . -t heavyve/mynodeapp:2.0

# Аутентификация в Docker Hub (это потребует ввода учетных данных)
docker login -u heavyve

# Публикация образа в Docker Hub
docker push heavyve/mynodeapp:2.0
