from django.db import models


class Genre(models.Model):
    name_ru = models.CharField(max_length=250, null=True)
    name_hy = models.CharField(max_length=250, null=True)
    name_en = models.CharField(max_length=250, null=True)

    def __str__(self):
        return self.name_ru


class Person(models.Model):
    person_id = models.CharField(max_length=10, primary_key=True)
    fname_ru = models.CharField(max_length=250)
    lname_ru = models.CharField(max_length=250, null=True)
    fname_hy = models.CharField(max_length=250, null=True)
    lname_hy = models.CharField(max_length=250, null=True)
    fname_en = models.CharField(max_length=250, null=True)
    lname_en = models.CharField(max_length=250, null=True)

    def __str__(self):
        return "{} {}".format(self.fname_ru, self.lname_ru)


class Opus(models.Model):
    opus_id = models.CharField(max_length=10, primary_key=True)
    title_ru = models.CharField(max_length=500)
    title_hy = models.CharField(max_length=500)
    title_en = models.CharField(max_length=500)
    comment_ru = models.CharField(max_length=1000)
    comment_hy = models.CharField(max_length=1000)
    comment_en = models.CharField(max_length=1000)
    year = models.CharField(max_length=4, null=True)
    # performances is declared as a reverse relation from Performance
    # performances = OneToManyField(Performance, verbose_name="Исполнения")
    genre = models.ForeignKey(
        Genre,
        on_delete=models.PROTECT,
        verbose_name="Жанр",
        null=True
    )
    libretto_by = models.ManyToManyField(
        Person,
        related_name="libr_works",
        verbose_name="Авторы либретто",
    )
    lyrics_by = models.ManyToManyField(
        Person,
        related_name="lyr_works",
        verbose_name="Авторы текста",
    )

    def __str__(self):
        return "{} - {}".format(self.title_ru, self.title_hy)


class Performance(models.Model):
    opus = models.ForeignKey(
        Opus,
        on_delete=models.CASCADE,
        related_name='performances',
        verbose_name="Сочинение",
    )
    performance_url = models.CharField(max_length=1000)
    perform_date = models.DateField(null=True)
    location = models.CharField(max_length=500, null=True)
    # performers is declared as a reverse relation from Performer
    # performers = OneToManyField(Performer, verbose_name="Исполнители")

    def __str__(self):
        return "{} - {}".format(self.perform_date, self.opus)


class Performer(models.Model):
    performer = models.ForeignKey(
        Person,
        on_delete=models.CASCADE,
        verbose_name="Исполнитель"
    )
    role = models.CharField(max_length=250)
    performance = models.ForeignKey(
        Performance,
        on_delete=models.SET_NULL,
        related_name='performers',
        verbose_name="Исполнение",
    )

    def __str__(self):
        return "{}".format(self.performer)