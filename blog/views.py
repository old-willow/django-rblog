from django.shortcuts import render, render_to_response
from django.template import RequestContext


def blog_list(request):
    context = {}
    return render_to_response('blog/blog_list.html',
                               context,
                               context_instance=RequestContext(request))
