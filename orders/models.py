from django.db import models

from IB.models import Book
from django.contrib.auth.models import User
# Create your models here.


class Order(models.Model):
    account_id = models.ForeignKey(User, on_delete=models.CASCADE)
    first_name = models.CharField(max_length=50)
    last_name = models.CharField(max_length=50)
    address = models.CharField(max_length=250)
    phone = models.CharField(max_length=10)
    shipment_cost = models.IntegerField(default=60)
    books_cost = models.IntegerField()
    order_date = models.DateTimeField(auto_now_add=True)
    shipment_date = models.DateTimeField(null=True, blank=True)
    arrival_date = models.DateTimeField(null=True, blank=True)

    class Meta:
        ordering = ('-order_date',)

    def __str__(self):
        return 'Order {}'.format(self.id)

    def get_total_cost(self):
        return sum(item.get_cost() for item in self.items.all()) + self.shipment_cost


class OrderList(models.Model):
    order_id = models.ForeignKey(
        Order, related_name='items', on_delete=models.CASCADE)
    book_id = models.ForeignKey(
        Book, related_name='order_items', on_delete=models.CASCADE)
    book_quantity = models.PositiveIntegerField(default=1)
    price = models.DecimalField(max_digits=10, decimal_places=0)
    discount = models.PositiveIntegerField(default=0)

    def __str__(self):
        return '{}'.format(self.id)

    def get_cost(self):
        return (self.price - self.discount) * self.book_quantity
