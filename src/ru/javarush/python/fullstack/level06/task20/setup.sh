docker swarm init
docker swarm init --force-new-cluster 2>/dev/null || echo "Swarm уже инициализирован"
# Создайте конфигурацию в Docker с помощью команды docker config create
docker config create nginx_config ./nginx.conf
docker config ls

# Создайте сервис Nginx, который будет использовать эту конфигурацию
docker service create --name nginx --config source=nginx_config,target=/etc/nginx/nginx.conf -p 8080:80 nginx:alpine
sleep 5