from django.shortcuts import render, render_to_response
from django.template import RequestContext

from django.views.generic import ListView, DetailView

from .models import Entry


def blog_list(request):
    context = {}
    return render_to_response('blog/blog_list.html',
                               context,
                               context_instance=RequestContext(request))


class BlogIndex(ListView):
    model = Entry
    queryset = Entry.published.publishable()
    template_name = 'blog/blog_list.html'
    #paginate_by = 3
    context_object_name = 'object_list'  # This is allready by default.


class BlogYearList(ListView):
    model = Entry
    #queryset = Entry.objects.filter(year=self.kwargs['year'], publishable=True)
    #queryset = Entry.objects.all()
    template_name = 'blog/blog_year_list.html'
    context_object_name = 'object_list'

    def get_queryset(self):
        query = Entry.objects.filter(publishable=True, pub_date__year=self.kwargs['year'])
        return query

    def get_context_data(self, **kwargs):
        context = super(BlogYearList, self).get_context_data(**kwargs)
        context['year'] = self.kwargs['year']
        context['header'] = u'List of blogs in ' + unicode(context['year'])
        return context


class BlogYearMonthList(ListView):
    model = Entry
    #queryset = Entry.objects.filter(year=self.kwargs['year'], month=self.kwargs['month'], publishable=True)
    #queryset = Entry.objects.all()
    template_name = 'blog/blog_year_list.html'
    context_object_name = 'object_list'

    def get_queryset(self):
        print(type(self.kwargs['year']))
        print('>>>>>>' + self.kwargs['year'])
        print('>>>>>>' + self.kwargs['month'])
        #month = Entry.objects.filter(pub_date__month=self.kwargs['month'])

        query = Entry.objects.filter(publishable=True,
                                     pub_date__year=self.kwargs['year'])
                                     #pub_date__month=month.strftime('%b'))
                                     #pub_date__month=self.kwargs['month'])
        return query

    def get_context_data(self, **kwargs):
        context = super(BlogYearMonthList, self).get_context_data(**kwargs)
        context['year'] = self.kwargs['year']
        context['month'] = self.kwargs['month']
        context['header'] = u'List of blogs in ' + unicode(context['year'] + ', ' + unicode(self.kwargs['month']))
        return context

class BlogDetailView(DetailView):
    model = Entry
    template_name = 'blog/blog_detail.html'
    #date_field = 'pub_date'
    slug_field = 'slug'
    context_object_name = 'entry'
    queryset = Entry.objects.all()

    #def get_queryset(self):
    #    self.year = self.kwargs['year']
    #    self.month = self.kwargs['month']
    #    self.day = self.kwargs['day']
    #    self.slug = self.kwargs['slug']
    #    return Entry.objects.get(year=self.year,
    #                             month=self.month,
    #                             day=self.day,
    #                             slug=self.slug)


def blog_list_years(request):
    ly = []
    years = Entry.objects.all()
    for e in years:
        ly.append(e.pub_date.year)

    sorted(ly)
    ly = set(ly)
    context = {'years': ly}

    return render_to_response(
        'blog/years_list.html',
        context,
        context_instance=RequestContext(request))
