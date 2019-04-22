"""
Модуль собирает из ЕГРЮЛ данные по НКО (через ОПФ и ОГРН Минюста)
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


def populate_band():
    with open(BAND_CSV, 'r', encoding='utf-8') as handler:
        bands = csv.reader(handler)
        count = 0
        for band in bands:
            if count > 0:
                current_band = Band()
                current_band.band_id = str(band[0])
                current_band.url = band[1]
                current_band.type_ru = band[2]
                current_band.name_ru = band[3]
                current_band.type_hy = band[4]
                current_band.name_hy = band[5]
                current_band.type_en = band[6]
                current_band.name_en = band[7]
                current_band.save()
            count += 1
    print('Bands loaded to DB')


def populate_opus():
    with open(OPUS_CSV, 'r', encoding='utf-8') as handler:
        opera = csv.reader(handler)
        count = 0
        for opus in opera:
            if count > 0:
                current_opus = Opus()
                current_opus.opus_id = str(opus[0])
                current_opus.year = opus[1]
                current_opus.save()
                libretto_ids = opus[2].split(',')
                if libretto_ids[0] != '':
                    for libretto_id in libretto_ids:
                        try:
                            current_opus.libretto_by.add(Person.objects.get(pk=libretto_id))
                        except Person.DoesNotExist:
                            print('Opus {}: Person {} is not in DB'.format(opus[0], libretto_id))
                lyrics_ids = opus[3].split(',')
                if lyrics_ids[0] != '':
                    for lyrics_id in lyrics_ids:
                        try:
                            current_opus.lyrics_by.add(Person.objects.get(pk=lyrics_id))
                        except Person.DoesNotExist:
                            print('Opus {}: Person {} is not in DB'.format(opus[0], lyrics_id))
                try:
                    current_opus.genre = Genre.objects.get(pk=opus[4])
                except Genre.DoesNotExist:
                    print('Opus {}: Genre {} is not in DB'.format(opus[0], opus[4]))
                current_opus.title_ru = opus[5]
                current_opus.subtitle_ru = opus[6]
                current_opus.comment_ru = opus[9]
                current_opus.title_hy = opus[11]
                current_opus.subtitle_hy = opus[12]
                current_opus.comment_hy = opus[15]
                current_opus.title_en = opus[17]
                current_opus.subtitle_en = opus[18]
                current_opus.comment_en = opus[21]
                current_opus.save()
            count += 1
    print('Works loaded to DB')
    
    
def populate_performance():
    with open(PERFORMANCE_CSV, 'r', encoding='utf-8') as handler:
        performances = csv.reader(handler)
        count = 0
        for performance in performances:
            if count > 0 and len(performance[0]):
                current_performance = Performance()
                current_performance.performance_id = str(performance[1])
                current_performance.url = performance[1]
                current_performance.name_ru = performance[2]
                current_performance.name_hy = performance[3]
                current_performance.name_en = performance[4]
                current_performance.video_url = performance[6]
                current_performance.audio_url = performance[7]
                current_performance.save()
                try:
                    current_performance.conductor = Person.objects.get(pk=performance[8])
                except Person.DoesNotExist:
                    print('Performance {}: Person {} is not in DB'.format(performance[1], performance[8]))
                try:
                    current_performance.band = Band.objects.get(pk=performance[9])
                except Band.DoesNotExist:
                    print('Performance {}: Band {} is not in DB'.format(performance[1], performance[9]))
                try:
                    current_performance.opus = Opus.objects.get(pk=performance[0])
                except Band.DoesNotExist:
                    print('Performance {}: Opus {} is not in DB'.format(performance[1], performance[0]))
                current_performance.save()
            count += 1
    print('Performances loaded to DB')


if __name__ == '__main__':
    # populate_persons()
    # populate_genres()
    # populate_band()
    # populate_opus()
    populate_performance()