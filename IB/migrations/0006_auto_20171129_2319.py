# -*- coding: utf-8 -*-
# Generated by Django 1.11.6 on 2017-11-29 15:19
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('IB', '0005_auto_20171129_1718'),
    ]

    operations = [
        migrations.AlterField(
            model_name='account',
            name='photo',
            field=models.URLField(null=True),
        ),
        migrations.AlterField(
            model_name='book',
            name='photo',
            field=models.URLField(null=True),
        ),
    ]