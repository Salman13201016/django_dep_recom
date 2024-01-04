from django.contrib import admin
# from . import category
from django.urls import path
from . import views as division


urlpatterns = [
    path('', division.Division_Name_panel,name='division'),
    path('store/', division.Division_Name_store,name='division_stor'),
    
    path('edit_division/<int:id>', division.edit_division,name='edit_division'),
    path('division/update/', division.update_edit_division,name='update_division'),
    path('edit_division/delete/<int:id>', division.delete_division,name='delete_division'),
    
    
]