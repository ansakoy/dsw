from django.urls import path

from . import views


app_name = 'works'
urlpatterns = [
    path('', views.home, name='home'),
    path('<int:pk>/', views.OpusView.as_view(), name='opus'),
    path('catalog/', views.CatalogView.as_view(), name='catalog'),
    path('bio/', views.bio, name='bio'),
    path('about/', views.about, name='about'),
    path('search/', views.search, name='search'),
    # path('category/', views.CategoryView.as_view(), name='category'),
]