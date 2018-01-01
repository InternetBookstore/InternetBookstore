from django.contrib import admin
from .models import *
# Register your models here.


class CategoryAdmin(admin.ModelAdmin):
    list_display = ('name', 'slug')


class BookAdmin(admin.ModelAdmin):
    list_display = ('bookname', 'isbn', 'slug', 'author', 'publisher', 'publish_date',
                    'state', 'price', 'stock', 'language', 'category')


admin.site.register(Book, BookAdmin)
admin.site.register(Category, CategoryAdmin)
