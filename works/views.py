from django.shortcuts import render
from django.views import generic
from django.core.paginator import Paginator

from .models import Opus


def home(request):
    return render(request, 'works/home.html')


class CatalogView(generic.ListView):
    template_name = 'works/catalog.html'
    context_object_name = 'works'

    def get_queryset(self):
        """Return posts ordered by year"""
        all_works = Opus.objects.order_by('-year')
        paginator = Paginator(all_works, 5)
        page = self.request.GET.get('page')
        works = paginator.get_page(page)
        return works
