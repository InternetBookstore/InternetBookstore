# Generated by Django 2.0 on 2017-12-27 20:29

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('orders', '0004_auto_20171228_0358'),
    ]

    operations = [
        migrations.AddField(
            model_name='order',
            name='first_name',
            field=models.CharField(default='Tsai', max_length=50),
        ),
        migrations.AddField(
            model_name='order',
            name='last_name',
            field=models.CharField(default='Tsai', max_length=50),
        ),
    ]
