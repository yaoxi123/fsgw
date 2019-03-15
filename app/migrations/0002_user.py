# -*- coding: utf-8 -*-
# Generated by Django 1.11.4 on 2019-03-15 01:06
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('app', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='User',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('tel', models.CharField(max_length=20, unique=True)),
                ('name', models.CharField(max_length=100)),
                ('email', models.CharField(max_length=40, null=True)),
                ('password', models.CharField(max_length=256)),
            ],
            options={
                'db_table': 'user',
            },
        ),
    ]