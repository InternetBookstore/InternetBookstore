from django.db import models
from django.core.urlresolvers import reverse

from django.contrib.auth.models import User
# Create your models here.


class Category(models.Model):
    name = models.CharField(max_length=50,
                            db_index=True)
    slug = models.SlugField(max_length=50,
                            db_index=True,
                            unique=True)

    class Meta:
        ordering = ('name',)
        verbose_name = 'category'
        verbose_name_plural = 'categories'

    def __str__(self):
        return self.name

    def get_absolute_url(self):
        return reverse('IB:book_list_by_category',
                       args=[self.slug])


class Book(models.Model):
    isbn = models.CharField(max_length=30, unique=True)
    bookname = models.CharField(max_length=50, db_index=True)
    slug = models.SlugField(max_length=50, db_index=True)
    author = models.CharField(max_length=30)
    publisher = models.CharField(max_length=30)
    publish_date = models.DateField()
    description = models.TextField(null=True)
    photo = models.URLField(null=True)
    state = models.BooleanField(default=True)
    price = models.IntegerField()
    stock = models.IntegerField()
    Foreign = 'FR'
    Chinese = 'CH'
    LANGUAGE_CHOICES = (
        (Foreign, 'English'),
        (Chinese, 'Chinese'),
    )
    language = models.CharField(max_length=10,
                                choices=LANGUAGE_CHOICES,
                                default=Chinese)
    category = models.ForeignKey(Category,
                                 related_name='books')

    class Meta:
        ordering = ('bookname',)
        index_together = [['id', 'slug']]

    def __str__(self):
        return self.bookname

    def get_absolute_url(self):
        return reverse('IB:book_detail',
                       args=[self.id, self.slug])


class DiscountPolicy(models.Model):
    event_description = models.TextField()
    policy_type = models.CharField(max_length=50)
    discount = models.FloatField()


class Comment(models.Model):
    book_id = models.ForeignKey(Book, null=True)
    account_id = models.ForeignKey(User, null=True)
    description = models.TextField()
    date_time = models.DateTimeField()
