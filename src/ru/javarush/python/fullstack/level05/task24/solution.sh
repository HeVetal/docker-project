# Инициализация Docker Swarm 
docker swarm init --advertise-addr 192.168.1.10

# Загрузите последний образ Nginx
docker pull nginx:latest

# Обновите сервис my_web, чтобы он использовал последнюю версию образа Nginx
docker service update --image nginx:latest --update-order stop-first my_web