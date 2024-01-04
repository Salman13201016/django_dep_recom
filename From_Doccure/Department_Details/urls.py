from django.contrib import admin
from django.urls import path
from . import views as dep_details


urlpatterns = [  
    path('', dep_details.dep_det_panel,name='dep_details'),
    path('dep_det_store/', dep_details.depart_det_store,name='dep_details_store'),
    
    path('edit_depart_details/<int:id>', dep_details.edit_department_details,name='edit_depart_details'),
    path('edit_depart_details/update/', dep_details.update_depart_details,name='update_depart_details'),
    path('edit_depart/delete/<int:id>', dep_details.delete_depart_details,name='delete_depart_details'),
    
]