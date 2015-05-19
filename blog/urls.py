from django.conf.urls import patterns, include, url

from .views import (BlogIndex, BlogYearList,
                    BlogYearMonthList, BlogDetailView,
                    blog_list_years, blog_list_months)

urlpatterns = patterns(
    '',
    url(r'^$',
        BlogIndex.as_view(),
        name='index'),

    url(r'^(?P<year>\d{4})/$',
        BlogYearList.as_view(),
        name='year_list'),

    url(r'^years_links/$', blog_list_years, name='years_list_links'),
    url(r'^months_links/(?P<year>\d{4})/$', blog_list_months, name='months_list_links'),

    url(r'^(?P<year>\d{4})/(?P<month>\w{3})/$',
        BlogYearMonthList.as_view(),
        name='year_month_list'),

    url(r'^(?P<year>\d{4})/(?P<month>\w{3})/(?P<day>\d{2})/(?P<slug>[-\w]+)/$',
        BlogDetailView.as_view(), name='detail'),
)
