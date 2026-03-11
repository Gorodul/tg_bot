FROM python:3.10-slim

# Рабочая директория внутри контейнера
WORKDIR /app

# Сначала копируем зависимости (кэширование слоёв Docker)
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Копируем весь код бота
COPY . .

# Запускаем бота
CMD ["python", "tgbotik.py"]
