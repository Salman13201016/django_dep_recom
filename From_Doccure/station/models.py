from django.db import models
from division.models import Division_Name
from district.models import District_Name

# Create your models here.

class Station(models.Model):
    divi_fk = models.ForeignKey(Division_Name, on_delete=models.CASCADE,null=True, blank=True)
    dis_fk = models.ForeignKey(District_Name, on_delete=models.CASCADE,null=True, blank=True)
    station = models.CharField(max_length=100,null=True, blank=True)