from django.test import TestCase
from django.test import Client
from django.test import LiveServerTestCase

from django.core.urlresolvers import resolve
from django.utils import timezone

from blog.models import Entry, Category, Author, Link, Image
from blog.views import BlogIndex

class EntryTestCase(TestCase):
    def setUp(self):
        lorem = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur a justo ac odio feugiat consequat. Quisque vel velit in ligula malesuada euismod at eu ex. Ut eleifend turpis id nunc aliquam, vel tempor arcu feugiat. Aliquam erat volutpat. Praesent pharetra fermentum massa."
        self.author = Author.objects.create(
            gender=1,
            firstname='Robert',
            lastname='Kolozsi',
        )

        self.category = Category.objects.create(
            title='Category Test',
            slug='category-test',
            description='Some stupid category description.'
        )

        self.entry = Entry.objects.create(
            title='Test Title',
            author=self.author,
            slug='test-title',
            category=self.category,
            publishable=True,
            pub_date=timezone.now(),
            modified_date=timezone.now(),
            body=lorem,
            enable_comments=False,
            featured=False
        )

    def test_blog_index_page_test(self):
        """
        Test if the root url calls the apropriate view.
        """
        found = resolve('/blog/')  # returns appropriate view function?
        self.assertEqual(found.namespace, 'blog')
        self.assertEqual(found.url_name, 'index')
        self.assertEqual(found.view_name, 'blog:index')
        #self.assertEqual(found.func, 'blog.views.BlogIndex')

