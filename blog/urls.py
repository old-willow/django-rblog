from django.conf.urls import patterns, include, url

urlpatterns = patterns('',
    url(r'^$', 'blog.views.blog_list',name='index'),
    url(r'^markdown/', include('django_markdown.urls')),
)
