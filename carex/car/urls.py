from django.urls import path 
from . import views

app_name = 'car'
urlpatterns = [
    path('', views.carList, name = 'carList'),
    path('<int:pk>/', views.carDetail, name = 'carDetail'),
    path('<int:pk>/reserve/', views.reserve, name = 'reserve'),
]