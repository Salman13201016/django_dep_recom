from django.contrib import admin
# from . import category
from django.urls import path
from . import views as hospital


urlpatterns = [
    path('', hospital.Hospital_Name_panel,name='hospital'),
    path('store/', hospital.Hospital_Name_store,name='hospital_store'),
    path('index/', hospital.hospitals_index_page,name='hospital_details'),
    path('symptom_page/', hospital.hospitals_symptom_page,name='symptom_page'),
    path('symptom_history/', hospital.hospitals_symptom_history,name='symptom_history'),
    # path('common/', hospital.hospitals_common_page,name='common'),
    
    
]