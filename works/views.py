from django.shortcuts import render
from django.views import generic
from django.core.paginator import Paginator

from .models import Opus, Genre, Performance


def home(request):
    return render(request, 'works/home.html')


def bio(request):
    return render(request, 'works/bio.html')


def about(request):
    return render(request, 'works/about.html')


def get_context_for_filters(request):
    path = request.path
    if '/ru/' in path:
        categories = Genre.objects.order_by('name_ru')
    elif '/hy/' in path:
        categories = Genre.objects.order_by('name_hy')
    else:
        categories = Genre.objects.order_by('name_en')

    years = [entry['year'] for entry in Opus.objects.order_by('year').values('year').distinct()]
    context = {'years': years,
               'categories': categories}
    return context


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


        paginator = Paginator(all_works, 10)
        page = self.request.GET.get('page')
        works = paginator.get_page(page)
        return works

    def get_context_data(self, **kwargs):
        context = super(CatalogView, self).get_context_data(**kwargs)
        additional_context = get_context_for_filters(self.request)
        context['years'] = additional_context['years']
        context['categories'] = additional_context['categories']
        category_id = self.request.GET.get('category')
        if category_id and category_id != "":
            context['cat_info'] = Genre.objects.get(pk=self.request.GET.get('category'))
        year = self.request.GET.get('year')
        if year and year != "":
            context['year_info'] = year
        only_perform = self.request.GET.get('only_perform')
        if only_perform == "1":
            context['perform_info'] = "1"
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


# class CategoryView(generic.ListView):
#     template_name = 'works/category.html'
#     context_object_name = 'works'
#
#     def get_queryset(self):
#         """Return posts ordered by year"""
#         category_id = self.request.GET.get('selectedCategory')
#         # print(category_id)
#         category_works = Opus.objects.filter(genre__genre_id=category_id).order_by('-year')
#         paginator = Paginator(category_works, 10)
#         page = self.request.GET.get('page')
#         works = paginator.get_page(page)
#         return works
#
#     def get_context_data(self, **kwargs):
#         context = super(CategoryView, self).get_context_data(**kwargs)
#         additional_context = get_context_for_filters(self.request)
#         context['years'] = additional_context['years']
#         context['categories'] = additional_context['categories']
#         context['cat_info'] = Genre.objects.get(pk=self.request.GET.get('selectedCategory'))
#         return context


