from django.contrib import admin

from .models import *
# Register your models here.


class OrderAdmin(admin.ModelAdmin):
    list_display = ('account_id', 'first_name', 'last_name', 'address', 'phone',
                    'shipment_cost', 'books_cost', 'order_date', 'shipment_date', 'arrival_date')


class OrderListAdmin(admin.ModelAdmin):
    list_display = ('order_id', 'book_id',
                    'book_quantity', 'price', 'discount')


admin.site.register(Order, OrderAdmin)
admin.site.register(OrderList, OrderListAdmin)
