from django.conf.urls import url

from . import views

app_name = 'IB'

urlpatterns = [
    url(r'^$', views.home,
        name='home'),
    url(r'^booklist/$', views.book_list, name='book_list'),
    url(r'^booklist/(?P<category_slug>[-\w]+)/$', views.book_list,
        name='book_list_by_category'),
    url(r'^booklistFR/$', views.book_list_FR, name='book_list_FR'),
    url(r'^booklistFR/(?P<category_slug>[-\w]+)/$', views.book_list_FR,
        name='book_list_by_category_FR'),
    url(r'^book_list/(?P<book_id>\d+)/(?P<slug>[-\w]+)/$',
        views.book_detail, name='book_detail'),

]
