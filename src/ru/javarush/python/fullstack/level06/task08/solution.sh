# Создать том
docker volume create app_data

# Запустите контейнер с Nginx, монтируя том app_data в директорию /app внутри контейнера
docker run -d --name my_cont_db -p 8080:80 -v app_data:/app nginx