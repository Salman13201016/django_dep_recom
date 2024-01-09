from django.shortcuts import render,get_object_or_404,redirect
from user_role.models import user_role_management
from auth_user.models import user_register
from role.models import patient_or_admin
from . import models 
from django.contrib import messages
from django.db import IntegrityError

def user_role_panel(request):
    google_data = request.session.get('social_auth_google-oauth2')
    if 'user_id' in request.session or google_data:
        role_fk_data = patient_or_admin.objects.all() 
        user_register_fk_ = user_register.objects.all()     
        user_role_data = user_role_management.objects.all()     
        context = {"user_role_data":user_role_data,"user_fk":user_register_fk_,"role_fk":role_fk_data}
    else:
        return redirect('aut_login')
    return render(request,'form/role_user/role_user.html',context)

    
    
def user_role_store(request):
    
    try:
        role_fk = request.POST.get('role_fk') 
        user_fk = request.POST.get('user_fk') 
        
        
        role_user_model = models.user_role_management()
        role_user_model.select_role_id = role_fk
        role_user_model.select_user_id = user_fk      
        role_user_model.save()
        
        messages.success(request, 'Data hase been inserted Successfully')
        return redirect('/user_role/')
    except (IntegrityError) as e: 
        messages.error(request, 'Data hase been inserted Successfully')   
        return render(request,'form/role_user/role_user.html')

    
# def edit_user_role(request, id):
#     data = get_object_or_404(user_role_management, id=id)
#     context={
#         'id':id,
#         'data':data,
#     }
#     return render(request,'form/role_user/role_user_edit.html',context)

# def user_role_update(request):
#     try:
#         id = request.POST.get('id')
#         data = get_object_or_404(user_role_management, id=id)  
#         # select_role = request.POST.get('role_fk')
#         # select_user = request.POST.get('user_fk')
#         # data.select_role = select_role
#         # data.select_user = select_user
#         # data.save()
        
#         role_fk = request.POST.get('role_fk')
#         user_fk = request.POST.get('user_fk')
#         print(role_fk)
#         print(user_fk)
#         if role_fk.isdigit() and user_fk.isdigit():
#             role_instance = get_object_or_404(patient_or_admin, id=int(role_fk))
#             user_instance = get_object_or_404(user_register, id=int(user_fk))
#             print(role_instance)
#             print(user_instance)
            
#             data.select_role = role_instance
#             data.select_user = user_instance
#             data.save()
        
#             messages.success(request, 'Data name hase been updated Successfully')
#             return redirect('/user_role/')
#         else:
#             messages.error(request, 'Invalid role/user ID provided')
#     except (IntegrityError) as e: 
#         messages.error(request, 'Data name hase been updated Successfully')

def user_role_delete(request, id):
    try:
        data = get_object_or_404(user_role_management, id=id)
        data.delete()
        messages.success(request, 'Data name hase been deleted Successfully')
        return redirect('/user_role/')
    except (IntegrityError) as e: 
        messages.error(request, 'Data name hase been deleted Successfully')