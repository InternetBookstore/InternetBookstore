# Generated by Django 2.0 on 2017-12-28 13:43

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('IB', '0001_initial'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='comment',
            name='account_id',
        ),
        migrations.RemoveField(
            model_name='comment',
            name='book_id',
        ),
        migrations.DeleteModel(
            name='DiscountPolicy',
        ),
        migrations.AlterField(
            model_name='book',
            name='category',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.SET_NULL, related_name='books', to='IB.Category'),
        ),
        migrations.AlterField(
            model_name='book',
            name='language',
            field=models.CharField(choices=[('FR', 'Foreign'), ('CH', 'Chinese')], default='CH', max_length=10),
        ),
        migrations.DeleteModel(
            name='Comment',
        ),
    ]