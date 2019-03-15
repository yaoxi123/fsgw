from django.db import models

# Create your models here.
class Bigwheel(models.Model):
    img = models.CharField(max_length=100)
    name = models.CharField(max_length=100)
    trackid = models.CharField(max_length=10)
    class Meta:
        db_table = 'bigwheel'

class Smwheel(models.Model):
    img = models.CharField(max_length=100)
    name = models.CharField(max_length=100)
    trackid = models.CharField(max_length=10)
    price =models.CharField(max_length=100)
    class Meta:
        db_table = 'smwheel'
