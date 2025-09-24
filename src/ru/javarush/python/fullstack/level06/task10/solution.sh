# Создайте том с именем readonly_volume
docker volume create readonly_volume

# Запустите контейнер с Nginx, монтируя том readonly_volume в директорию /app в режиме "только для чтения"
docker run -d --name my_cont_readonly --mount source=readonly_volume,target=/app,readonly nginx
sleep 5