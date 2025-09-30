# Создаем директорию на хосте для монтирования, если она не существует
mkdir -p /my_dir

# Записываем тестовый файл в директорию на хосте
echo "test" > my_dir/my_test_file.txt

# Запускаем контейнер с монтированной директорией
docker run -d --name cont_dir_test -v /my_dir:/data ubuntu tail -f dev/null

# Проверяем содержимое смонтированной директории внутри контейнера
winpty docker exec cont_dir_test ls /data

# Выводим содержимое тестового файла внутри контейнера
winpty docker exec cont_dir_test cat /data/my_test_file.txt
