from django.db import models

# Create your models here.


class Division_Name(models.Model):
    division = models.CharField(max_length=500, unique=True,null=True, blank=True)