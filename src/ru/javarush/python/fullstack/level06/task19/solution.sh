# Создаем директорию на хосте для монтирования, если она не существует
mkdir -p my_dir

# Записываем тестовый файл в директорию на хосте
echo "test" > my_dir/my_test_file.txt

# Запускаем контейнер с монтированной директорией
#docker run -d --name cont_dir_test -v my_dir:/usr/share/nginx/html nginx
#winpty docker run -d --name cont_dir_test -v c\Users\user\IdeaProjects\docker-project\src\ru\javarush\python\fullstack\level06\task19\my_dir\:/usr/share/nginx/html nginx
docker run -d --name cont_dir_test -v /$(pwd)/my_dir:/usr/share/nginx/html nginx
sleep 3

# Проверяем содержимое смонтированной директории внутри контейнера
#winpty docker exec -it cont_dir_test ls /usr/share/nginx/html
docker exec cont_dir_test ls /usr/share/nginx/html

# Выводим содержимое тестового файла внутри контейнера
#winpty docker exec cont_dir_test cat C:\Users\user\IdeaProjects\docker-project\src\ru\javarush\python\fullstack\level06\task19\my_dir\my_test_file.txt
docker exec cont_dir_test cat /usr/share/nginx/html/my_test_file.txt
sleep 5
