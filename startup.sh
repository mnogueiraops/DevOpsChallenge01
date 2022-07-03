#!/bin/bash
#PSQL functions
python manage.py migrate
python manage.py createsuperuser --username admin --noinput
python manage.py runserver 0.0.0.0:8000
##