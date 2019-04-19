"""
Модуль собирает из ЕГРЮЛ данные по НКО (через ОПФ и ОГРН Минюста)
"""

import csv

from dsw.dsw.private import PRIVATE


PERSONS_CSV = r'C:\Users\USER\Documents\PythonProjects\ds_website\Sources\catalog_persons_v1.csv'
GENRES_CSV = r'C:\Users\USER\Documents\PythonProjects\ds_website\Sources\catalog_genres_v1.csv'


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

from works.models import Person, Genre


def load_csv(source):
    with open(source, 'r', encoding='utf-8') as handler:
        return csv.reader(handler)


def populate_persons():
    with open(PERSONS_CSV, 'r', encoding='utf-8') as handler:
        # return csv.reader(handler)
        persons = csv.reader(handler)
        count = 0
        for person in persons:
            if count > 0:
                current_person = Person()
                current_person.person_id = str(person[0])
                current_person.fname_ru = person[1]
                current_person.lname_ru = person[2]
                current_person.fname_hy = person[3]
                current_person.lname_hy = person[4]
                current_person.fname_en = person[5]
                current_person.lname_en = person[6]
                current_person.save()
            count += 1
    print('Persons loaded to DB')


def populate_genres():
    with open(GENRES_CSV, 'r', encoding='utf-8') as handler:
        # return csv.reader(handler)
        genres = csv.reader(handler)
        count = 0
        for genre in genres:
            if count > 0:
                current_genre = Genre()
                current_genre.genre_id = str(genre[0])
                current_genre.name_ru = genre[1]
                current_genre.name_hy = genre[2]
                current_genre.name_en = genre[3]
                current_genre.save()
            count += 1
    print('Genres loaded to DB')


if __name__ == '__main__':
    # populate_persons()
    populate_genres()