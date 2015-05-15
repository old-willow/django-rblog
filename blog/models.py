from django.db import models
from django.utils import timezone
from django.contrib.auth.models import User
from django.core.urlresolvers import reverse

from django_markdown.models import MarkdownField


class Author(models.Model):
    #user = models.ForeignKey(User)
    #username = models.CharField('user name', max_length=100)

    NULL = '0'
    M = '1'
    F = '2'
    GENDER = (
        (NULL, 'Choose Gender'),
        (M, 'Male'),
        (F, 'Female'),
    )

    gender = models.CharField('gender', max_length=1,
                              choices=GENDER, default=NULL)
    firstname = models.CharField('first name', max_length=100)
    lastname = models.CharField('last name', max_length=100)

    class Meta:
        verbose_name = 'author'
        verbose_name_plural = 'authors'
        ordering = ['firstname', ]

    def __unicode__(self):
        return self.firstname


class Category(models.Model):
    title = models.CharField('title',
                             max_length=100,
                             help_text='Title of the category.')
    slug = models.SlugField('slug',
                            help_text='slug filed.')
    description = models.TextField('category description',
                                   blank=True, null=True, default=None,
                                   help_text='Description of the category.')

    class Meta:
        verbose_name = 'category/topic'
        verbose_name_plural = 'categories/topics'

    def __unicode__(self):
        return self.title


class EntryPublishableQuerySet(models.QuerySet):
    """
    Returning blogs that are publishable.
    &
    Returning blogs that are not yet publishable.
    """
    def publishable(self):
        return self.filter(publishable=True, status=1)

    def not_publishable(self):
        return self.filter(publishable=False)

    def year_list(self, year):
        return self.filter(publishable=True, year=year)


class Entry(models.Model):
    title = models.CharField('title',
                             max_length=255,
                             unique_for_date='pub_date',
                             help_text='Title of the blog entry.')
    author = models.ForeignKey(Author, verbose_name='author of the blog')
    slug = models.SlugField('slug',
                            help_text='Slug field.')
    category = models.ForeignKey(Category,
                                 verbose_name='category',
                                 help_text='Choosing a category or topic.')
    publishable = models.BooleanField('is publishable?',
                                      default=False,
                                      help_text='Is this blog entry publishable?')
    pub_date = models.DateTimeField('publication date',
                                    auto_now_add=True,
                                    help_text='Date when the blog entry was created.')
    modified_date = models.DateTimeField('modified date',
                                         auto_now=True,
                                         help_text='Date when the blog entry was modified last time.')
    body = MarkdownField('entry',
                         help_text='The blog entry itself.')
    enable_comments = models.BooleanField('enable comments', default=False)
    featured = models.BooleanField('featured', default=False)

    LIVE_STATUS = 1
    DRAFT_STATUS = 2
    HIDDEN_STATUS = 3
    STATUS_CHOICES = (
        (LIVE_STATUS, 'Live'),
        (DRAFT_STATUS, 'Draft'),
        (HIDDEN_STATUS, 'Hidden'),
    )
    status = models.IntegerField('blog status', choices=STATUS_CHOICES,
                                 default=DRAFT_STATUS)

    objects = models.Manager()
    published = EntryPublishableQuerySet().as_manager()

    class Meta:
        ordering = ['-pub_date', ]
        verbose_name = 'entry'
        verbose_name_plural = 'entries'

    def __unicode__(self):
        return self.title

    def grab_body_part(self):
        return self.body[0:250]

    def get_absolute_url(self):
        return reverse('blog:detail', kwargs={
            'year': self.pub_date.strftime("%Y"),
            'month': self.pub_date.strftime("%b").lower(),
            'day': self.pub_date.strftime("%d"),
            'slug': self.slug}
        )


class Image(models.Model):
    name = models.ImageField(upload_to='blog_images/%Y/%b/%d',
                             blank=True, null=True,
                             help_text='Upload an image file.')

    entry = models.ForeignKey(Entry,
                              help_text='Related blog to this image.')

    upload_date = models.DateTimeField('upload date',
                                       auto_now_add=True,
                                       help_text='Date when the link is added to entry.')

    class Meta:
        verbose_name = 'image'
        verbose_name_plural = 'images'
        ordering = ['-upload_date', ]

    def __unicode__(self):
        return self.name


class Link(models.Model):
    title = models.CharField('title', max_length=100)

    slug = models.SlugField('slug',
                            help_text='slug filed.')
    date_added = models.DateTimeField('date added',
                                      auto_now_add=True,
                                      help_text='Date when the link is added to entry.')
    entry = models.ManyToManyField(Entry, verbose_name='associated entry',
                                  help_text='Entry to which link is associated.')
    description = models.TextField('link description',
                                   blank=True, null=True, default=None,
                                   help_text='Description of the link.')

    class Meta:
        ordering = ['-date_added', ]
        verbose_name = 'link'
        verbose_name_plural = 'links'

    def __unicode__(self):
        return self.title
