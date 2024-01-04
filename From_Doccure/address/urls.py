from django.contrib import admin
from django.urls import path
from . import views as address


urlpatterns = [  
    # path('', address.name_panel,name='addr'),
    path('', address.address_panel,name='address'),
    path('station_store/', address.address_store,name='address_store'),
    
    path('edit_address/<int:id>', address.edit_hospital_address,name='edit_address'),
    path('address/update/', address.update_hospital_address,name='update_address'),
    path('edit_address/delete/<int:id>', address.delete_hospital_address,name='delete_address'),
    
]