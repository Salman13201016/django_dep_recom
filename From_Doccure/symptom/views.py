from django.shortcuts import render,redirect,get_object_or_404
from dashboard_from.models import Doctor_Depert_name,Sub_Disease
from symptom.models import Symptom
from . import models 
from django.contrib import messages
from django.db import IntegrityError

# Create your views here.

def symptom_panel(request):
    google_data = request.session.get('social_auth_google-oauth2')
    if 'user_id' in request.session or google_data:
        data_dep = Doctor_Depert_name.objects.all()   
        data_disea = Sub_Disease.objects.all()   
        data_symt = Symptom.objects.all()   
        context = {"disease_data":data_disea, 'depert_dep':data_dep,'data_symt':data_symt}
    else:
        return redirect('aut_login')
    return render(request,'form/Symptom/symptom.html',context)

def symptom_store(request): 
    try:
        depart_id = request.POST.get('dep_id')
        disease_id = request.POST.get('dis_id')
        symptom1 = request.POST.get('symptom1') 
        symptom2 = request.POST.get('symptom2')
        symptom3 = request.POST.get('symptom3')
        symptom4 = request.POST.get('symptom4')
        symptom5 = request.POST.get('symptom5')
        symptom6 = request.POST.get('symptom6')
        symptom7 = request.POST.get('symptom7')
        symptom8 = request.POST.get('symptom8')
        symptom9 = request.POST.get('symptom9')
        symptom10 = request.POST.get('symptom10')
        symptom11 = request.POST.get('symptom11')
        symptom12 = request.POST.get('symptom12')
        symptom13 = request.POST.get('symptom13')
        symptom14 = request.POST.get('symptom14')
        symptom15 = request.POST.get('symptom15')
        symptom16 = request.POST.get('symptom16')
        symptom17 = request.POST.get('symptom17')
        
        
        symptom_model = models.Symptom()
        symptom_model.depart_id_id = depart_id
        symptom_model.disease_id_id = disease_id
        symptom_model.symptom1 = symptom1
        symptom_model.symptom2 = symptom2
        symptom_model.symptom3 = symptom3
        symptom_model.symptom4 = symptom4
        symptom_model.symptom5 = symptom5
        symptom_model.symptom6 = symptom6
        symptom_model.symptom7 = symptom7
        symptom_model.symptom8 = symptom8
        symptom_model.symptom9 = symptom9       
        symptom_model.symptom10 = symptom10       
        symptom_model.symptom11 = symptom11       
        symptom_model.symptom12 = symptom12       
        symptom_model.symptom13 = symptom13       
        symptom_model.symptom14 = symptom14       
        symptom_model.symptom15 = symptom15       
        symptom_model.symptom16 = symptom16       
        symptom_model.symptom17 = symptom17       
        symptom_model.save()
        messages.success(request, 'The Symptom name hase been inserted Successfully')
        return redirect('/symptom/')
    except (IntegrityError) as e: 
        messages.error(request, 'The Symptom name hase been inserted Successfully')   
        return render(request,'form/Symptom/symptom.html')
    
    

def edit_symptom(request, id):
    # data = get_object_or_404(Doctor_Depert_name, id=id)
    context={
        'id':id,
    }
    return render(request,'form/Symptom/symptom_edit.html',context)

def update_symptom(request):
    try:
        id = request.POST.get('id')
        data = get_object_or_404(Symptom, id=id)  
        symptom1 = request.POST.get('symptom1') 
        symptom2 = request.POST.get('symptom2')
        symptom3 = request.POST.get('symptom3')
        symptom4 = request.POST.get('symptom4')
        symptom5 = request.POST.get('symptom5')
        symptom6 = request.POST.get('symptom6')
        symptom7 = request.POST.get('symptom7')
        symptom8 = request.POST.get('symptom8')
        symptom9 = request.POST.get('symptom9')
        symptom10 = request.POST.get('symptom10')
        symptom11 = request.POST.get('symptom11')
        symptom12 = request.POST.get('symptom12')
        symptom13 = request.POST.get('symptom13')
        symptom14 = request.POST.get('symptom14')
        symptom15 = request.POST.get('symptom15')
        symptom16 = request.POST.get('symptom16')
        symptom17 = request.POST.get('symptom17')
        
        
        data.symptom1 = symptom1
        data.symptom2 = symptom2
        data.symptom3 = symptom3
        data.symptom4 = symptom4
        data.symptom5 = symptom5
        data.symptom6 = symptom6
        data.symptom7 = symptom7
        data.symptom8 = symptom8
        data.symptom9 = symptom9       
        data.symptom10 = symptom10       
        data.symptom11 = symptom11       
        data.symptom12 = symptom12       
        data.symptom13 = symptom13       
        data.symptom14 = symptom14       
        data.symptom15 = symptom15       
        data.symptom16 = symptom16       
        data.symptom17 = symptom17
        data.save()
        messages.success(request, 'The Symptom hase been updated Successfully')
        return redirect('/symptom/')
    except (IntegrityError) as e: 
            messages.error(request, 'The Symptom hase been updated Successfully')   
            return render(request,'form/Symptom/symptom.html')


def delete_symptom(request, id):
    try:
        data = get_object_or_404(Symptom, id=id)
        data.delete()
        messages.success(request, 'The Symptom hase been deleted Successfully')
        return redirect('/symptom/')
    
    except (IntegrityError) as e: 
            messages.error(request, 'The Symptom hase been deleted Successfully')   
            return render(request,'form/Symptom/symptom.html')






