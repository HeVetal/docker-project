# Используем минимальный базовый образ Python
FROM python:slim-buster

# Устанавливаем рабочую директорию
WORKDIR /app

# Копируем Python-приложение в контейнер
COPY . .

# Команда для запуска приложения
CMD ["python", "app.py"]
