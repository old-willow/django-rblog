from django.shortcuts import render, render_to_response
from django.template import RequestContext

from django.views.generic import ListView, DetailView

from taggit.models import Tag

from .models import Entry


def blog_list(request):
    context = {}
    return render_to_response('blog/blog_list.html',
                               context,
                               context_instance=RequestContext(request))


class BlogIndex(ListView):
    model = Entry
    queryset = Entry.published.publishable()[:3]
    template_name = 'blog/blog_list.html'
    #paginate_by = 3
    context_object_name = 'object_list'  # This is allready by default.

    def get_context_data(self, **kwargs):
        context = super(BlogIndex, self).get_context_data(**kwargs)
        tags = Tag.objects.all()
        context['tags'] = tags

        return context


class AllArticles(ListView):
    model = Entry
    template_name = 'blog/all_articles_list.html'
    #queryset = Entry.published.publishable()
    context_object_name = 'object_list'

    def get_queryset(self):
        query = Entry.published.publishable()
        return query

    def get_context_data(self, **kwargs):
        context = super(AllArticles, self).get_context_data(**kwargs)
        context['header'] = 'List all articles unsorted!'

        return context


class EntriesByTag(ListView):
    model = Entry
    #queryset =
    template_name = 'blog/by_tags_list.html'
    context_object_name = 'object_list'

    def get_queryset(self):
        query = Entry.objects.filter(publishable=True,
                                     tag__name__in=[self.kwargs['tag']])
        return query

    def get_context_data(self, **kwargs):
        context = super(EntriesByTag, self).get_context_data(**kwargs)
        context['header'] = 'List of articles filtered by tags'

        return context


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

        # Collect the months for presenting it in template as links.
        lm = []  # list months for link 3 chars.
        months_full = []  ## months full name of months for displaying as link.
        months = Entry.objects.filter(pub_date__year=self.kwargs['year'])

        # Collecting months.
        for m in months:
            lm.append(m.pub_date.strftime("%b"))
            months_full.append(m.pub_date.strftime("%B"))
        #sorted(lm)
        lm = set(lm)
        months_full = set(months_full)

        context['months'] = lm
        context['months_full'] = months_full

        return context


class BlogYearMonthList(ListView):
    model = Entry
    #queryset = Entry.objects.filter(year=self.kwargs['year'], month=self.kwargs['month'], publishable=True)
    #queryset = Entry.objects.all()
    template_name = 'blog/blog_year_list.html'
    context_object_name = 'object_list'

    def get_queryset(self):
        #print(type(self.kwargs['year']))
        #print('>>>>>>' + self.kwargs['year'])
        #print('>>>>>>' + self.kwargs['month'])
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
    ly = []  # list years
    years = Entry.objects.all()

    # Collecting years.
    for y in years:
        ly.append(y.pub_date.year)
    sorted(ly)
    ly = set(ly)

    context = { 'years': ly }

    return render_to_response('blog/years_list_links.html',
                              context,
                              context_instance=RequestContext(request))

def blog_list_months(request, year):
    #lm = []  # list months
    mn = {}
    months = Entry.objects.filter(pub_date__year=year)

    # Collecting months.
    for m in months:
        if not mn.has_key(m.pub_date.strftime("%b")):
            mn[m.pub_date.strftime("%b")] = (m.pub_date.strftime("%b"), m.pub_date.strftime("%B"))
        #lm.append(m.pub_date.strftime("%B"))
    #sorted(lm)
    #lm = set(lm)

    #context = { 'months': lm, 'year': year }
    print ">>>>>>>>>>>", mn
    context = { 'months': mn , 'year': year }

    return render_to_response('blog/months_list_links.html',
                              context,
                              context_instance=RequestContext(request))
