# Соберите Docker-образ:
docker build -t my_node_app:latest .

# Запустите контейнер:
docker run -d -p 4000:4000 my_node_app