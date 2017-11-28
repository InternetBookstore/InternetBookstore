from django.shortcuts import render
from datetime import datetime
from django.http import HttpResponse
from .models import *
# Create your views here.


def home(request):
    return render(request, 'home.html')


def book_list(request):
    books = Book.objects.all()
    return render(request, 'bookList.html', {'book_list': books})
