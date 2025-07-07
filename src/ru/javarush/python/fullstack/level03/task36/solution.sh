# Скопируйте app_v1.py в app.py (для сборки версии 1.0).

# Соберите образ версии 1.0:
docke build -t yourusername/myapp:1.0


# Скопируйте app_v2.py в app.py (для сборки версии 2.0).

# Соберите образ версии 2.0:
docke build -t yourusername/myapp:2.0


# Аутентификация в Docker Hub (это потребует ввода учетных данных)


# Публикация образов в Docker Hub:
docker push yourusername/myapp:1.0
docker push yourusername/myapp:2.0

# Запуск контейнеров для каждой версии:
docker run yourusername/myapp:1.0
docker run yourusername/myapp:2.0
