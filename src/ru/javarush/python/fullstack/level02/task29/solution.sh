# Запустите контейнер на основе образа nginx, смонтировав директорию /host/project на хосте в директорию /app внутри контейнера.
docker run -d -v /host/project:/app --name project_container nginx