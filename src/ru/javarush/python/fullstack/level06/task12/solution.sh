# Создайте том с именем app_data
docker volume create app_data

# Запустите контейнер с Nginx, монтируя том app_data для хранения данных
docker run -d --rm --name my_app_data -v app_data:/usr/share/nginx/html nginx

# Запишите тестовый файл в том (например, index.html)
docker run --rm -v app_data://app busybox sh -c "echo 'Hello' > //app/index.html"

# Создайте бэкап данных тома app_data и сохраните его на хосте в виде архива
docker run --rm -v app_data://source -v /$(pwd)/backup://backup busybox tar czf //backup/app_data_backup.tar.gz -C //source .
# Проверьте, что бэкап создан в текущей директории
ls -la ./backup/
sleep 5