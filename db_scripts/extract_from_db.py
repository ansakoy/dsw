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

from works.models import Opus


def make_table_md():
    with open('table_md.txt', 'w', encoding='utf-8') as handler:
        header = '|№|Տարի|Русский|Հայերեն|\n'
        handler.write(header)
        separator_line = '|---|---|---|---|\n'
        handler.write(separator_line)
        works = Opus.objects.all()
        for work in works:
            ru_version = '**{}**'.format(work.title_ru)
            if work.subtitle_ru:
                ru_version += '<br>{}'.format(work.subtitle_ru)
            if work.comment_ru:
                ru_version += '<br>{}'.format(work.comment_ru)
            if work.lyrics_by.count():
                ru_version += '<br><br>Слова:<ul>'
                for entry in work.lyrics_by.all():
                    fname = entry.fname_ru
                    lname = ''
                    if entry.lname_ru:
                        lname = ' ' + entry.lname_ru
                    ru_version += '<li>{}</li>'.format(fname + lname)
                ru_version += '</ul>'
            if work.libretto_by.count():
                ru_version += '<br><br>Либретто:<ul>'
                for entry in work.libretto_by.all():
                    fname = entry.fname_ru
                    lname = ''
                    if entry.lname_ru:
                        lname = ' ' + entry.lname_ru
                    ru_version += '<li>{}</li>'.format(fname + lname)
                ru_version += '</ul>'
            ru_version += '<br>Категория: {}'.format(work.genre.name_ru)
            hy_version = '**{}**'.format(work.title_hy)
            if work.subtitle_hy:
                hy_version += '<br>{}'.format(work.subtitle_hy)
            if work.comment_ru:
                hy_version += '<br>{}'.format(work.comment_hy)
            if work.lyrics_by.count():
                hy_version += '<br><br>Խոսք:<ul>'
                for entry in work.lyrics_by.all():
                    fname = entry.fname_hy
                    lname = ''
                    if entry.lname_hy:
                        lname = ' ' + entry.lname_hy
                    hy_version += '<li>{}</li>'.format(fname + lname)
                hy_version += '</ul>'
            if work.libretto_by.count():
                hy_version += '<br><br>Լիբրետո:<ul>'
                for entry in work.libretto_by.all():
                    fname = entry.fname_hy
                    lname = ''
                    if entry.lname_hy:
                        lname = ' ' + entry.lname_hy
                    hy_version += '<li>{}</li>'.format(fname + lname)
                hy_version += '</ul>'
            hy_version += '<br>Կատեգորիա: {}'.format(work.genre.name_hy)
            # print(header)
            # print(separator_line)
            row = ('|{}|{}|{}|{}|\n'.format(work.opus_id, work.year, ru_version, hy_version))
            print(row)
            handler.write(row)


if __name__ == '__main__':
    make_table_md()