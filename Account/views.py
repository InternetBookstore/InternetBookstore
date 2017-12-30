from django.shortcuts import render, redirect
from django.contrib.auth.decorators import login_required
from django.db import transaction
from django.contrib import messages
# Create your views here.

from .forms import *
from comment.models import Comment
from orders.models import *


@login_required
def account_manage(request):
    return render(request, 'Account/account_manage.html')


def register(request):
    if request.method == 'POST':
        user_form = UserRegistrationForm(request.POST)
        profile_form = ProfileRegistrationForm(request.POST)
        if user_form.is_valid() and profile_form.is_valid():
            # Create a new user ogject but avoid saving it yet
            new_user = user_form.save(commit=False)
            # Set the chosen password
            new_user.set_password(user_form.cleaned_data['password'])
            # Save the user obj
            new_user.save()
            new_profile = profile_form.save(commit=False)
            new_profile.user = new_user
            new_profile.save()
            return render(request,
                          'Account/register_done.html',
                          {'new_user': new_user,
                           'new_profile': new_profile})
    else:
        user_form = UserRegistrationForm()
        profile_form = ProfileRegistrationForm()
    return render(request,
                  'Account/register.html',
                  {'user_form': user_form,
                   'profile_form': profile_form})


@login_required
@transaction.atomic
def update_profile(request):
    if request.method == 'POST':
        user_form = UserEditForm(request.POST, instance=request.user)
        profile_form = ProfileEditForm(
            request.POST, instance=request.user.profile)
        if user_form.is_valid() and profile_form.is_valid():
            user_form.save()
            profile_form.save()
            messages.success(request,
                             'Your profile was successfully updated!')
            return redirect('Account:profile')
        else:
            messages.error(request, 'Please correct the error below.')
    else:
        user_form = UserEditForm(instance=request.user)
        profile_form = ProfileEditForm(instance=request.user.profile)
    return render(request, 'Account/profile.html', {
        'user_form': user_form,
        'profile_form': profile_form
    })


@login_required
def orders(request):
    try:
        orders = Order.objects.filter(account_id=request.user.id)
    except Order.DoesNotExist:
        orders = None
    return render(request, 'Account/ordersView.html', {'orders': orders})


@login_required
def comments(request):
    try:
        comments = Comment.objects.filter(user=request.user.id)
    except Comment.DoesNotExist:
        comments = None
    return render(request, 'Account/commentView.html', {'comments': comments})
