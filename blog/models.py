from django.db import models
from django.utils import timezone


class Category(models.Model):
    pass


class Entry(models.Model):
    title = models.CharField('title',
                             max_length=255,
                             unique_for_date='pub_date',
                             help_text='')
    slug = models.SlugField('slug',
                            help_text='')
    category = models.ForeignKey(Category,
                                 verbose_name='category',
                                 help_text='')
    publishable = models.BooleanField('is publishable?',
                                      default=False, help_text='')
    pub_date = models.DateTimeField('publication date',
                                    auto_now_add=True, help_text='')
    modified_date = models.DateTimeField('modified date',
                                         auto_now=True, help_text='')
    entry = models.TextField('entry',
                             help_text='')

    class Meta:
        ordering = ['-pub_date']
        verbose_name = 'entry'
        verbose_name_plural = 'entries'

    def __unicode__(self):
        return self.title
