from django.contrib import admin
# from . import category
from django.urls import path
from . import views as district


urlpatterns = [
    path('', district.district_name,name='district'),
    path('store/', district.district_name_store,name='district_stor'),
    
    path('edit_district/<int:id>', district.edit_district,name='edit_district'),
    path('district/update/', district.update_edit_district,name='update_district'),
    path('edit_district/delete/<int:id>', district.delete_district,name='delete_district'),
    
    
]