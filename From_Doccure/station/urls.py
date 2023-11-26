from django.contrib import admin
from django.urls import path
from . import views as station


urlpatterns = [  
    path('', station.station_panel,name='station'),
    path('station_store/', station.station_store,name='station_store'),
    
]