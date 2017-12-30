from django.core.mail import send_mail
from django.contrib.auth.decorators import login_required
from .models import Order


@login_required
def order_created(request, order_id):
    """
    Task to send an e-mail notification when an order is
    successfully created.
    """
    order = Order.objects.get(id=order_id)
    subject = 'Order number {}'.format(order.id)
    message = 'Dear ' + request.user.first_name + ',\n\nYou have successfully placed an order.\
                Your order id is {}.'.format(order.id)
    mail_sent = send_mail(subject,
                          message,
                          'InternetBookstore@myshop.com',
                          [request.user.email])
    return mail_sent
