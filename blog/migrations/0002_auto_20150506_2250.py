# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
import django_markdown.models


class Migration(migrations.Migration):

    dependencies = [
        ('blog', '0001_initial'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='author',
            options={'ordering': ['firstname'], 'verbose_name': 'author', 'verbose_name_plural': 'authors'},
        ),
        migrations.RenameField(
            model_name='author',
            old_name='username',
            new_name='firstname',
        ),
        migrations.RemoveField(
            model_name='author',
            name='user',
        ),
        migrations.AddField(
            model_name='author',
            name='gender',
            field=models.CharField(default=0, max_length=1, verbose_name=b'gender', choices=[(0, b'Choose Gender'), (1, b'Male'), (2, b'Female')]),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='author',
            name='lastname',
            field=models.CharField(default='', max_length=100, verbose_name=b'last name'),
            preserve_default=False,
        ),
        migrations.AlterField(
            model_name='entry',
            name='body',
            field=django_markdown.models.MarkdownField(help_text=b'the blog entry itself.', verbose_name=b'entry'),
        ),
    ]
