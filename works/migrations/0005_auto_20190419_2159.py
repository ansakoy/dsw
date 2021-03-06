# Generated by Django 2.2 on 2019-04-19 18:59

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('works', '0004_auto_20190419_2111'),
    ]

    operations = [
        migrations.AddField(
            model_name='opus',
            name='subtitle_en',
            field=models.CharField(max_length=500, null=True),
        ),
        migrations.AddField(
            model_name='opus',
            name='subtitle_hy',
            field=models.CharField(max_length=500, null=True),
        ),
        migrations.AddField(
            model_name='opus',
            name='subtitle_ru',
            field=models.CharField(max_length=500, null=True),
        ),
        migrations.AlterField(
            model_name='opus',
            name='comment_en',
            field=models.CharField(max_length=1000, null=True),
        ),
        migrations.AlterField(
            model_name='opus',
            name='comment_hy',
            field=models.CharField(max_length=1000, null=True),
        ),
        migrations.AlterField(
            model_name='opus',
            name='comment_ru',
            field=models.CharField(max_length=1000, null=True),
        ),
    ]
