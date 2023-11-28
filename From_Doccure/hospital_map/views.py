from django.shortcuts import render,redirect
from address.models import address_name
from . import models 
from django.contrib import messages
from django.db import IntegrityError

# Create your views here.

def hosp_map_panel(request):
    hos_map_data = address_name.objects.all()      
    context = {"map_data":hos_map_data}
    return render(request,'form/Hospital_map/Hospital_map.html',context)

def hosp_map_store(request): 
    try:
        hospita_fk = request.POST.get('hos_fk') 
        longitude = request.POST.get('longitude') 
        latitude = request.POST.get('latitude') 
        
        hos_map_model = models.Hospital_map()
        hos_map_model.hospital_fk_id = hospita_fk
        hos_map_model.longitude = longitude
        hos_map_model.latitude = latitude
              
        hos_map_model.save()
        messages.success(request, 'The Hospital_map name hase been inserted Successfully')
        return redirect('/hospital_map/')
    except (IntegrityError) as e: 
        messages.error(request, 'The Hospital_map name hase been inserted Successfully')   
        return render(request,'form/Hospital_map/hospital_map.html')
