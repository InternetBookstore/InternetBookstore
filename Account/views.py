from django.shortcuts import render
from django.contrib.auth.decorators import login_required
# Create your views here.

from .forms import UserRegistrationForm


# @login_required
# def home(request):
#     return render(request,'IB:home')

def register(request):
    if request.method == 'POST':
        user_form = UserRegistrationForm(request.POST)
        if user_form.is_valid():
            #Create a new user ogject but avoid saving it yet
            new_user = user_form.save(commit=False)
            #Set the chosen password
            new_user.set_password(user_form.cleaned_data['password'])
            #Save the user obj
            new_user.save()
            return render(request,
                          'Account/register_done.html',
                          {'new_user': new_user})
    else:
        user_form = UserRegistrationForm()
    return render(request,
                  'Account/register.html',
                  {'user_form': user_form})

def update_profile(request, user_id):
    user = User.objects.get(pk=user_id)
    user.profile.bio = 'Lorem ipsum dolor sit amet, consectetur adipisicing elit...'
    user.save()
