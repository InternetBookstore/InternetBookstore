from django.shortcuts import render, redirect, get_object_or_404
from django.views.decorators.http import require_POST
from django.contrib import messages

from IB.models import Book
from .cart import Cart
from .forms import CartAddBookForm
from discount.models import Discount

# Create your views here.


@require_POST
def cart_add(request, book_id):
    cart = Cart(request)
    book = get_object_or_404(Book, id=book_id)

    try:
        policy = Discount.objects.get(category=book.category)
        discount = policy.discount
    except Discount.DoesNotExist:
        discount = 1

    form = CartAddBookForm(request.POST)
    if form.is_valid():
        cd = form.cleaned_data
        cart.add(book=book,
                 discount=discount,
                 quantity=cd['quantity'],
                 update_quantity=cd['update'])
        messages.success(request,
                         'Successfully add to cart!')
    else:
        messages.error(request, 'The book can\'t be add to cart!')
    return redirect('IB:book_list')


def cart_remove(request, book_id):
    cart = Cart(request)
    book = get_object_or_404(Book, id=book_id)
    cart.remove(book)
    return redirect('cart:cart_detail')


def cart_detail(request):
    cart = Cart(request)
    # 使用 for in 的時候，他會開始迭代，並且呼叫 `__iter__`
    for item in cart:
        item['update_quantity_form'] = CartAddBookForm(
            initial={
                'quantity': item['quantity'],
                'update': True
            })
    return render(request, 'cart_detail.html', {'cart': cart})
