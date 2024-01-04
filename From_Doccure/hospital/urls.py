from django.contrib import admin
# from . import category
from django.urls import path
from . import views as hospital


urlpatterns = [
    path('', hospital.Hospital_Name_panel,name='hospital'),
    path('store/', hospital.Hospital_Name_store,name='hospital_store'),
    path('index/', hospital.hospitals_index_page,name='hospital_details'),
    
    path('edit_hospital/<int:id>', hospital.edit_hospital,name='edit_hospital'),
    path('hospital/update/', hospital.update_edit_hospital,name='update_hospital'),
    path('edit_hospital/delete/<int:id>', hospital.delete_hospital,name='delete_hospital'),
    
    # path('common/', hospital.hospitals_common_page,name='common'),
    
    
]