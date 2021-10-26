from django.urls import path, include
from django.contrib.auth import views as auth_views
from . import views

app_name = 'pages'
urlpatterns = [
    path('', views.index, name = 'index'),
    path('mainpage', views.main, name = 'main'),
    path('our-team', views.team, name = 'team'),
    path('gallery', views.gallery, name = 'gallery'),
    path('contact-us', views.contact, name = 'contact'),
]