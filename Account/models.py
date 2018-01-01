from django.db import models
from django.contrib.auth.models import User
from django.db.models.signals import post_save
from django.dispatch import receiver

# Create your models here.


class Profile(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE)
    address = models.CharField(max_length=60, null=True)
    cellphone = models.CharField(max_length=10, null=True)
    birthday = models.DateField(null=True, blank=True)
    credit_card = models.CharField(max_length=50, blank=True, null=True)
    photo = models.URLField(null=True, default=None, blank=True)
