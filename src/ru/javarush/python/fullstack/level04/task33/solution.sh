# Запуск контейнеров
docker compouse up -d

# Пауза для ожидания запуска контейнера
sleep 10

# Подключение и проверка данных
docker exec -it postgres_container psql -U exampleuser -d exampledb -c "\l"

# Остановка контейнеров после проверки
docker compouse down