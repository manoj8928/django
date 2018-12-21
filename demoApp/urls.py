from django.urls import path
from . import views

urlpatterns = [
    path('', views.index ,  name='index'),
    path('htmlPage', views.htmlPage, name='htmlPage')
]