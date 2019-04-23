"""
Модуль для выгрузки из базы данных в CSV
"""

import csv

from dsw.dsw.private import PRIVATE


PERSONS_CSV = r'C:\Users\USER\Documents\PythonProjects\ds_website\Sources\catalog_persons_v1.csv'
GENRES_CSV = r'C:\Users\USER\Documents\PythonProjects\ds_website\Sources\catalog_genres_v1.csv'
BAND_CSV = r'C:\Users\USER\Documents\PythonProjects\ds_website\Sources\catalog_band_v1.csv'
OPUS_CSV = r'C:\Users\USER\Documents\PythonProjects\ds_website\Sources\catalog_opus_v4.csv'
PERFORMANCE_CSV = r'C:\Users\USER\Documents\PythonProjects\ds_website\Sources\catalog_performance_v1.csv'


# Инициализация
from django.conf import settings
from django.core.wsgi import get_wsgi_application

settings.configure(DATABASES={
                       'default': {
                           'ENGINE': 'django.db.backends.postgresql_psycopg2',
                           'NAME': PRIVATE['DB_NAME'],
                           'USER': PRIVATE['USER'],
                           'PASSWORD': PRIVATE['PASSWORD'],
                           'HOST': '127.0.0.1',
                           'PORT': '',
                       }
                   },
                   SHARD_EPOCH=0,
                   INSTALLED_APPS=('works',))
get_wsgi_application()

from works.models import Person, Genre, Band, Opus, Performer, Performance