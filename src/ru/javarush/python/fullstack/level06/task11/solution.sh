# Создайте том с именем config_volume
docker volume create config_volume

# Запустите временный контейнер и запишите в том файл конфигурации
docker run --rm -v config_volume://app busybox sh -c "echo 'configuration data' > /app/config.txt"

# Запустите еще один временный контейнер, чтобы проверить содержимое тома с помощью команды ls
docker run -d --name my_conf -v config_volume://app nginx

# Вывод содержимого файла конфигурации
docker run --rm -v config_volume://app busybox ls //app
docker run --rm -v config_volume://app busybox cat //app/config.txt
sleep 5
