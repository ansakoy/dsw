from django.shortcuts import render
from django.views import generic
from django.core.paginator import Paginator

from .models import Opus


def home(request):
    return render(request, 'works/home.html')


def bio(request):
    return render(request, 'works/bio.html')


def about(request):
    return render(request, 'works/about.html')


class CatalogView(generic.ListView):
    template_name = 'works/catalog.html'
    context_object_name = 'works'

    def get_queryset(self):
        """Return posts ordered by year"""
        all_works = Opus.objects.order_by('-year')
        paginator = Paginator(all_works, 10)
        page = self.request.GET.get('page')
        works = paginator.get_page(page)
        return works


class OpusView(generic.DetailView):
    model = Opus
    template_name = 'works/opus.html'

    def get_queryset(self):
        return Opus.objects.all()
    def get_context_data(self, **kwargs):
        path = self.request.path
        opus_id = path.split('/')[-2]
        print(opus_id)
        category = Opus.objects.get(pk=opus_id).genre.genre_id
        related_works = Opus.objects.filter(genre__genre_id=category)
        context = super(OpusView, self).get_context_data(**kwargs)
        context['related_works'] = related_works
        return context