from django.db import models
from django.contrib.auth.hashers import check_password 

# Create your models here.
class user_register(models.Model):
    id = models.AutoField(primary_key=True)
    fname = models.CharField(max_length=100)
    email = models.EmailField(max_length=100, unique=True)
    identy_no = models.IntegerField(unique=True)
    mobile = models.IntegerField(unique=True)
    password = models.CharField(max_length=100)
    v_key = models.CharField(max_length = 500,default=0)
    v_status = models.CharField(max_length = 500, default=0)
    
