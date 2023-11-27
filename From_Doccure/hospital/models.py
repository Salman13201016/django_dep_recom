from django.db import models

# Create your models here.


class hospital_categories(models.Model):
    hos_cat = models.CharField(max_length=500, unique=True,null=True, blank=True)