from django import forms
from .models import Order


class OrderCreateForm(forms.ModelForm):
    class Meta:
        model = Order
        exclude = ('account_id', 'first_name', 'last_name',
                   'address', 'phone', 'shipment_cost', 'books_cost', 'shipment_date',
                   'arrival_date')
