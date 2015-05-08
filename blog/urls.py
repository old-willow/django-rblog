from django.conf.urls import patterns, include, url

from .views import BlogIndex, BlogDetailView

urlpatterns = patterns(
    '',
    #url(r'^$', 'blog.views.blog_list',name='index'),
    url(r'^$', BlogIndex.as_view(), name='index'),
    url(r'^(?P<slug>[-\w]+/$)', BlogDetailView.as_view(), name='detail')
)
