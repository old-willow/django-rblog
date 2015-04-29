from django.db import models
from django.utils import timezone


class Category(models.Model):
    title = models.CharField('title',
                             max_length=100,
                             help_text='title of the category.')
    slug = models.SlugField('slug',
                            help_text='slug filed.')
    description = models.TextField('category description',
                                   blank=True, null=True, default=None,
                                   help_text='description of the category.')

    class Meta:
        verbose_name = 'category/topic'
        verbose_name_plural = 'categories/topics'

    def __unicode__(self):
        return self.title


class Entry(models.Model):
    title = models.CharField('title',
                             max_length=255,
                             unique_for_date='pub_date',
                             help_text='title of the blog entry.')
    slug = models.SlugField('slug',
                            help_text='slug field.')
    category = models.ForeignKey(Category,
                                 verbose_name='category',
                                 help_text='Choosing a category or topic.')
    publishable = models.BooleanField('is publishable?',
                                      default=False,
                                      help_text='is this blog entry publishable?')
    pub_date = models.DateTimeField('publication date',
                                    auto_now_add=True,
                                    help_text='date when the blog entry was created.')
    modified_date = models.DateTimeField('modified date',
                                         auto_now=True,
                                         help_text='date when the blog entry was modified last time.')
    entry = models.TextField('entry',
                             help_text='the blog entry itself.')

    class Meta:
        ordering = ['-pub_date']
        verbose_name = 'entry'
        verbose_name_plural = 'entries'

    def __unicode__(self):
        return self.title


class Link(models.Model):
    title = models.CharField('title', max_length=100)

    slug = models.SlugField('slug',
                            help_text='slug filed.')
    date_added = models.DateTimeField('date added',
                                      auto_now_add=True,
                                      help_text='date when the link is added to entry.')
    entry = models.ManyToManyField('associated entry',
                                  help_text='entry to which link is associated.')
    description = models.TextField('link description',
                                   blank=True, null=True, default=None,
                                   help_text='description of the link.')

    class Meta:
        ordering = ['-date_added']
        verbose_name = 'link'
        verbose_name_plural = 'links'

    def __unicode__(self):
        return self.title
