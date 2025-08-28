# Запуск Docker контейнера с Nginx
docker run -d -p 8080:80 --name my_conteiner --network bridge nginx