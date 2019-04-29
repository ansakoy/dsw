from django.urls import path

from . import views


app_name = 'works'
urlpatterns = [
    path('', views.home, name='home'),
    path('catalog/', views.CatalogView.as_view(), name='catalog'),

]