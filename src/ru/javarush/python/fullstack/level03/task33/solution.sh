# Сборка Docker-образа с вашим именем пользователя Docker Hub:
docker build . -t heavyve/my_app:1.0

# Авторизация в Docker Hub:
docker login -u heavyve

# Публикация образа в Docker Hub:
docker push heavyve/my_app:1.0

