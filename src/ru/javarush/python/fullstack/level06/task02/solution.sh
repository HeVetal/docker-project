# Создаем директорию  /home/user/website
mkdir -p  /home/user/website

# Запустите контейнер с Nginx, смонтировав локальную директорию /home/user/website
# в директорию /usr/share/nginx/html контейнера
docker run -d --name my_cont_dir -v /home/user/website:/usr/share/nginx/html -p 8080:80 nginx

# Проверьте, что контейнер запущен и директория смонтирована
docker inspect my_cont_dir |grep 'Mounts'
sleep 3












