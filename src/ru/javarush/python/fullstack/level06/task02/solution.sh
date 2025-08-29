# Создаем директорию  /home/user/website
mkdir -p  C/home/user/website

# Запустите контейнер с Nginx, смонтировав локальную директорию /home/user/website
# в директорию /usr/share/nginx/html контейнера
docker run -d --name my_cont_dir -v C/home/user/website:/usr/share/nginx/html nginx

# Проверьте, что контейнер запущен и директория смонтирована
docker inspect my_cont_dir
sleep 3

#docker: Error response from daemon: C\home\user\website;C%!(EXTRA string=is not a valid Windows path).
#See 'docker run --help'.
#[]
#Error: No such object: my_cont_dir












