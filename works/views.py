import random

from django.shortcuts import render
from django.views import generic
from django.core.paginator import Paginator
from django.contrib.postgres.search import SearchQuery, SearchRank, SearchVector
from django.http import HttpResponse

from .models import (Opus,
                     Genre,
                     Performance,
                     Home,
                     Bio,
                     About,)


CAT_INFO = 'cat_info'
YEAR_INFO = 'year_info'
PERFORM_INFO = 'perform_info'
SEARCH_INFO = 'search_info'
CATEGORIES = 'categories'
YEARS = 'years'
CURRENT = 'current'
ALL_PERFORM = 'all_perform'
TEXT_CONTENT = 'text_content'

def home(request):
    '''
    Главная страница
    '''
    performances = Performance.objects.filter(video_url__isnull=False).exclude(video_url="")
    performance_ids = [performance.performance_id for performance in performances]
    current = Performance.objects.get(pk=random.choice(performance_ids))
    path = request.path
    if '/ru/' in path:
        text = Home.objects.get(language='ru')
    elif '/hy/' in path:
        try:
            text = Home.objects.get(language='hy')
        except Home.DoesNotExist:
            text = Home.objects.get(language='ru')
    else:
        try:
            text = Home.objects.get(language='en')
        except Home.DoesNotExist:
            text = Home.objects.get(language='ru')

    def chunks(l, n):
        """Yield successive n-sized chunks from l."""
        for i in range(0, len(l), n):
            yield l[i:i + n]

    perform_chunks = list(chunks(performances, 4))
    print(len(perform_chunks))

    context = {
        CURRENT: current,
        ALL_PERFORM: perform_chunks,
        TEXT_CONTENT: text
    }

    return render(request, 'works/home.html', context)


def bio(request):
    '''
    Ознакомительная страница о творчестве
    '''
    path = request.path
    if '/ru/' in path:
        text = Bio.objects.get(language='ru')
    elif '/hy/' in path:
        try:
            text = Bio.objects.get(language='hy')
        except Bio.DoesNotExist:
            text = Bio.objects.get(language='ru')
    else:
        try:
            text = Bio.objects.get(language='en')
        except Bio.DoesNotExist:
            text = Bio.objects.get(language='ru')
    return render(request, 'works/bio.html', {TEXT_CONTENT: text})


def about(request):
    '''
    Страница о проекте
    '''
    path = request.path
    if '/ru/' in path:
        text = About.objects.filter(language='ru')
    elif '/hy/' in path:
        text = About.objects.filter(language='hy')
    else:
        text = About.objects.filter(language='en')
    context = {
        'license': text.get(section_code='license'),
        'privacy': text.get(section_code='privacy'),
        'sections': text.get(section_code='sections'),
        'general': text.get(section_code='general'),
        'contacts': text.get(section_code='contacts')
    }
    return render(request, 'works/about.html', context)


def get_context_for_filters(request):
    '''
    Сгенерировать контекстные данные для фильтров
    :param request:
    :return: dict
    '''
    output = {
        YEARS: list(),
        CATEGORIES: None,
        PERFORM_INFO: None,
        YEAR_INFO: None,
        CAT_INFO: None,
        SEARCH_INFO: None
    }
    path = request.path
    category_id = request.GET.get('category')
    year = request.GET.get('year')
    only_perform = request.GET.get('only_perform')
    keys = request.GET.get('q')
    data = Opus.objects.all()
    if category_id:
        output[CAT_INFO] = category_id
        data = data.filter(genre__genre_id=category_id)
    if year:
        output[YEAR_INFO] = year
        data = data.filter(year=year)
    if only_perform and only_perform == '1':
        output[PERFORM_INFO] = '1'
        data = data.filter(performances__isnull=False)
    if keys:
        print(keys)
        output[SEARCH_INFO] = keys
        vector = SearchVector('title_ru', 'title_hy', 'title_en',
                              'subtitle_ru', 'subtitle_hy', 'subtitle_en',
                              'comment_ru', 'comment_hy', 'comment_en', )
        query = SearchQuery(keys)
        data = data.annotate(rank=SearchRank(vector, query)).filter(rank__gt=0).order_by('-rank')
    if '/ru/' in path:
        categories = Genre.objects.filter(pk__in=[entry.genre.genre_id for entry in data]).order_by('name_ru')
        # categories = Genre.objects.order_by('name_ru')
    elif '/hy/' in path:
        categories = Genre.objects.filter(pk__in=[entry.genre.genre_id for entry in data]).order_by('name_hy')
        # categories = Genre.objects.order_by('name_hy')
    else:
        categories = Genre.objects.filter(pk__in=[entry.genre.genre_id for entry in data]).order_by('name_en')
        # categories = Genre.objects.order_by('name_en')

    years = [entry['year'] for entry in data.order_by('year').values('year').distinct()]
    # years = [entry['year'] for entry in Opus.objects.order_by('year').values('year').distinct()]
    output[CATEGORIES] = categories
    output[YEARS] = years
    return output


class CatalogView(generic.ListView):
    template_name = 'works/catalog.html'
    context_object_name = 'works'

    def get_queryset(self):
        """Return posts ordered by year"""
        all_works = Opus.objects.order_by('-year')

        category_id = self.request.GET.get('category')
        year = self.request.GET.get('year')
        only_perform = self.request.GET.get('only_perform')
        if category_id and category_id != "":
            all_works = all_works.filter(genre__genre_id=category_id)
        if year and year != "":
            all_works = all_works.filter(year=year)
        if only_perform and only_perform != "":
            performances = [entry['opus__opus_id'] for entry in Performance.objects.values('opus__opus_id').distinct()]
            all_works = all_works.filter(opus_id__in=performances)

        key_expression = self.request.GET.get('q')
        if key_expression:
            vector = SearchVector('title_ru', 'title_hy', 'title_en',
                                  'subtitle_ru', 'subtitle_hy', 'subtitle_en',
                                  'comment_ru', 'comment_hy', 'comment_en', )
            query = SearchQuery(key_expression)
            all_works = all_works.annotate(rank=SearchRank(vector, query)).filter(rank__gt=0).order_by('-rank')

        paginator = Paginator(all_works, 10)
        page = self.request.GET.get('page')
        works = paginator.get_page(page)
        return works

    def get_context_data(self, **kwargs):
        context = super(CatalogView, self).get_context_data(**kwargs)
        additional_context = get_context_for_filters(self.request)
        context[YEARS] = additional_context[YEARS]
        context[CATEGORIES] = additional_context[CATEGORIES]
        if additional_context.get(CAT_INFO):
            context[CAT_INFO] = additional_context[CAT_INFO]
        if additional_context.get(YEAR_INFO):
            context[YEAR_INFO] = additional_context[YEAR_INFO]
        if additional_context.get(PERFORM_INFO):
            context[PERFORM_INFO] = additional_context[PERFORM_INFO]
        if additional_context.get(SEARCH_INFO):
            context[SEARCH_INFO] = additional_context[SEARCH_INFO]
        # category_id = self.request.GET.get('category')
        # if category_id and category_id != "":
        #     context['cat_info'] = Genre.objects.get(pk=self.request.GET.get('category'))
        # year = self.request.GET.get('year')
        # if year and year != "":
        #     context['year_info'] = year
        # only_perform = self.request.GET.get('only_perform')
        # if only_perform == "1":
        #     context['perform_info'] = "1"

        return context


class OpusView(generic.DetailView):
    model = Opus
    template_name = 'works/opus.html'

    def get_queryset(self):
        return Opus.objects.all()

    def get_context_data(self, **kwargs):
        path = self.request.path
        opus_id = path.split('/')[-2]
        # print(opus_id)
        category = Opus.objects.get(pk=opus_id).genre.genre_id
        related_works = Opus.objects.filter(genre__genre_id=category).exclude(pk=opus_id)
        context = super(OpusView, self).get_context_data(**kwargs)
        context['related_works'] = related_works
        return context






# def search(request):
#     key_expression = request.GET['q']
#     try:
#         vector = SearchVector('title_ru', 'title_hy', 'title_en',
#                               'subtitle_ru', 'subtitle_hy', 'subtitle_en',
#                               'comment_ru', 'comment_hy', 'comment_en', )
#         query = SearchQuery(key_expression)
#         results = Opus.objects.annotate(rank=SearchRank(vector, query)).filter(rank__gt=0).order_by('-rank')
#
#     except Exception as e:
#         results = None
#     paginator = Paginator(results, 10)
#     page = request.GET.get('page')
#     results_pages = paginator.get_page(page)
#     context = {'works': results_pages,
#                'search_key': key_expression}
#     additional_context = get_context_for_filters(request)
#     context[YEARS] = additional_context[YEARS]
#     context[CATEGORIES] = additional_context[CATEGORIES]
#     if additional_context.get(CAT_INFO):
#         context[CAT_INFO] = additional_context[CAT_INFO]
#     if additional_context.get(YEAR_INFO):
#         context[YEAR_INFO] = additional_context[YEAR_INFO]
#     if additional_context.get(PERFORM_INFO):
#         context[PERFORM_INFO] = additional_context[PERFORM_INFO]
#     if additional_context.get(SEARCH_INFO):
#         context[SEARCH_INFO] = additional_context[SEARCH_INFO]
#     return render(request, 'works/search.html', context)
