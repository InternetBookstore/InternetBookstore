from django.contrib import admin
from .models import Profile
# Register your models here.


class ProfileAdmin(admin.ModelAdmin):
    list_display = ('user', 'address', 'cellphone',
                    'birthday', 'credit_card', 'photo')


admin.site.register(Profile, ProfileAdmin)
