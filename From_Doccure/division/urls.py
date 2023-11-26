from django.contrib import admin
# from . import category
from django.urls import path
from . import views as division


urlpatterns = [
    path('', division.Division_Name_panel,name='division'),
    path('store/', division.Division_Name_store,name='division_stor'),
    
    
]