import datetime
import json
import os

from dsw.dsw.private import PRIVATE
from django.core import serializers
from dsw.dsw.settings import BASE_DIR

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

from works.models import (Genre,
                          Person,
                          Opus,
                          Band,
                          Performance,
                          Performer)


BACKUPS_PATH = os.path.join(BASE_DIR, 'backups')


def serialize_table(model, path):
    model_name = model.__name__
    print('Processing {}'.format(model_name))
    data = json.loads(serializers.serialize("json", model.objects.all()))
    print('Found {} entries'.format(len(data)))
    fname = '{}_table.json'.format(model_name.lower())
    with open(os.path.join(path, fname), 'w', encoding='utf-8') as handler:
        json.dump(data, handler, ensure_ascii=False, indent=2)


def main():
    tstamp = str(datetime.datetime.now()).replace('-', '').replace(' ', '_').replace(':', '-').split('.')[0]
    current_backup_name = 'backup_{}'.format(tstamp)
    os.makedirs(os.path.join(BACKUPS_PATH, current_backup_name))
    for model in [Genre, Person, Opus, Band, Performance, Performer]:
        serialize_table(model, os.path.join(BACKUPS_PATH, current_backup_name))


if __name__ == '__main__':
    main()