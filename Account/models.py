from django.db import models
from django.contrib.auth.models import User
from django.db.models.signals import post_save
from django.dispatch import receiver

# Create your models here.


class Profile(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE)
    address = models.CharField(max_length=60,null=True)
    cellphone = models.CharField(max_length=10,null=True)
    birthday = models.DateField(null=True)
    photo = models.ImageField(upload_to="media/", blank=True, null=True)
    credit_card = models.CharField(max_length=50, blank=True,null=True)


@receiver(post_save, sender=User)
def create_user_profile(sender, instance, created, **kwarg):
    if created:
        Profile.objects.create(user=instance)


@receiver(post_save, sender=User)
def save_user_profile(sender, instance, **kwarg):
    instance.profile.save()
