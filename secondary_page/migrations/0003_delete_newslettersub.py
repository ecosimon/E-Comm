# -*- coding: utf-8 -*-
# Generated by Django 1.11.10 on 2018-04-30 17:10
from __future__ import unicode_literals

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('secondary_page', '0002_auto_20180429_1523'),
    ]

    operations = [
        migrations.DeleteModel(
            name='NewsletterSub',
        ),
    ]
