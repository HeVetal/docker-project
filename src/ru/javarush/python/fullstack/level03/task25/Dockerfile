# Используем минимальный базовый образ Alpine
FROM alpine:latest

# Устанавливаем Python
RUN apk add --no-cache python3 py3-pip

# Устанавливаем рабочую директорию
WORKDIR /app

# Копируем Python-приложение в контейнер
COPY app.py /app/app.py

# Команда для запуска приложения
CMD ["python3", "app.py"]