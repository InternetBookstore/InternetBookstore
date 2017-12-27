from django.shortcuts import render, redirect
from django.contrib.auth.decorators import login_required
from django import forms

from cart.cart import Cart
from .models import OrderList
from .forms import OrderCreateForm
# Create your views here.


@login_required
def order_create(request):
    cart = Cart(request)
    if request.method == 'POST':
        form = OrderCreateForm(request.POST)
        if form.is_valid():
            order = form.save(commit=False)
            order.account_id = request.user
            order.first_name = request.user.first_name
            order.last_name = request.user.last_name
            order.address = request.user.profile.address
            order.phone = request.user.profile.cellphone
            order.shipment_cost = cart.get_shipment_cost()
            order.books_cost = cart.get_book_price()
            order.save()
            for item in cart:
                OrderList.objects.create(order_id=order,
                                         book_id=item['book'],
                                         book_quantity=item['quantity'],
                                         price=item['price'])
            cart.clear()
            request.session['order_id'] = order.id
            return redirect('IB:book_list')
    else:
        form = OrderCreateForm()
    return render(request,
                  'createOrder.html',
                  {'cart': cart,
                   'form': form})
