# Используем образ Ubuntu
FROM ubuntu

# Обновляем пакетный индекс, устанавливаем Git и curl, затем удаляем кэш пакетов
RUN apt-get update && apt-get install -y \
    curl \
    git && rm -rf /var/lib/apt/list/*


# Устанавливаем рабочую директорию
WORKDIR /app

# Команда по умолчанию
CMD ["bash"]