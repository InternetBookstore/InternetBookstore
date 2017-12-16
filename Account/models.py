from django.db import models

# Create your models here.


class Account(models.Model):
    username = models.CharField(max_length=50, unique=True)
    password = models.CharField(max_length=50, unique=True)
    name = models.CharField(max_length=30)
    email = models.CharField(max_length=254)
    address = models.CharField(max_length=60)
    cellphone = models.CharField(max_length=10)
    birthday = models.DateField()
    is_staff = models.BooleanField()
    is_active = models.BooleanField()
    date_joined = models.DateTimeField()
    last_login = models.DateTimeField()
