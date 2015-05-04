# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
from django.conf import settings


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
    ]

    operations = [
        migrations.CreateModel(
            name='Author',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('username', models.CharField(max_length=100, verbose_name=b'first name')),
                ('user', models.ForeignKey(to=settings.AUTH_USER_MODEL)),
            ],
            options={
                'ordering': ['username'],
                'verbose_name': 'user name',
                'verbose_name_plural': 'user names',
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='Category',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('title', models.CharField(help_text=b'title of the category.', max_length=100, verbose_name=b'title')),
                ('slug', models.SlugField(help_text=b'slug filed.', verbose_name=b'slug')),
                ('description', models.TextField(default=None, help_text=b'description of the category.', null=True, verbose_name=b'category description', blank=True)),
            ],
            options={
                'verbose_name': 'category/topic',
                'verbose_name_plural': 'categories/topics',
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='Entry',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('title', models.CharField(help_text=b'title of the blog entry.', max_length=255, verbose_name=b'title', unique_for_date=b'pub_date')),
                ('slug', models.SlugField(help_text=b'slug field.', verbose_name=b'slug')),
                ('publishable', models.BooleanField(default=False, help_text=b'is this blog entry publishable?', verbose_name=b'is publishable?')),
                ('pub_date', models.DateTimeField(help_text=b'date when the blog entry was created.', verbose_name=b'publication date', auto_now_add=True)),
                ('modified_date', models.DateTimeField(help_text=b'date when the blog entry was modified last time.', verbose_name=b'modified date', auto_now=True)),
                ('body', models.TextField(help_text=b'the blog entry itself.', verbose_name=b'entry')),
                ('enable_comments', models.BooleanField(default=False, verbose_name=b'enable comments')),
                ('featured', models.BooleanField(default=False, verbose_name=b'featured')),
                ('status', models.IntegerField(default=2, verbose_name=b'blog status', choices=[(1, b'Live'), (2, b'Draft'), (3, b'Hidden')])),
                ('author', models.ForeignKey(verbose_name=b'author of the blog', to='blog.Author')),
                ('category', models.ManyToManyField(help_text=b'Choosing a category or topic.', to='blog.Category', verbose_name=b'category')),
            ],
            options={
                'ordering': ['-pub_date'],
                'verbose_name': 'entry',
                'verbose_name_plural': 'entries',
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='Link',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('title', models.CharField(max_length=100, verbose_name=b'title')),
                ('slug', models.SlugField(help_text=b'slug filed.', verbose_name=b'slug')),
                ('date_added', models.DateTimeField(help_text=b'date when the link is added to entry.', verbose_name=b'date added', auto_now_add=True)),
                ('description', models.TextField(default=None, help_text=b'description of the link.', null=True, verbose_name=b'link description', blank=True)),
                ('entry', models.ManyToManyField(help_text=b'entry to which link is associated.', to='blog.Entry', verbose_name=b'associated entry')),
            ],
            options={
                'ordering': ['-date_added'],
                'verbose_name': 'link',
                'verbose_name_plural': 'links',
            },
            bases=(models.Model,),
        ),
    ]
