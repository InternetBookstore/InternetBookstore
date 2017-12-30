from django.conf.urls import url

from . import views

app_name = 'comment'

urlpatterns = [
    url(r'^(?P<book_id>\d+)/createComment/$', views.createComment,
        name='createComment'),
]
