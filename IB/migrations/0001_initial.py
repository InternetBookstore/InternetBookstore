# -*- coding: utf-8 -*-
# Generated by Django 1.11.6 on 2017-12-16 10:21
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('Account', '__first__'),
    ]

    operations = [
        migrations.CreateModel(
            name='Book',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('isbn', models.CharField(max_length=30, unique=True)),
                ('bookname', models.CharField(db_index=True, max_length=50)),
                ('slug', models.SlugField()),
                ('author', models.CharField(max_length=30)),
                ('publisher', models.CharField(max_length=30)),
                ('publish_date', models.DateField()),
                ('description', models.TextField(null=True)),
                ('photo', models.URLField(null=True)),
                ('state', models.BooleanField(default=True)),
                ('price', models.IntegerField()),
                ('stock', models.IntegerField()),
                ('language', models.CharField(choices=[('FR', 'English'), ('CH', 'Chinese')], default='CH', max_length=10)),
            ],
            options={
                'ordering': ('bookname',),
            },
        ),
        migrations.CreateModel(
            name='Category',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(db_index=True, max_length=50)),
                ('slug', models.SlugField(unique=True)),
            ],
            options={
                'ordering': ('name',),
                'verbose_name': 'category',
                'verbose_name_plural': 'categories',
            },
        ),
        migrations.CreateModel(
            name='Comment',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('description', models.TextField()),
                ('date_time', models.DateTimeField()),
                ('account_id', models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='Account.Account')),
                ('book_id', models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='IB.Book')),
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
        migrations.AddField(
            model_name='book',
            name='category',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='books', to='IB.Category'),
        ),
        migrations.AlterIndexTogether(
            name='book',
            index_together=set([('id', 'slug')]),
        ),
    ]
