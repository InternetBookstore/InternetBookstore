# Generated by Django 2.0 on 2018-01-01 09:19

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Account', '0004_auto_20171228_0122'),
    ]

    operations = [
        migrations.AddField(
            model_name='profile',
            name='photo',
            field=models.URLField(blank=True, default='0', null=True),
        ),
    ]
