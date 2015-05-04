from django.conf.urls import patterns, include, url

from .views import BlogIndex

urlpatterns = patterns('',
    #url(r'^$', 'blog.views.blog_list',name='index'),
    url(r'^$', BlogIndex.as_view(), name='index'),
    url(r'^markdown/', include('django_markdown.urls')),
)
