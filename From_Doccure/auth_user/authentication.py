from django.contrib.auth import get_user_model
from . models import user_register

class EmailAuthBackend:
    def authenticate(self, request, email=None, password=None):
        # user_register = get_user_model()
        try:
            user = user_register.objects.get(email=email)
            
            print("user",user)
            if user.password==password:
                return user
        except user_register.DoesNotExist:
            return None

    def get_user(self, user_id):
        user_register = get_user_model()
        try:
            return user_register.objects.get(pk=user_id)
        except user_register.DoesNotExist:
            return None