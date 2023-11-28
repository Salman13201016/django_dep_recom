from django.contrib import admin
from django.urls import path
from . import views as hosp_map


urlpatterns = [  
    path('', hosp_map.hosp_map_panel,name='hospital_map'),
    path('hos_map_store/', hosp_map.hosp_map_store,name='hospital_map_store'),
    
]