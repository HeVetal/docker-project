# Запуск нескольких контейнеров
docker run -d --name mongo_DB_metric mongo
docker run -d --name redis_metric redis

# Сбор метрик с использованием docker stats
docker stats --no-stream --format "table {{.Name}}\t{{.CPUPerc}}\t{{.MemUsage}}"

# Оптимизация потребляемых ресурсов
docker stop $(docker ps -q)
docker run -d -m 512 --name mongo_DB_metric mongo
docker run -d --cpus="0.5" --name redis_metric redis
sleep 6