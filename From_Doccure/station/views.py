from django.shortcuts import render,redirect,get_object_or_404
from district.models import District_Name
from division.models import Division_Name
from .models import Station
from . import models 
from django.contrib import messages
from django.db import IntegrityError

# Create your views here.

def station_panel(request):
    # if 'user_id' in request.session:
        divi_data = Division_Name.objects.all()   
        dis_data = District_Name.objects.all()   
        station_data = Station.objects.all()   
        context = {"dist_data":dis_data, 'divi_data':divi_data,'station_data':station_data}
    # else:
    #     return redirect('aut_login')
        return render(request,'form/Station/station.html',context)

def station_store(request): 
    try:
        divi_fk = request.POST.get('divi_fk')
        dis_fk = request.POST.get('dis_fk')
        station = request.POST.get('station') 
        station_model = models.Station()
        station_model.divi_fk_id = divi_fk
        station_model.dis_fk_id = dis_fk
        station_model.station = station     
        station_model.save()
        messages.success(request, 'The Station name hase been inserted Successfully')
        return redirect('/station/')
    except (IntegrityError) as e: 
        messages.error(request, 'The Station name hase been inserted Successfully')   
        return render(request,'form/Station/station.html')
    
    
def edit_station(request, id):
    # data = get_object_or_404(Doctor_Depert_name, id=id)
    context={
        'id':id,
    }
    return render(request,'form/Station/station_edit.html',context)

def update_edit_station(request):
    id = request.POST.get('id')
    data = get_object_or_404(Station, id=id)  
    station = request.POST.get('station_name')
    data.station = station
    data.save()
    return redirect('/station/')


def delete_station(request, id):
    data = get_object_or_404(Station, id=id)
    data.delete()
    return redirect('/station/')  


