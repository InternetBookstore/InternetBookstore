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


class Book(models.Model):
    isbn = models.CharField(max_length=30, unique=True)
    bookname = models.CharField(max_length=50)
    author = models.CharField(max_length=30)
    publisher = models.CharField(max_length=30)
    publish_date = models.DateField()
    description = models.TextField(null=True)
    photo = models.URLField(null=True)
    state = models.BooleanField()
    price = models.IntegerField()
    stock = models.IntegerField()
    language = models.CharField(max_length=10)
    category = models.CharField(max_length=10)

    def __str__(self):
        return self.bookname


class DiscountPolicy(models.Model):
    event_description = models.TextField()
    policy_type = models.CharField(max_length=50)
    discount = models.FloatField()


class Comment(models.Model):
    book_id = models.ForeignKey('Book', null=True)
    account_id = models.ForeignKey('Account', null=True)
    description = models.TextField()
    date_time = models.DateTimeField()


class Order(models.Model):
    shipment_cost = models.IntegerField()
    books_cost = models.IntegerField()
    order_date = models.DateTimeField()
    shipment_date = models.DateTimeField(null=True)
    arrival_date = models.DateTimeField(null=True)


class OrderList(models.Model):
    order_id = models.ForeignKey('Order')
    book_id = models.ForeignKey('Book')
    book_quantity = models.IntegerField()
