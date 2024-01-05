from django.shortcuts import render,redirect,get_object_or_404
from division.models import Division_Name
from district.models import District_Name
from hospital.models import hospital_categories
from station.models import Station
from address.models import address_name
from . import models 
from django.contrib import messages
from django.db import IntegrityError

# Create your views here.

# def name_panel(request):
#     if 'user_id' in request.session:
#         return render(request,'common_code/home.html')
#     else:
#         return redirect('aut_login')
    
def address_panel(request):
    google_data = request.session.get('social_auth_google-oauth2')
    if 'user_id' in request.session or google_data:
        divi_data = Division_Name.objects.all()   
        dis_data = District_Name.objects.all()   
        hos_data = hospital_categories.objects.all()   
        sta_data = Station.objects.all()   
        add_data = address_name.objects.all()   
        context = {"div_data":divi_data, 'dist_data':dis_data,'hosp_data':hos_data,'stat_data':sta_data,'hospital_add_data':add_data}
    else:
        return redirect('aut_login')
    return render(request,'form/Address/address.html',context)

def address_store(request):
    try:
        google_data = request.session.get('social_auth_google-oauth2')
        if 'user_id' in request.session or google_data:
            Div_fk = request.POST.get('Div_fk')
            Dis_fk = request.POST.get('Dis_fk')
            Hos_fk = request.POST.get('Hos_fk')
            Sta_fk = request.POST.get('Sta_fk')
            hos_name = request.POST.get('hosp_name') 
            zip_code = request.POST.get('zip_code') 
            address = request.POST.get('address') 
            image = request.FILES.get('img') 
            description = request.POST.get('descrip') 
            
            addr_model = models.address_name()
            addr_model.division_fk_id = Div_fk
            addr_model.district_fk_id = Dis_fk
            addr_model.hos_type_fk_id = Hos_fk
            addr_model.station_fk_id = Sta_fk
            addr_model.hos_name = hos_name
            addr_model.zip_code = zip_code
            addr_model.address = address
            addr_model.image = image
            addr_model.description = description
                
            addr_model.save()
            messages.success(request, 'The Address name hase been inserted Successfully')
            return redirect('/address/')
        # else:
        #     return redirect('aut_login')
    except (IntegrityError) as e: 
        messages.error(request, 'The Address name hase been inserted Successfully')   
        return render(request,'form/Address/address.html')
    
def edit_hospital_address(request, id):
    data = get_object_or_404(address_name, id=id)
    context={
        'id':data,
    }
    return render(request,'form/Address/hospital_address_edit.html',context)

def update_hospital_address(request):
    try:
        id = request.POST.get('id')
        data = get_object_or_404(address_name, id=id)  
        hos_name = request.POST.get('hos_name')
        zip_code = request.POST.get('zip_code')
        address = request.POST.get('address')
        image = request.FILES.get('image')
        description = request.POST.get('description')
        data.hos_name = hos_name
        data.zip_code = zip_code
        data.address = address
        data.image = image
        data.description = description
        data.save()
        messages.success(request, 'The Department name hase been updated Successfully')
        return redirect('/address/')
    except (IntegrityError) as e: 
        messages.error(request, 'The Department name hase been updated Successfully')


def delete_hospital_address(request, id):
    try:
        data = get_object_or_404(address_name, id=id)
        data.delete()
        messages.success(request, 'The Department name hase been deleted Successfully')
        return redirect('/address/')
    except (IntegrityError) as e: 
        messages.error(request, 'The Department name hase been deleted Successfully')



