from django.shortcuts import render,redirect
from . models import hospital_categories
from division.models import Division_Name
from district.models import District_Name
from station.models import Station
from address.models import address_name
from django.contrib import messages
from django.db import IntegrityError
from . import models
from django.db.models import F, FloatField
from django.db.models.functions import ACos, Cos, Radians, Sin
from hospital_map.models import Hospital_map

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
        
from django.http import JsonResponse  
from django.conf import settings  
from django.core.serializers import serialize    
def hospitals_index_page(request):
    user_latitude=''
    user_longitude=''
    if(request.method =='GET'):
        if request.GET.get('latitude') is not None and request.GET.get('longitude') is not None:
            print("adasdasd")
            user_latitude = (request.GET.get('latitude'))
            user_longitude = (request.GET.get('longitude'))
            nearby_hospitals = get_nearby_hospitals(float(user_latitude), float(user_longitude))
            if len(nearby_hospitals)!=0:
                
                return JsonResponse({'nearby_hospitals': nearby_hospitals,'near_status':1})

            else:
                # The queryset is empty, there are no nearby hospitals
                print("No nearby hospitals found.")
                hospital_details_data = Hospital_map.objects.select_related('hospital_fk').filter()
                data = [{'id':hospital.id,'hos_name':hospital.hospital_fk.hos_name,'address':hospital.hospital_fk.address,'description':hospital.hospital_fk.description,'image':hospital.hospital_fk.image.url,'lat':hospital.latitude,'long':hospital.longitude}for hospital in hospital_details_data]
                hospital_data = hospital_details_data.order_by('-id')[:10]
                print("data",data)
                context = {
                    'near_status': 0,
                    'nearby_hospitals': data,
                }
                return JsonResponse({'nearby_hospitals': context})
                
            # Convert the queryset to a list of dictionaries
            # hospitals_list = list(nearby_hospitals.values())
        else:
            print("adaasdadadasdsdasd")

            divi_data = Division_Name.objects.values('division').distinct()
            dist_data = District_Name.objects.select_related('divi_fk').values('id','district','divi_fk').distinct()
            station_data = Station.objects.select_related('dis_fk','divi_fk').values('divi_fk','dis_fk','station').distinct()
            hospital_cat_data = hospital_categories.objects.values('hos_cat').distinct()
            hospital_details_data = address_name.objects.select_related('division_fk','district_fk','station_fk','hos_type_fk').filter().values('id','hos_name','address','image','description')
           
            hospital_data = hospital_details_data.order_by('-id')[:10]
            
            
            context = {
                # 'divi_data':divi_data,
                # 'dist_cat':dist_data,
                # 'station_data':station_data,
                # 'hosp_cat_data':hospital_cat_data,
                'hospital_data':hospital_data,
                
                }
            return render(request,'hospitals/hospital_all_code/index.html')    
    

    # Calculate and retrieve nearby hospitals (you can use the previously provided function)
    
    


def get_nearby_hospitals(your_latitude, your_longitude, max_distance=10):
    # Convert degrees to radians
    your_latitude_rad = Radians(your_latitude)
    your_longitude_rad = Radians(your_longitude)

    # Calculate distance using Haversine formula
    distance = 6371 * ACos(
        Cos(Radians(your_latitude)) * Cos(Radians(F('latitude'))) *
        Cos(Radians(F('longitude')) - Radians(your_longitude)) +
        Sin(Radians(your_latitude)) * Sin(Radians(F('latitude')))
    , output_field=FloatField())  # Specify the output_field as FloatField

    nearby_hospitals = (
        Hospital_map.objects
        .select_related('hospital_fk')  # Select related fields
        .annotate(distance=distance)
        .filter(distance__lte=max_distance)
        .order_by('distance')
    )
    data = [{'id':hospital.id,'hos_name':hospital.hospital_fk.hos_name,'address':hospital.hospital_fk.address,'description':hospital.hospital_fk.description,'image':hospital.hospital_fk.image.url,'lat':hospital.latitude,'long':hospital.longitude,'distance':hospital.distance}for hospital in nearby_hospitals]
        # print(f"Hospital ID: {hospital.id}")
        # print(f"Name: {hospital.hospital_fk.hos_name}")
        # print(f"Address: {hospital.hospital_fk.address}")
        # print(f"Description: {hospital.hospital_fk.description}")
        # print(f"Image: {hospital.hospital_fk.image.url}")  # Assuming 'image' is an ImageField
        # print(f"Latitude: {hospital.latitude}")
        # print(f"Longitude: {hospital.longitude}")
        # print(f"Distance: {hospital.distance} km")
        # print("------")


    return data

def hospitals_symptom_page(request):
    return render(request,'hospitals/hospital_all_code/symptom_page.html')
def hospitals_symptom_history(request):
    return render(request,'hospitals/hospital_all_code/symptom_history.html')

# def hospitals_common_page(request):
#     return render(request,'hospitals/hospital_common_code/common_code.html')


