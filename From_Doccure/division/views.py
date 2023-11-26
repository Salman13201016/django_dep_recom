from django.shortcuts import render,get_object_or_404,redirect
from . models import Division_Name
from django.contrib import messages
from django.db import IntegrityError
from . import models

# Create your views here.

def Division_Name_panel(request):
    divi_data = Division_Name.objects.values('division').distinct()
    storage = messages.get_messages(request)
    storage.used = True
    context = {'division_data':divi_data,}
    return render(request,'form/division/division.html', context)

def Division_Name_store(request):
    
    try:
        
        division = request.POST.get('divi_name')
        if (len(division) < 4 ):
            messages.error(request, 'minimum 4')
            return redirect('/home/')
        
        else:
            depar_model = models.Division_Name()
            depar_model.division = division
            depar_model.save()
            messages.success(request, 'The Division name hase been inserted Successfully')
            return redirect('/division/')
            
    except (IntegrityError) as e: 
        messages.error(request, 'The Division name hase been inserted Successfully')