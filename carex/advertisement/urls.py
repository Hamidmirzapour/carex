from django.urls import path
from . import views

app_name = 'advertisement'
urlpatterns = [
    path('', views.advertisements, name = 'advertisements'),
    path('<int:pk>/', views.detail, name = 'detail'),
    path('create/', views.create, name = 'create'),
    path('edit/<int:pk>/', views.edit, name = 'edit'),
    path('delete/<int:pk>/', views.delete, name = 'delete'),
        
]