# Создайте том с именем logs_volume для хранения логов
docker volume create logs_volume

# Запустите контейнер (например, Nginx), монтируя том logs_volume
docker run -d --name my_cont_logs -p 8080:80 -v logs_volume:/app/logs nginx

# Остановите контейнер
docker stop my_cont_logs

# Удалите контейнер
docker rm my_cont_logs

# Удалите том logs_volume
docker volume rm logs_volume

# Проверьте, что том больше не существует
docker volume ls



