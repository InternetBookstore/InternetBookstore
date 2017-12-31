from django.shortcuts import render, get_object_or_404
from datetime import datetime
from django.http import HttpResponse
from django.http import HttpResponseRedirect
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger
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
    books = Book.objects.filter(state=True, language='CH')
    query = request.GET.get("q")
    if query:
        books = Book.objects.filter(
            Q(bookname__icontains=query) |
            Q(author__icontains=query) |
            Q(publisher__icontains=query) |
            Q(isbn__icontains=query) |
            Q(category__name__icontains=query)).distinct()
    if category_slug:
        category = get_object_or_404(Category, slug=category_slug)
        books = books.filter(category=category)
    paginator = Paginator(books, 9)
    page = request.GET.get('page')
    contacts = paginator.get_page(page)
    return render(request,
                  'Books.html',
                  {'category': category,
                   'categories': categories,
                   'books': contacts})


def book_list_FR(request, category_slug=None):
    category = None
    categories = Category.objects.all()
    books = Book.objects.filter(state=True, language='FR')
    query = request.GET.get("q")
    if category_slug:
        category = get_object_or_404(Category, slug=category_slug)
        books = books.filter(category=category)
    paginator = Paginator(books, 9)
    page = request.GET.get('page')
    contacts = paginator.get_page(page)
    return render(request,
                  'FRBooks.html',
                  {'category': category,
                   'categories': categories,
                   'books': contacts})


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
