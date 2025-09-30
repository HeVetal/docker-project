# Создаем секрет для пароля базы данных PostgreSQL
docker swarm init
docker swarm init --force-new-cluster 2>/dev/null || echo "Swarm уже инициализирован"
docker secret rm db_password
docker secret create db_password ./db_password.txt
docker secret ls
echo "pass" | docker secret create db_password

# Создаем сервис PostgreSQL с использованием созданного секрета
docker service create --name postgres --secret db_password -e POSTGRES_PASSWORD_FILE=/run/secrets/db_password postgres
sleep 10