from django.contrib import admin
from django.urls import path
from . import views as a_user
from django.contrib.auth import views as auth_views


urlpatterns = [  
    path('', a_user.auth_user_index,name='aut_index'),
    path('login/', a_user.login_auth_panel,name='aut_login'),
    path('signup/', a_user.signup_auth_panel,name='aut_signup'),
    # path('index_store/', user.index_store,name='index_store'),
    path('logout/', auth_views.LogoutView.as_view(next_page='aut_login'),name='aut_logout') 
    
]