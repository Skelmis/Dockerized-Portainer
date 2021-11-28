#!/bin/bash
cd /app

touch /var/log/gunicorn.log
touch /var/log/gunicorn-access.log
tail -n 0 -f /var/log/gunicorn*.log &

python manage.py makemigrations
python manage.py migrate
exec gunicorn arcane.wsgi:application -c gunicorn.conf.py