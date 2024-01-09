from django.contrib import admin
# from . import category
from django.urls import path
from . import views as role_user

    
urlpatterns = [  
    path('', role_user.user_role_panel,name='user_role'),
    path('user_store/', role_user.user_role_store,name='user_role_store'),
    # path('user_store/edit/<int:id>', role_user.edit_user_role,name='edit_user_role'),
    # path('user_role/update/', role_user.user_role_update,name='user_role_update'),
    path('user_role/delete/<int:id>', role_user.user_role_delete,name='user_role_delete'),
]