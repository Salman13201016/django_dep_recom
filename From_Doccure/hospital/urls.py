from django.contrib import admin
# from . import category
from django.urls import path
from . import views as hospital


urlpatterns = [
    path('', hospital.Hospital_Name_panel,name='hospital'),
    path('store/', hospital.Hospital_Name_store,name='hospital_store'),
    
    
]