from django.shortcuts import render
from django.http import HttpResponse
import re
from auth_user.models import user_register
import time
import hashlib
from django.contrib.auth import authenticate
from django.conf import settings
from django.template.loader import render_to_string
from django.utils.html import strip_tags
from django.core.mail import EmailMultiAlternatives

# Create your views here.
def signup_auth_panel(request):
    if request.method == 'POST':
        fname = request.POST.get('fname')
        email = request.POST.get('email')
        identy_no = request.POST.get('identy_no')
        mobile = request.POST.get('mobile')
        password = request.POST.get('pass')
        conPass = request.POST.get('con_pass')
        regex = r'\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Z|a-z]{2,7}\b'
        valid = 0
        if(re.fullmatch(regex,email)):
            valid = 1
        else:
            valid = 0
        # if((len(fname)==0) or (len(email)==0) or (len(identy_no)==0) or (len(mobile)==0)or (len(password)==0) or (len(conPass)==0)):
        if fname is None or email is None or identy_no is None or mobile is None or password is None or conPass is None:
            return HttpResponse("Some fields are empty. Please fill in all required fields.")
        elif len(fname) == 0 or len(email) == 0 or len(identy_no) == 0 or len(mobile) == 0 or len(password) == 0 or len(conPass) == 0:
            return HttpResponse("The fields cannot be empty")
            # return HttpResponse(" The field can not be empty")
        elif(password!=conPass):
            return HttpResponse("The password does not match")
        elif(valid == 0):
            return HttpResponse("The email is not valid")
        else:
            current_time = time.time()
            v_key = fname+str(current_time)
            result = hashlib.md5(v_key.encode())
            result = result.hexdigest()
            v_status = 0
            data = user_register(fname=fname, email=email, identy_no=identy_no, mobile=mobile, password=password, v_key=v_key, v_status=v_status)
            data.save()
                        # decMessage = fernet.decrypt(encMessage).decode()
            link = "http://127.0.0.1:8000/register/verification/"+str(result)
            # print(link)
            msg = "Click this verification link"
            rendered = render_to_string('auth_user/reg_email.html', {'content': msg, 'link':link})
            text_content = strip_tags(rendered)
            email = EmailMultiAlternatives(
                "User Registration",
                text_content,
                settings.EMAIL_HOST_USER,
                [email],
            )
            email.attach_alternative(rendered,"text/html")
            email.send()
            return HttpResponse("success")
    return render(request, 'auth_user/signup.html')



def verify(request, v_key):
    print(v_key,"======")
    try:
        # v_key = v_key
        record = user_register.objects.get(v_key=v_key)
        print(record,"-------")
        if record.v_status == 0 :  # Check if the status is not already verified
            record.v_status = 1
            record.save()
            return HttpResponse("Verification status updated")
        else:
            return HttpResponse("Already Verified")
    except user_register.DoesNotExist:
        return HttpResponse("Invalid verification key")

    

def login_auth_panel(request):
    if request.method == 'POST':
        email = request.POST['email']
        password = request.POST['pass']
        user = authenticate(request, email=email, password=password)
        print(email)
        print(password)
        print(user)
        if user:
            return HttpResponse("Login Success")
        else:
            return HttpResponse("Login Failed")
    
    return render(request, 'auth_user/login.html')

def auth_user_index(request):
    return render(request, 'auth_user/index.html')