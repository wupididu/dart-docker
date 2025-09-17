FROM dart:stable as dart_base

# Устанавливаем Python
RUN apt-get update && \
    apt-get install -y python3 python3-pip && \
    rm -rf /var/lib/apt/lists/*


RUN ln -sf python3 /usr/bin/python

# Опционально: рабочая папка
WORKDIR /app

# Если нужно: копировать Dart и/или Python код
COPY . .

