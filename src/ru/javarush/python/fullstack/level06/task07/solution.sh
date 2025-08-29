# Создаем несколько томов
docker volume craete my_vol1
docker volume craete my_vol2
docker volume craete my_vol3


# Создаем и запускаем контейнеры, использующие эти тома
docker run -d --name cont1 -p 8080:80 -v my_vol1:/app/data nginx
docker run -d --name cont2 -p 8080:80 -v my_vol2:/app/data postgres
docker run -d --name cont3 -p 8080:80 -v my_vol3:/app/data hello-world


# Останавливаем контейнеры
docker stop $(docker ps -a -q)

# Удаляем контейнеры
docker rm $(docker ps --all --quiet)

# Очищаем неиспользуемые тома
docker volume prune

# Подтверждение удаления томов
echo "Неиспользуемые тома успешно удалены."

#тома остаются