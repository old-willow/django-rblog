from django.contrib import admin
from django_markdown.admin import MarkdownModelAdmin

from .models import Entry


class EntryAdmin(MarkdownModelAdmin):
    prepopulated_fields = { 'slug': ('title', )}


admin.site.register(Entry, EntryAdmin)
