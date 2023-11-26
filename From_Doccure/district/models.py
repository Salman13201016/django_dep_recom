from django.db import models
from division.models import Division_Name

# Create your models here.


class District_Name(models.Model):
    id = models.AutoField(primary_key=True)
    district = models.CharField(max_length=100,unique=True,null=True, blank=True)
    divi_fk = models.ForeignKey(Division_Name, on_delete=models.CASCADE,null=True, blank=True)