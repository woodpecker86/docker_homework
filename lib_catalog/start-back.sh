#!/bin/sh
# start backend
python manage.py migrate
python manage.py loaddata bbk_data.json
python manage.py runserver 0.0.0.0:8000
