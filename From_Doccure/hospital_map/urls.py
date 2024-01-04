from django.contrib import admin
from django.urls import path
from . import views as hosp_map


urlpatterns = [  
    path('', hosp_map.hosp_map_panel,name='hospital_map'),
    path('hos_map_store/', hosp_map.hosp_map_store,name='hospital_map_store'),
    
    path('edit_hospital_map/<int:id>', hosp_map.edit_hospital_map,name='edit_hospital_map'),
    path('hospital_map/update/', hosp_map.update_hospital_map,name='update_hospital_map'),
    path('hospital_map/delete/<int:id>', hosp_map.delete_hospital_map,name='delete_hospital_map'),
    
]