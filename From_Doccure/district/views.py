from django.shortcuts import render,get_object_or_404,redirect
from . models import Division_Name
from django.contrib import messages
from django.db import IntegrityError
from . import models

# Create your views here.

def district_name(request):
    dis_data = Division_Name.objects.all()   
    context = {"district_data":dis_data}
    return render(request,'form/District/district.html',context)

def district_name_store(request):   
    try:
        district = request.POST.get('district_name')
        if (len(district) < 4 ):
            messages.error(request, 'minimum 4')
            return redirect('/district/')
        
        else:
            divi_fk = request.POST.get('district_fk')
            dis_model = models.District_Name()
            dis_model.district = district
            dis_model.divi_fk_id = divi_fk
            dis_model.save()
            messages.success(request, 'The District name hase been inserted Successfully')
            return redirect('/district/')
    except (IntegrityError) as e: 
        messages.error(request, 'The District name hase been inserted Successfully')
        
        return redirect('/district/')    