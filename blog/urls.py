from django.conf.urls import patterns, include, url

from .views import BlogIndex, BlogYearList, BlogYearMonthList, BlogDetailView

urlpatterns = patterns(
    '',
    url(r'^$',
        BlogIndex.as_view(),
        name='index'),

    url(r'^(?P<year>\d{4})/$',
        BlogYearList.as_view(),
        name='year_index'),

    url(r'^(?P<year>\d{4})/(?P<month>\w{3})/$',
        BlogYearMonthList.as_view(),
        name='year_month_index'),

    url(r'^(?P<year>\d{4})/(?P<month>\w{3})/(?P<day>\d{2})/(?P<slug>[-\w]+)/$',
        BlogDetailView.as_view(), name='detail'),
)
