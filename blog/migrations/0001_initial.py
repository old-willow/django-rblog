# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Category',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='Entry',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('title', models.CharField(help_text=b'', max_length=255, verbose_name=b'title', unique_for_date=b'pub_date')),
                ('slug', models.SlugField(help_text=b'', verbose_name=b'slug')),
                ('publishable', models.BooleanField(default=False, help_text=b'', verbose_name=b'is publishable?')),
                ('pub_date', models.DateTimeField(help_text=b'', verbose_name=b'publication date', auto_now_add=True)),
                ('modified_date', models.DateTimeField(help_text=b'', verbose_name=b'modified date', auto_now=True)),
                ('entry', models.TextField(help_text=b'', verbose_name=b'entry')),
                ('category', models.ForeignKey(verbose_name=b'category', to='blog.Category', help_text=b'')),
            ],
            options={
                'ordering': ['-pub_date'],
                'verbose_name': 'entry',
                'verbose_name_plural': 'entries',
            },
            bases=(models.Model,),
        ),
    ]
