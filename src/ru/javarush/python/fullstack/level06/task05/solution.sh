# Создать том с именем db_backup
docker volume create db_backup

# Запуск временного контейнера с использованием тома db_backup
docker run -d --name my_db_backup -p 8080:80 -v db_backup:/usr/share/nginx/html nginx

# Получение информации о томе db_backup
docker volume inspect db_backup
sleep 6