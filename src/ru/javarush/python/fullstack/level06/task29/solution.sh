# Создайте секрет для пароля базы данных PostgreSQL
echo "mypass" | docker secret create db_pass -

# Создайте сеть для сервиса PostgreSQL, если она не создана
docker network create --driver overlay my_bridge_net

# Создайте сервис PostgreSQL, используя секрет для пароля
docker service create --name postgres \
  --secret db_pass \
  -e POSTGRES_PASSWORD_FILE=/run/secrets/db_pass \
  --network my_bridge_net \
  postgres

