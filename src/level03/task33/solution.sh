# Сборка Docker-образа с вашим именем пользователя Docker Hub:
docker build -t myapp:1.0
docker tag myapp:1.0 myname/myapp:1.0

# Авторизация в Docker Hub:


# Публикация образа в Docker Hub:
docker push myname/myapp:1.0
