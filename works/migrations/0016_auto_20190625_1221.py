# Generated by Django 2.0.2 on 2019-06-25 09:21

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('works', '0015_auto_20190529_1308'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='bio',
            name='page_title',
        ),
        migrations.AddField(
            model_name='bio',
            name='section_code',
            field=models.CharField(max_length=10, null=True),
        ),
        migrations.AddField(
            model_name='bio',
            name='section_name',
            field=models.CharField(blank=True, max_length=40, null=True),
        ),
    ]