from django.shortcuts import render, get_object_or_404
from datetime import datetime
from django.http import HttpResponse
from django.http import HttpResponseRedirect
from django.db.models import Q

from .models import *
from cart.forms import CartAddBookForm
from comment.models import Comment
# Create your views here.


def home(request):
    books = Book.objects.all().order_by('?')[:12]
    return render(request, 'home.html', {'books': books})


def book_list(request, category_slug=None):
    category = None
    categories = Category.objects.all()
    books = Book.objects.filter(state=True)
    query = request.GET.get("q")
    if query:
        books = books.filter(
            Q(bookname__icontains=query) |
            Q(author__icontains=query) |
            Q(publisher__icontains=query) |
            Q(isbn__icontains=query) |
            Q(category__name__icontains=query)).distinct()
    if category_slug:
        category = get_object_or_404(Category, slug=category_slug)
        books = books.filter(category=category)
    return render(request,
                  'ChineseBooks.html',
                  {'category': category,
                   'categories': categories,
                   'books': books})


def book_detail(request, book_id, slug):
    book = get_object_or_404(Book, id=book_id,
                             slug=slug, state=True)
    cart_book_form = CartAddBookForm()
    try:
        comments = Comment.objects.filter(book=book_id)
    except Comment.DoesNotExist:
        comments = None
    return render(request,
                  'bookdetail.html',
                  {'book': book,
                   'cart_book_form': cart_book_form,
                   'comments': comments
                   })

# def add_book(request):
#     if request.method == 'POST':
#         form = BookForm(request.POST)
#         if form.is_valid():
#             new_book = form.save()
#             return HttpResponseRedirect('/books/')
#     form = BookForm()
#     return render(request, 'add_book.html', {'form': form})
#
#
# def edit_book(request, book_id):
#     book = Book.objects.get(pk=book_id)
#     form = BookForm(request.POST, instance=book)
#     if form.is_valid():
#         form.save()
#         return HttpResponseRedirect('/books/')
#     return render(request, 'edit_book.html', {'form': form})
