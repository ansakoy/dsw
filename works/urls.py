from django.urls import path

from . import views


app_name = 'works'
urlpatterns = [
    path('', views.home, name='home'),
    path('catalog/<int:pk>/', views.OpusView.as_view(), name='opus'),
    path('catalog/', views.CatalogView.as_view(), name='catalog'),
    path('bio/', views.bio, name='bio'),
    path('about/', views.about, name='about'),
    # path('500/', views.test_500_response, name='test500'),
    # path('search/', views.search, name='search'),
    # path('category/', views.CategoryView.as_view(), name='category'),
]
