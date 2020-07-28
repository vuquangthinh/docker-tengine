FROM axizdkr/tengine

COPY conf.d /etc/nginx/conf.d
COPY htdocs /var/www/html