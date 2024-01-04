from django.contrib import admin
from django.urls import path
from . import views as symptom


urlpatterns = [  
    path('', symptom.symptom_panel,name='sym_panel'),
    path('symptom_store/', symptom.symptom_store,name='symptom_store'),
    
    path('edit_symptom/<int:id>', symptom.edit_symptom,name='edit_symptom'),
    path('symptom/update/', symptom.update_symptom,name='update_symptom'),
    path('edit_symptom/delete/<int:id>', symptom.delete_symptom,name='delete_symptom'),
    
]