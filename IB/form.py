from django.forms import ModelForm
from .models import *


class BookForm(ModelForm):
    class Meta:
        model = Book
        fields = ['isbn', 'bookname', 'author', 'publisher', 'publish_date',
                  'description', 'photo', 'state', 'price', 'stock', 'language', 'category']
