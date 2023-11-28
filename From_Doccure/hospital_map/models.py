from django.db import models
from address.models import address_name

# Create your models here.

class Hospital_map(models.Model):
    id = models.AutoField(primary_key=True)
    hospital_fk = models.ForeignKey(address_name, on_delete=models.CASCADE,null=True, blank=True)
    longitude = models.CharField(max_length=50)
    latitude = models.CharField(max_length=50)

