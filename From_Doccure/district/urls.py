from django.contrib import admin
# from . import category
from django.urls import path
from . import views as division


urlpatterns = [
    path('', division.district_name,name='district'),
    path('store/', division.district_name_store,name='district_stor'),
    
    
]