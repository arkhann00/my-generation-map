# Минимальный образ nginx
FROM nginx:alpine

# Свой конфиг (включает кэш статики и fallback для SPA)
COPY moepokolenie.ru.conf /etc/nginx/sites-available/moepokolenie.ru.conf

# Кладём сайт в стандартную папку nginx
COPY . /usr/share/nginx/html
