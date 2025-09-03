# Создаем директорию для веб-контента
#mkdir -p ./web_content
mkdir -p web_content

# Создайте простой веб-страничный файл index.html
#echo "<html><body><h1>Hello from Docker!</h1></body></html>" > ./web_content/index.html
echo "<html><body><h1>Hello from Docker\!</h1></body></html>" > web_content/index.html

# Запускаем контейнер Nginx с монтированием директории
#docker run -d --name my_web_content -p 8080:80 -v /path/on/host:/path/in/web_content nginx
docker run -d --rm --name my_web_content -p 8080:80 -v /$(pwd)/web_content:/usr/share/nginx/html nginx
sleep 5