from django.shortcuts import render,get_object_or_404,redirect
from . models import Division_Name
from django.contrib import messages
from django.db import IntegrityError
from . import models

# Create your views here.

def Division_Name_panel(request):
    divi_data = Division_Name.objects.all()
    # divi_data = Division_Name.objects.values('division').distinct()
    storage = messages.get_messages(request)
    storage.used = True
    context = {'division_data':divi_data,}
    return render(request,'form/division/division.html', context)

def Division_Name_store(request):
    
    try:
        
        division = request.POST.get('divi_name')
        if (len(division) < 4 ):
            messages.error(request, 'minimum 4')
            return redirect('/division/')
        
        else:
            depar_model = models.Division_Name()
            depar_model.division = division
            depar_model.save()
            messages.success(request, 'The Division name hase been inserted Successfully')
            return redirect('/division/')
            
    except (IntegrityError) as e: 
        messages.error(request, 'The Division name hase been inserted Successfully')
        
        
def edit_division(request, id):
    data = get_object_or_404(Division_Name, id=id)
    context={
        'id':id,
        'data':data,
        
    }
    return render(request,'form/Division/division_edit.html',context)

def update_edit_division(request):
    try:
        id = request.POST.get('id')
        data = get_object_or_404(Division_Name, id=id)  
        division = request.POST.get('divi_name')
        data.division = division
        data.save()
        messages.success(request, 'The Division name hase been updated Successfully')
        return redirect('/division/')
    except (IntegrityError) as e: 
        messages.error(request, 'The Division name hase been updated Successfully')


def delete_division(request, id):
    try:
        data = get_object_or_404(Division_Name, id=id)
        data.delete()
        messages.success(request, 'The Division name hase been deleted Successfully')
        return redirect('/division/')
     
    except (IntegrityError) as e: 
            messages.error(request, 'The Hospital_map name hase been deleted Successfully')   
 
 
# delete view for details

# def delete_division(request, id):
  
 

#     # fetch the object related to passed id

#     obj = get_object_or_404(Division_Name, id = id)
 
#     context ={
#         'data':obj
#     }

#     if request.method =="POST":

#         # delete object

#         obj.delete()

#         # after deleting redirect to 

#         # home page

#         return HttpResponseRedirect("/")
 

#     return render(request,'form/Division/delete.html',context)       