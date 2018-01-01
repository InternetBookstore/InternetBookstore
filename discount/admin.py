from django.contrib import admin

from .models import Discount
# Register your models here.


class DiscountAdmin(admin.ModelAdmin):
    list_display = ('name', 'event_description', 'discount',
                    'Start_date', 'End_date', 'category', 'eventType')


admin.site.register(Discount, DiscountAdmin)
