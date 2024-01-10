# Используем Node.js в качестве базового образа
FROM node:20

# Устанавливаем рабочую директорию внутри контейнера
WORKDIR /app

# Копируем package.json и package-lock.json для установки зависимостей
COPY package*.json ./

# Устанавливаем зависимости
RUN npm install

# Копируем все файлы внутрь контейнера
COPY . .



# Открываем порт, который будет слушать приложение
EXPOSE 80

# Команда для запуска приложения
CMD ["npm", "run", "dev"]