from django.db import models


class Genre(models.Model):
    genre_id = models.CharField(max_length=10, primary_key=True, default='000')
    name_ru = models.CharField(max_length=250, null=True)
    name_hy = models.CharField(max_length=250, null=True)
    name_en = models.CharField(max_length=250, null=True)

    def __str__(self):
        return self.name_ru
    class Meta:
        app_label = 'works'


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
    title_hy = models.CharField(max_length=500, blank=True)
    title_en = models.CharField(max_length=500, blank=True)
    subtitle_ru = models.CharField(max_length=500, null=True, blank=True)
    subtitle_hy = models.CharField(max_length=500, null=True, blank=True)
    subtitle_en = models.CharField(max_length=500, null=True, blank=True)
    comment_ru = models.CharField(max_length=1000, null=True, blank=True)
    comment_hy = models.CharField(max_length=1000, null=True, blank=True)
    comment_en = models.CharField(max_length=1000, null=True, blank=True)
    year = models.CharField(max_length=4, null=True)
    # performances is declared as a reverse relation from Performance
    # performances = OneToManyField(Performance, verbose_name="Исполнения")
    genre = models.ForeignKey(
        Genre,
        on_delete=models.PROTECT,
        related_name="works",
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

    class Meta:
        verbose_name_plural = "opera"

    def __str__(self):
        return "{}: {} - {}".format(self.opus_id, self.title_ru, self.title_hy)


class Band(models.Model):
    band_id = models.CharField(max_length=10, primary_key=True, default='00000')
    url = models.CharField(max_length=1000, null=True)
    type_ru = models.CharField(max_length=100, null=True)
    name_ru = models.CharField(max_length=100, null=True)
    type_hy = models.CharField(max_length=100, null=True)
    name_hy = models.CharField(max_length=100, null=True)
    type_en = models.CharField(max_length=100, null=True)
    name_en = models.CharField(max_length=100, null=True)
    # performances is declared as a reverse relation from Performance
    # performances = OneToManyField(Performance, verbose_name="Исполнения")

    def __str__(self):
        return '{} "{}"'.format(self.type_ru, self.name_ru)


class Performance(models.Model):
    performance_id = models.CharField(max_length=10, primary_key=True, default='0000')
    opus = models.ForeignKey(
        Opus,
        on_delete=models.CASCADE,
        related_name='performances',
        verbose_name="Сочинение",
        null=True,
        blank=True
    )
    name_ru = models.CharField(max_length=1000, null=True, blank=True)
    name_hy = models.CharField(max_length=1000, null=True, blank=True)
    name_en = models.CharField(max_length=1000, null=True, blank=True)
    video_url = models.CharField(max_length=1000, null=True, blank=True)
    audio_url = models.CharField(max_length=1000, null=True, blank=True)
    perform_date = models.DateField(null=True, blank=True)
    conductor = models.ForeignKey(
        Person,
        on_delete=models.SET_NULL,
        related_name='performances',
        verbose_name="Дирижер",
        null=True,
        blank=True
    )
    band = models.ForeignKey(
        'Band',
        on_delete=models.SET_NULL,
        related_name='performances',
        verbose_name="Исполнительский коллектив",
        null=True,
        blank=True
    )
    # location = models.CharField(max_length=500, null=True)
    # performers is declared as a reverse relation from Performer
    # performers = OneToManyField(Performer, verbose_name="Исполнители")

    def __str__(self):
        return "{}: {} - {}".format(self.performance_id, self.opus, self.name_ru)


class Performer(models.Model):
    performer = models.ForeignKey(
        Person,
        on_delete=models.CASCADE,
        verbose_name="Исполнитель"
    )
    role_ru = models.CharField(max_length=250)
    role_hy = models.CharField(max_length=250, blank=True)
    role_en = models.CharField(max_length=250, blank=True)
    performance = models.ForeignKey(
        Performance,
        on_delete=models.SET_NULL,
        related_name='performers',
        verbose_name="Исполнение",
        null=True
    )

    def __str__(self):
        return "{}".format(self.performer)


class About(models.Model):
    section_code = models.CharField(max_length=10)
    section_name = models.CharField(max_length=40, null=True, blank=True)
    text = models.TextField(null=True, blank=True)
    language = models.CharField(max_length=2)

    class Meta:
        verbose_name_plural = "About page texts"

    def __str__(self):
        return "{} - {}".format(self.language, self.section_code)


class Bio(models.Model):
    page_title = models.CharField(max_length=200, null=True, blank=True)
    text = models.TextField(null=True, blank=True)
    language = models.CharField(max_length=2)

    class Meta:
        verbose_name_plural = "Bio page texts"

    def __str__(self):
        return self.language


class Home(models.Model):
    page_title = models.CharField(max_length=200, null=True, blank=True)
    text = models.TextField(null=True, blank=True)
    language = models.CharField(max_length=2)

    class Meta:
        verbose_name_plural = "Home page texts"

    def __str__(self):
        return self.language


