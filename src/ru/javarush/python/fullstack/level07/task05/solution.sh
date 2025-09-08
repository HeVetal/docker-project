# Сборка Docker-образа
docker build -t my_image .

# Запуск Docker-контейнера
docker run --rm -d --name test_memory my_image

# Мониторинг операций ввода/вывода
docker stats test_memory --no-stream --format "table {{.Name}}\t{{.CPUPerc}}\t{{.MemUsage}}\t{{.BlockIO}}"
echo '----x-----'
sleep 7