from django.urls import path, include

from . import views


app_name = 'works'
urlpatterns = [
    path('', views.home, name='home'),
    path('catalog/', views.CatalogView.as_view(), name='catalog'),
    path('i18n/', include('django.conf.urls.i18n')),

]