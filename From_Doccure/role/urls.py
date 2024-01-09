from django.contrib import admin
# from . import category
from django.urls import path
from . import views as role

    
urlpatterns = [  
    path('', role.role_panel,name='role'),
    path('store/', role.role_store,name='role_store'),
    path('store/edit/<int:id>', role.edit_role_name,name='edit_role'),
    path('role/update/', role.role_update,name='role_update'),
    path('role/delete/<int:id>', role.role_delete,name='delete_role'),
]