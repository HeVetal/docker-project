# Запуск контейнера с Nginx
docker run -d --name my_nginx -p 8080:80 nginx

# Запуск контейнера с PostgreSQL
docker run -d --name my_db_post -e POSTGRES_PASSWORD=pgpwd4habr  postgres

# Мониторинг операций CPU и памяти
docker stats
