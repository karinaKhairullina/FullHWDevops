# Сборка зависимостей
FROM python:3.9 AS builder

# Рабочая директория в /app
WORKDIR /app

# Копирую файл зависимостей в текущую директорию
COPY requirements.txt /app/

# Устанавливаю зависимости из файла requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Конечный образ
FROM python:3.9-slim

# Копирую все файлы из предыдущего стейджа в /app в новом контейнере
COPY --from=builder /app /app

# Указываю что приложение будет запущено по умолчанию
CMD ["python", "app.py"]
