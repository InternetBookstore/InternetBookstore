from django.shortcuts import render
from datetime import datetime
from django.http import HttpResponse
from django.http import HttpResponseRedirect
from .models import *
from .form import *
# Create your views here.


def home(request):
    return render(request, 'home.html')


def book_list(request):
    books = Book.objects.all()
    return render(request, 'bookList.html', {'book_list': books})


def add_book(request):
    if request.method == 'POST':
        form = BookForm(request.POST)
        if form.is_valid():
            new_book = form.save()
            return HttpResponseRedirect('/books/')
    form = BookForm()
    return render(request, 'add_book.html', {'form': form})


def edit_book(request, book_id):
    book = Book.objects.get(pk=book_id)
    form = BookForm(request.POST, instance=book)
    if form.is_valid():
        form.save()
        return HttpResponseRedirect('/books/')
    return render(request, 'edit_book.html', {'form': form})
