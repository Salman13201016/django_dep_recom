
import re
from django.http import HttpResponse
from django.shortcuts import render, redirect
from django.contrib import messages
from datetime import datetime, timedelta
import random
from . import models 
from django.core.signing import Signer, BadSignature
from django.core.mail import send_mail
from django.utils.html import format_html
from . models import user_register



def user_index_panel(request):

    all_data = user_register.objects.all().order_by('pk')#this is acsending form align items #this is decending form order_py('-pk') 
    # all_user_data = user_register.objects.select_related('id').all()  #making a relation between our user model and role model by using select_related                          
    if (len(all_data)==0):
        status = False
    else:
        status = True

    # if (len(all_user_data)==0):
    #     user_status = False
    # else:
    #     user_status = True
    
    msg = messages.get_messages(request)
    data = {'all_data':all_data, 'status':status,'msg':msg}
    return render(request, 'update_design/signup.html', data)

# Create your views here.
def signup_auth_panel(request):
    if 'user_id' in request.session:
        return redirect('/hm/')
    if request.method == 'POST':
        fname = request.POST.get('name')
        email = request.POST.get('email').strip()
        mobile = request.POST.get('mobile')
        identy_no = request.POST.get('identy_no')
        password = request.POST.get('password')
        conpw = request.POST.get('conf_password')
        e_pattern = r"^[a-zA-Z0-9_.]+@gmail\.com$"
        o_pattern = r"^[a-zA-Z0-9_.]+@(outlook\.com|hotmail\.com|live\.com)$"
        y_pattern = r"^[a-zA-Z0-9_.]+@yahoo\.com$"

        if any(len(value) == 0 for value in [fname, email, mobile, identy_no, password, conpw]):
        # if any(value is None or len(value) == 0 for value in [ fname, email, mobile, identy_no, password, conpw]):
            messages.error(request, 'Empty field not accepted')

        else:
            if(len(fname)<3):
                messages.error(request, 'the field length must be minimum 3')
                return redirect('/signup/')
            elif(len(password)<8 ):
                messages.error(request, 'Password length must be minimum 8')
                return redirect('/signup/')
            elif(not re.search(r'[A-Z]', password)):
                messages.error(request, 'Password must contain at least one uppercase letter')
                return redirect('/signup/')
            elif(not re.search(r'\d', password)):
                messages.error(request, 'Password must contain at least one digit')
                return redirect('/signup/')
            elif(not re.search(r'[!@#$%^&*()_+=\-{}[\]:;"\'|<,>.?/~]', password)):
                messages.error(request, 'Password must contain at least one special character')
                return redirect('/signup/')
            elif(password!=conpw):
                messages.error(request, 'Your password and confirm password does not match.')
                return redirect('/signup/')
            elif(models.user_register.objects.filter(mobile=mobile).exists()):
                messages.info(request, 'Phone number already exists.')
                return redirect('/signup/')
            elif(len(mobile)!=11):
                messages.error(request, 'Phone number must be 11 digit.')
                return redirect('/signup/')
            elif(models.user_register.objects.filter(identy_no=identy_no).exists()):
                messages.info(request, 'ID number already exists.')
                return redirect('/signup/')
            elif not re.match(e_pattern, email) and not re.match(o_pattern, email) and not re.match(y_pattern, email):
                messages.error(request, 'Email is not valid.')
                return redirect('/signup/')

            else:
            #   user_obj = User()
            #   user_obj = user_register.objects.get(id=id)
              v_key, link = email_generator(fname)
              
              # this is create method it's fast
              user_register.objects.create(fname=fname,email=email,mobile=mobile,identy_no=identy_no,password=password,v_key=v_key,v_status=0 )
              send_mail(f"Hello Mr. {fname} Please confirm your Registration in Doc.com",link,'maniruzzaman.manir96@gmail.com',[email],html_message=link)
               # this is save method 
            # user_model = user_register()
            # user_model.fname = fname
            # user_model.email = email
            # user_model.mobile = mobile
            # user_model.identy_no = identy_no
            # user_model.password = password
            # # user_obj.id = user_id
            # user_model.save()
            
            messages.success(request, 'User Registration succesfully!')
            return redirect('/signup/')
    return render(request, 'update_design/signup.html')

def email_generator(fname):
    current_time = datetime.now().strftime("%H:%M:%S")
    h, m, s= map(int, current_time.split(':'))
    time_sec = h*3600 + m*60 + s
    time_sec = str(time_sec)

    random_number = random.choices('123456790',k=4)
    random_number = ''.join(random_number)
    v_c = time_sec + random_number
    
    signer = Signer()
    encrypted_value = signer.sign(v_c)
    encrypted_value1 = signer.sign(v_c).split(":")[1]
    decrypted_value = signer.unsign(encrypted_value)
    

    link = f"<p>Congratulations Mr {fname} ! For registering as a user in our doctor appointment system. To confirm the registration </p><a href='http://127.0.0.1:8000/email_verification/"+encrypted_value1+"' target='_blank'>please click this Activation link</a>"

    formatted_link = format_html(link)
    return encrypted_value1,formatted_link



def email_verify(request,id):
   
    v_key = id
    user = user_register.objects.get(v_key=v_key)
    user.v_status = 1
    user.save()
    user_data = {"u_data": user}

    return render(request, 'update_design/welcome.html', user_data)


def login_auth_panel(request):
    if 'user_id' in request.session:
        return redirect('/hm/')
    google_data = request.session.get('social_auth_google-oauth2')
    print(google_data)
    # request.session['user_gid'] = google_data.uid
    # request.session['user_gemail'] = google_data.email
    if google_data:
        return redirect('/hm/')
    else:
        
        if request.method == 'POST':
            email = request.POST.get('email')
            password = request.POST.get('pass')
            user = user_register.objects.get(email=email)
            
            if user.password==password:
                request.session['user_id'] = user.id
                request.session['user_email'] = user.email
                request.session['user_fname'] = user.fname
                return redirect('/hm/')

            # user = authenticate(request, email=email, password=password)
            
            # if user:
            #     # login(request, user)
            #     return redirect('/hm/')
            else:
                # return HttpResponse("Login Failed")
                messages.success(request, 'Email or Password Wrong')
                return redirect('/login/')
        else:
            return render(request, 'update_design/login.html')



def logout_auth_panel(request):
    # Check if user is logged in
    if 'user_id' in request.session:
        # Clear session data
        request.session.flush()
        # messages.success(request, 'You have been logged out successfully.')
    if 'social_auth_google-oauth2' in request.session:
        del request.session['social_auth_google-oauth2']
    return redirect('aut_index')


def auth_user_index(request):
    if 'user_id' in request.session:
        return redirect('/hm/')
    return render(request, 'update_design/index.html')

def Terms_of_use(request):
    return render(request,'update_design/terms.html')
    

def Privacy_policy(request):
    return render(request,'update_design/privacy.html')

def forgot_pass(request):
    return render(request,'update_design/forgotpass.html')


   









# def otp_verify(request,id):
#     if request.method == 'POST':
#         v_key = request.POST.get('verify')
#         user = user_register.objects.get(v_key=v_key)
#         user.v_status = 1
#         user.save()
#         user_data = {"u_data":user}
#         return render(request,'auth_user/congrats.html',user_data)

# def pin_check(request):
#     all_user_data = user_register.objects.select_related('id').all()
#     user_data ={'user_data':all_user_data}
#     return render(request,'auth_user/pin_check.html',user_data)

# def otp_generator(fname):
#     random_number = random.choices('123456790',k=4)
#     random_number = ''.join(random_number)

#     link = f"<p>Congratulations Mr {fname} ! For registering as a user in our doctor appointment system. To confirm the registration </p><a href='http://127.0.0.1:8000/pin_check/' target='_blank'>Activation Link</a> <br><br><h1>{random_number}</h1>"

#     return random_number, link
