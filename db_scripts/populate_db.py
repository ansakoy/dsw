"""
Модуль собирает из ЕГРЮЛ данные по НКО (через ОПФ и ОГРН Минюста)
"""

import csv

from dsw.private import PRIVATE


PERSONS_CSV = r'C:\Users\USER\Documents\PythonProjects\ds_website\Sources\catalog_persons_v1.csv'


# Инициализация
from django.conf import settings
from django.core.wsgi import get_wsgi_application
try:
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
                       INSTALLED_APPS=('egrul',))
    get_wsgi_application()

    from works.models import Person, Opus, Genre, Performance, Performer

except ImportError:
    print('CANNOT IMPORT WORKS')


def load_csv(source):
    with open(source, 'r', encoding='utf-8') as handler:
        return csv.reader(handler)


def populate_persons():
    persons = load_csv(PERSONS_CSV)
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


if __name__ == '__main__':
    populate_persons()