from django.contrib import admin
from django.urls import path
from . import views as station


urlpatterns = [  
    path('', station.station_panel,name='station'),
    path('station_store/', station.station_store,name='station_store'),
    
    path('edit_station/<int:id>', station.edit_station,name='edit_station'),
    path('station/update/', station.update_edit_station,name='update_station'),
    path('edit_station/delete/<int:id>', station.delete_station,name='delete_station'),
]