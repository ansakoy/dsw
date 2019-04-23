from django.contrib import admin
from .models import Opus, Person, Genre, Band, Performance


class LyricsInline(admin.TabularInline):
    model = Opus.lyrics_by.through
    extra = 3
    verbose_name = "Lyrics by"


class LibrettoInline(admin.TabularInline):
    model = Opus.libretto_by.through
    extra = 3
    verbose_name = "Lybretto by"


class PersonAdmin(admin.ModelAdmin):
    fieldsets = [
        ('Meta', {
            'fields': ['person_id', ]
        }),
        ('Ru', {
            'fields': ['fname_ru', 'lname_ru',]
        }),
        ('Hy', {
            'fields': ['fname_hy', 'lname_hy',]
        }),
        ('En', {
            'fields': ['fname_en', 'lname_en',]
        }),
    ]
    search_fields = ('fname_ru', 'lname_ru')


class GenreAdmin(admin.ModelAdmin):
    fieldsets = [
        ('Meta', {
            'fields': ['genre_id',]
        }),
        ('Ru', {
            'fields': ['name_ru',]
        }),
        ('Hy', {
            'fields': ['name_hy',]
        }),
        ('En', {
            'fields': ['name_en',]
        }),
    ]
    search_fields = ('name_ru',)


class OpusAdmin(admin.ModelAdmin):
    fieldsets = [
        ('Meta', {
            'fields': ['opus_id', 'year', 'genre',]
        }),
        ('Ru', {
            'fields': ['title_ru', 'subtitle_ru', 'comment_ru']
        }),
        ('Hy', {
            'fields': ['title_hy', 'subtitle_hy', 'comment_hy']
        }),
        ('En', {
            'fields': ['title_en', 'subtitle_en', 'comment_en']
        }),
    ]
    # fields = ['title', 'text']
    inlines = [LyricsInline, LibrettoInline]
    list_display = ('title_ru', 'subtitle_ru', 'year')
    list_filter = ('year', 'genre')
    search_fields = ('title_ru', 'subtitle_ru', 'comment_ru')


class BandAdmin(admin.ModelAdmin):
    fieldsets = [
        ('Meta', {
            'fields': ['band_id', 'url']
        }),
        ('Ru', {
            'fields': ['type_ru', 'name_ru',]
        }),
        ('Hy', {
            'fields': ['type_hy', 'name_hy',]
        }),
        ('En', {
            'fields': ['type_en', 'name_en',]
        }),
    ]
    search_fields = ('fname_ru', 'lname_ru')


class PerformanceAdmin(admin.ModelAdmin):
    fieldsets = [
        ('Meta', {
            'fields': ['performance_id', 'video_url', 'audio_url', 'perform_date', 'conductor', 'band',]
        }),
        ('Ru', {
            'fields': ['name_ru',]
        }),
        ('Hy', {
            'fields': ['name_hy',]
        }),
        ('En', {
            'fields': ['name_en',]
        }),
    ]


admin.site.register(Opus, OpusAdmin)
admin.site.register(Person, PersonAdmin)
admin.site.register(Genre, GenreAdmin)
admin.site.register(Band, BandAdmin)
admin.site.register(Performance, PerformanceAdmin)