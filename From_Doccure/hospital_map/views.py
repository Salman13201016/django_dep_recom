from django.shortcuts import render,redirect,get_object_or_404
from address.models import address_name
from hospital_map.models import Hospital_map
from . import models 
from django.contrib import messages
from django.db import IntegrityError

# Create your views here.

def hosp_map_panel(request):
    google_data = request.session.get('social_auth_google-oauth2')
    if 'user_id' in request.session or google_data:
        hos_map_data = address_name.objects.all()      
        hos_map = Hospital_map.objects.all()      
        context = {"map_data":hos_map_data,"hospital_map_data":hos_map}
    else:
        return redirect('aut_login')
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
    
    
def edit_hospital_map(request, id):
    data = get_object_or_404(Hospital_map, id=id)
    context={
        'id':id,
        'data':data,
    }
    return render(request,'form/Hospital_map/hospital_map_edit.html',context)

def update_hospital_map(request):
    try:
        
        id = request.POST.get('id')
        data = get_object_or_404(Hospital_map, id=id)  
        longitude = request.POST.get('longitude')
        latitude = request.POST.get('latitude')
        data.longitude = longitude
        data.latitude = latitude
        data.save()
        messages.success(request, 'The Hospital_map hase been updated Successfully')
        return redirect('/hospital_map/')

    except (IntegrityError) as e: 
            messages.error(request, 'The Hospital_map hase been updated Successfully')   
            return render(request,'form/Hospital_map/hospital_map.html')


def delete_hospital_map(request, id):
    try:
        data = get_object_or_404(Hospital_map, id=id)
        data.delete()
        messages.success(request, 'The Hospital_map hase been deleted Successfully')
        return redirect('/hospital_map/')
    except (IntegrityError) as e: 
        messages.error(request, 'The Hospital_map hase been deleted Successfully')   
        return render(request,'form/Hospital_map/hospital_map.html')
