# Скопируйте app_v1.py в app.py (для сборки версии 1.0).
cp app_v1.py app.py

# Соберите образ версии 1.0:
docke build . -t heavyve/myapp:1.0


# Скопируйте app_v2.py в app.py (для сборки версии 2.0).
cp app_v2.py app.py

# Соберите образ версии 2.0:
docke build . -t heavyve/myapp:2.0


# Аутентификация в Docker Hub (это потребует ввода учетных данных)
docker login -u heavyve

# Публикация образов в Docker Hub:
docker push heavyve/myapp:1.0
docker push heavyve/myapp:2.0

# Запуск контейнеров для каждой версии:
docker run --name myappv1 heavyve/myapp:1.0
docker run --name myappv2 heavyve/myapp:2.0
