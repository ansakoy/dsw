from django.contrib import admin
from .models import Opus


class LyricsInline(admin.TabularInline):
    model = Opus.lyrics_by.through
    extra = 3


class LibrettoInline(admin.TabularInline):
    model = Opus.libretto_by.through
    extra = 3


class OpusAdmin(admin.ModelAdmin):
    fieldsets = [
        ('Meta', {
            'fields': ['opus_id', 'year']
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
    # inlines = [TagInline]
    # list_display = ('title', 'pub_date_time')
    # list_filter = 'pub_date_time',
    # search_fields = 'text',


admin.site.register(Opus, OpusAdmin)
# admin.site.register(Tag, TagAdmin)
