# Generated by Django 2.0 on 2017-12-28 13:43

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('orders', '0006_auto_20171228_0429'),
    ]

    operations = [
        migrations.AlterField(
            model_name='order',
            name='arrival_date',
            field=models.DateTimeField(blank=True, null=True),
        ),
        migrations.AlterField(
            model_name='order',
            name='shipment_date',
            field=models.DateTimeField(blank=True, null=True),
        ),
    ]
