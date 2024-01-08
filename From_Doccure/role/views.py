from django.shortcuts import render,get_object_or_404,redirect
from django.http import HttpResponse
from . import models 
from . models import patient_or_admin
from django.contrib import messages
from django.db import IntegrityError






def role_panel(request):
    google_data = request.session.get('social_auth_google-oauth2')
    if 'user_id' in request.session or google_data:
        # data1 = patient_or_admin.objects.values('id','name').distinct()
        data1 = patient_or_admin.objects.all()
        storage = messages.get_messages(request)
        storage.used = True
        context = {'depart_data':data1,}
        return render(request,'form/role/role.html', context)
    else:
        return redirect('aut_login')
    
    
def role_store(request):
    
    try:
        
        patient_name = request.POST.get('patient')
        if (len(patient_name) < 4 ):
            messages.error(request, 'minimum 4')
            return redirect('/role/')
        
        if models.patient_or_admin.objects.filter(patient_name=patient_name).exists():
            messages.info(request, 'This name already exists.')
            return redirect('/role/')
        
        else:
            role_model = models.patient_or_admin()
            role_model.patient_name = patient_name
            role_model.save()
            messages.success(request, 'Data hase been inserted Successfully')
            return redirect('/role/')
            # return render(request,'form/form-basic-inputs.html')
    except (IntegrityError) as e: 
        messages.error(request, 'Data hase been inserted Successfully')
        
        return render(request,'form/role/role.html')
    
def edit_role_name(request, id):
    data = get_object_or_404(patient_or_admin, id=id)
    context={
        'id':id,
        'data':data,
    }
    return render(request,'form/role/role_edit.html',context)

def role_update(request):
    try:
        id = request.POST.get('id')
        data = get_object_or_404(patient_or_admin, id=id)  
        name = request.POST.get('patient')
        data.patient_name = name
        data.save()
        messages.success(request, 'Data name hase been updated Successfully')
        return redirect('/role/')
    except (IntegrityError) as e: 
        messages.error(request, 'Data name hase been updated Successfully')

def role_delete(request, id):
    try:
        data = get_object_or_404(patient_or_admin, id=id)
        data.delete()
        messages.success(request, 'Data name hase been deleted Successfully')
        return redirect('/role/')
    except (IntegrityError) as e: 
        messages.error(request, 'Data name hase been deleted Successfully')