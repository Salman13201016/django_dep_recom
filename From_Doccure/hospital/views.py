from django.shortcuts import render,redirect
from . models import hospital_categories
from division.models import Division_Name
from district.models import District_Name
from station.models import Station
from address.models import address_name
from django.contrib import messages
from django.db import IntegrityError
from . import models

# Create your views here.

def Hospital_Name_panel(request):
    if 'user_id' in request.session:
        hospital_data = hospital_categories.objects.values('hos_cat').distinct()
        storage = messages.get_messages(request)
        storage.used = True
        context = {'hos_data':hospital_data,}
    else:
        return redirect('aut_login')
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
            messages.success(request, 'The Hospital category name hase been inserted Successfully')
            return redirect('/hospital/')
            
    except (IntegrityError) as e: 
        messages.error(request, 'The Hospital category name hase been inserted Successfully')
        
        
def hospitals_index_page(request):
    divi_data = Division_Name.objects.values('division').distinct()
    dist_data = District_Name.objects.select_related('divi_fk').values('id','district','divi_fk').distinct()
    station_data = Station.objects.select_related('dis_fk','divi_fk').values('divi_fk','dis_fk','station').distinct()
    hospital_cat_data = hospital_categories.objects.values('hos_cat').distinct()
    hospital_details_data = address_name.objects.select_related('division_fk','district_fk','station_fk','hos_type_fk').filter().values('id','division_fk','district_fk','station_fk','hos_type_fk','hos_name','zip_code','address','image','description')
    hospital_data = hospital_details_data.order_by('-id')[:10]
    
    
    context = {
        'divi_data':divi_data,
        'dist_cat':dist_data,
        'station_data':station_data,
        'hosp_cat_data':hospital_cat_data,
        'hospital_data':hospital_data,
        
        }
    return render(request,'hospitals/hospital_all_code/index.html', context)

def hospitals_symptom_page(request):
    return render(request,'hospitals/hospital_all_code/symptom_page.html')

# def hospitals_common_page(request):
#     return render(request,'hospitals/hospital_common_code/common_code.html')


