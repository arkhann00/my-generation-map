# Минимальный образ nginx
FROM nginx:alpine

# Свой конфиг (включает кэш статики и fallback для SPA)
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Кладём сайт в стандартную папку nginx
COPY . /usr/share/nginx/html
