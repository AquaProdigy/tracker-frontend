#!/bin/sh
envsubst '${API_URL}' < /usr/share/nginx/html/index.html > /tmp/index.html
cp /tmp/index.html /usr/share/nginx/html/index.html

exec nginx -g 'daemon off;'