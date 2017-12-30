from django.shortcuts import render, redirect
from django.contrib.auth.decorators import login_required
from django import forms

from .models import Comment
from .forms import CommentCreateForm
from IB.models import Book
# Create your views here.


@login_required
def createComment(request, book_id):
    book = Book.objects.get(id=book_id)
    if request.method == 'POST':
        form = CommentCreateForm(request.POST)
        if form.is_valid():
            comment = form.save(commit=False)
            comment.user = request.user
            comment.book = book
            comment.save()
    else:
        form = CommentCreateForm()
    return render(request,
                  'createComment.html',
                  {'form': form,
                   'book': book})
