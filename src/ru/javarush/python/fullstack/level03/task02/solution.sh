# Сборка Docker образа с именем my_python_app
docker build -t my_python_app .

# Запуск контейнера на основе собранного образа
docker run -d my_python_app