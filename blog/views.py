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
    queryset = Entry.published.publishable()
    template_name = 'blog/blog_list.html'
    paginate_by = 3
    context_object_name = 'object_list'  # This is allready by default.


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

    #def get_queryset(self):
    #    return Entry.objects.all()

def blog_detail(request, year, month, day, slug):
    query = Entry.objects.get(year=year, month=month, day=day, slug=slug)
    context = {
        'query': query,
    }

    return render_to_response('blog/blog_detail.html',
                              context,
                              context_instance=RequestContext(request))

def test_view(request, year, month, day, slug):
    return render_to_response('blog/blog_detail.html',
                              {},
                              context_instance=RequestContext(request))
