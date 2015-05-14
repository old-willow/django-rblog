from django.conf.urls import patterns, include, url

from .views import BlogIndex, BlogDetailView

urlpatterns = patterns(
    '',
    #url(r'^$', 'blog.views.blog_list',name='index'),
    url(r'^$', BlogIndex.as_view(), name='index'),
    url(r'^(?P<year>\d{4})/(?P<month>\w{3})/(?P<day>\d{2})/(?P<slug>[-\w]+)/$',
        BlogDetailView.as_view(), name='detail')
    #url(r'(?P<year>\d{4})/(?P<month>\w{3})/(?P<day>\d{2})/(?P<slug>[-\w]+)/$', 'blog.views.test_view', name='test'),
    #url(r'(?P<year>\d{4})/(?P<month>\w{3})/(?P<day>\d{2})/(?P<slug>[-\w]+)/$',
    #    'blog.views.blog_detail', name='detail')
)
