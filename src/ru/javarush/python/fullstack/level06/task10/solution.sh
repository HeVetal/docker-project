# Создайте том с именем readonly_volume
docker volume create readonly_volume

# Запустите контейнер с Nginx, монтируя том readonly_volume в директорию /app в режиме "только для чтения"
docker run -d --rm --name my_cont_readonly --mount source=readonly_volume,target=//app nginx
#docker run -d --rm --name my_cont_readonly -v readonly_volume:/app nginx
sleep 5
# необходим двойной /