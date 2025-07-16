# Запускаем Docker контейнер с Nginx, используя сетевой режим host
docker run -d -network host --name my_conteiner nginx