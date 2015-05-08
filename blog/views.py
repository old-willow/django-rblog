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
    paginate_by = 2
    context_object_name = 'object_list'  # This is allready by default.


class BlogDetailView(DetailView):
    pass
