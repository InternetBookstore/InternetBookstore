from django.db import models

from IB.models import Book
from django.contrib.auth.models import User
# Create your models here.


class Order(models.Model):
    account_id = models.ForeignKey(User)
    shipment_cost = models.IntegerField()
    books_cost = models.IntegerField()
    order_date = models.DateTimeField()
    shipment_date = models.DateTimeField(null=True)
    arrival_date = models.DateTimeField(null=True)

    def __str__(self):
        return 'Order {}'.format(self.id)


class OrderList(models.Model):
    order_id = models.ForeignKey(Order)
    book_id = models.ForeignKey(Book)
    book_quantity = models.PositiveIntegerField(default=1)

    def __str__(self):
        return '{}'.format(self.id)
