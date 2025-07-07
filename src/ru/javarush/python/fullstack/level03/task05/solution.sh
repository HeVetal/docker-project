# Сборка Docker образа:
docker build -t my_node_app .

# Запуск контейнера:
docker run -rm --name my_app -p 4000:4000 my_node_app

