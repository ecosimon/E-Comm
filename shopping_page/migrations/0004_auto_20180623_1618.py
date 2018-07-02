# -*- coding: utf-8 -*-
# Generated by Django 1.11.10 on 2018-06-23 20:18
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('shopping_page', '0003_auto_20180623_1429'),
    ]

    operations = [
        migrations.CreateModel(
            name='Item',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=255)),
                ('quantity', models.PositiveSmallIntegerField(default=0)),
                ('unit_price', models.DecimalField(blank=True, decimal_places=2, max_digits=5)),
                ('size', models.CharField(max_length=255)),
            ],
        ),
        migrations.RemoveField(
            model_name='product',
            name='available',
        ),
        migrations.RemoveField(
            model_name='product',
            name='cart',
        ),
        migrations.AddField(
            model_name='cart',
            name='total_items',
            field=models.PositiveSmallIntegerField(default=0),
        ),
        migrations.AddField(
            model_name='cart',
            name='total_price',
            field=models.DecimalField(decimal_places=2, default=0, max_digits=5),
        ),
        migrations.AddField(
            model_name='item',
            name='cart',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='shopping_page.Cart'),
        ),
    ]