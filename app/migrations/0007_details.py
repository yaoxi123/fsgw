# -*- coding: utf-8 -*-
# Generated by Django 1.11.4 on 2019-03-18 02:15
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('app', '0006_ordergoods'),
    ]

    operations = [
        migrations.CreateModel(
            name='details',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('deimg1', models.CharField(max_length=256)),
                ('deimg2', models.CharField(max_length=256)),
                ('deimg3', models.CharField(max_length=256)),
                ('deimg4', models.CharField(max_length=256)),
                ('deimg5', models.CharField(max_length=256)),
                ('deimg6', models.CharField(max_length=256)),
                ('deimg7', models.CharField(max_length=256)),
                ('productid', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='app.Goods')),
            ],
            options={
                'db_table': 'deimg',
            },
        ),
    ]
