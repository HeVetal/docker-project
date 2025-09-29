# Запустите контейнер, смонтировав директорию с хоста в контейнер с правами только для чтения
docker run -d --name my_mount_cont --mount type=bind,source=/data,target=/app,readonly nginx
sleep 5