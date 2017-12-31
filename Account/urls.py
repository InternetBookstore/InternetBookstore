from django.conf.urls import url
from django.contrib.auth.views import login
from django.contrib.auth.views import logout
from django.contrib.auth.views import logout_then_login
from django.contrib.auth.views import password_change
from django.contrib.auth.views import password_change_done
from django.contrib.auth.views import password_reset
from django.contrib.auth.views import password_reset_complete
from django.contrib.auth.views import password_reset_confirm
from django.contrib.auth.views import password_reset_done

from . import views

app_name = 'Account'

urlpatterns = [

    # url(r'^$', views.home, name='home'),
    url(r'^account_manage/$', views.account_manage, name='account_manage'),
    url(r'^profile/$', views.update_profile, name='profile'),
    url(r'^comments/$', views.comments, name='comments'),
    url(r'^orders/$', views.orders, name='orders'),
    url(r'^ordersHistory/$', views.ordersHistory, name='ordersHistory'),
    url(r'^ordersdetail/(?P<order_id>\d+)/$',
        views.orderdetail, name='orderdetail'),
    url(r'^register/$', views.register, name='register'),

    # login logout
    url(r'^login/$', login, name='login'),
    url(r'^logout/$', logout, name='logout'),
    url(r'^logout-then-login/$', logout_then_login, name='logout_then_login'),

    # change password
    url(r'^password-change/$', password_change, name='password_change'),
    url(r'^password-change/done/$', password_change_done,
        name='password_change_done'),

    # reset password
    # restore password urls
    url(r'^password_reset/$',
        password_reset, {
            'post_reset_redirect': '/Account/password_reset/done/'
        },
        name='password_reset'),
    url(r'^password_reset/done/$',
        password_reset_done,
        name='password_reset_done'),
    url(r'^password_reset/confirm/(?P<uidb64>[-\w]+)/(?P<token>[-\w]+)/$',
        password_reset_confirm, {
            'post_reset_redirect': '/Account/reset/done/'
        },
        name='password_reset_confirm'),
    url(r'^reset/done/$',
        password_reset_complete,
        name='password_reset_complete'),
]
