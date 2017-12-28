from django.db import models

from IB.models import Category

# Create your models here.


class Discount(models.Model):
    name = models.CharField(max_length=50)
    event_description = models.TextField()
    discount = models.FloatField()
    Start_date = models.DateTimeField()
    End_date = models.DateTimeField()
    category = models.ForeignKey(Category,
                                 related_name='discount',
                                 null=True,
                                 blank=True,
                                 on_delete=models.SET_NULL)

    type_shpping = 'shipping'
    type_seasoning = 'seasonings'
    type_special = 'special'

    TYPE_CHOICES = (
        (type_shpping, 'shipping'),
        (type_seasoning, 'seasonings'),
        (type_special, 'special')
    )
    eventType = models.CharField(max_length=15,
                                 choices=TYPE_CHOICES,
                                 default=type_special)

    def __str__(self):
        return self.name
