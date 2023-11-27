from django.shortcuts import render,redirect
from . models import hospital_categories
from django.contrib import messages
from django.db import IntegrityError
from . import models

# Create your views here.

def Hospital_Name_panel(request):
    hospital_data = hospital_categories.objects.values('hos_cat').distinct()
    storage = messages.get_messages(request)
    storage.used = True
    context = {'hos_data':hospital_data,}
    return render(request,'form/Hospital/hospital.html', context)

def Hospital_Name_store(request):
    
    try:
        
        hos_cat = request.POST.get('hos_cat')
        if (len(hos_cat) < 4 ):
            messages.error(request, 'minimum 4')
            return redirect('/hospital/')
        
        else:
            hospital_model = models.hospital_categories()
            hospital_model.hos_cat = hos_cat
            hospital_model.save()
            messages.success(request, 'The Hospital name hase been inserted Successfully')
            return redirect('/hospital/')
            
    except (IntegrityError) as e: 
        messages.error(request, 'The Hospital name hase been inserted Successfully')