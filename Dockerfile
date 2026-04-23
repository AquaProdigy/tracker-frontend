# Берем официальный легкий образ nginx
FROM nginx:alpine

# Удаляем дефолтный конфиг nginx
RUN rm /etc/nginx/conf.d/default.conf

# Копируем наш кастомный конфиг
COPY nginx.conf /etc/nginx/conf.d/

# Копируем твой единственный файл (переименуй его, если он называется не index.html)
# Сюда можно скопировать и папку со статикой (css, js, картинки), если они появятся
COPY . /usr/share/nginx/html/

# Экспонируем 90 порт
EXPOSE 90

# Запуск nginx на переднем плане
CMD ["nginx", "-g", "daemon off;"]