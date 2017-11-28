# -*- coding: utf-8 -*-
# Generated by Django 1.11.6 on 2017-11-27 07:23
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('IB', '0002_book'),
    ]

    operations = [
        migrations.CreateModel(
            name='Comment',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('description', models.TextField()),
                ('date_time', models.DateTimeField()),
            ],
        ),
        migrations.CreateModel(
            name='DiscountPolicy',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('event_description', models.TextField()),
                ('policy_type', models.CharField(max_length=50)),
                ('discount', models.FloatField()),
            ],
        ),
        migrations.CreateModel(
            name='Order',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('total_cost', models.IntegerField()),
                ('order_date', models.DateTimeField()),
                ('shipment_date', models.DateTimeField(null=True)),
                ('arrival_date', models.DateTimeField(null=True)),
            ],
        ),
        migrations.CreateModel(
            name='OrderList',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('book_quantity', models.IntegerField()),
            ],
        ),
        migrations.AlterField(
            model_name='account',
            name='photo',
            field=models.ImageField(null=True, upload_to='img'),
        ),
        migrations.AlterField(
            model_name='book',
            name='description',
            field=models.TextField(null=True),
        ),
        migrations.AlterField(
            model_name='book',
            name='photo',
            field=models.ImageField(null=True, upload_to='img'),
        ),
        migrations.AddField(
            model_name='orderlist',
            name='book_id',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='IB.Book'),
        ),
        migrations.AddField(
            model_name='orderlist',
            name='order_id',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='IB.Order'),
        ),
        migrations.AddField(
            model_name='orderlist',
            name='seller',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='IB.Account'),
        ),
        migrations.AddField(
            model_name='comment',
            name='account_id',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='IB.Account'),
        ),
        migrations.AddField(
            model_name='comment',
            name='book_id',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='IB.Book'),
        ),
    ]
